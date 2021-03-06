const { pool } = require("../services/dev.env");

// Read Characters
const listCharacter = async (req, res) => {
  var page = req.query.page;
  var init = 0;
  if (page) {
    init = parseInt(page) * 20 - 20;
  }
  const response = await pool.query(
    // `SELECT * FROM character INNER JOIN (SELECT dimension FROM location GROUP BY id) AS valor ON id = location_id OFFSET ${init} ROWS FETCH FIRST 20 ROW ONLY`
    `SELECT character.*,
    json_build_object('name', location.name) AS location 
    FROM character 
    INNER JOIN location ON location.id = location_id 
    ORDER BY character.id ASC 
    OFFSET ${init} ROWS FETCH FIRST 20 ROW ONLY
    `
  );
  const info = await pool.query("SELECT COUNT(*) fROM character");
  var count = parseInt(info.rows[0].count);
  info.rows.push(count / 20 >= 1 ? Math.ceil(count / 20) : 1);
  res.status(200).json({
    info: { count: count, pages: info.rows[1] },
    results: response.rows,
    code: "character/list_ok",
  });
};

module.exports = {
  listCharacter,
};
