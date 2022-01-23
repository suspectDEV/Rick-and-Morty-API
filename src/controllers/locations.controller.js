const { pool } = require("../env/dev.env");

// Read Characters
const listLocation = async (req, res) => {
  var page = req.query.page;
  var init = 0;
  if (page) {
    init = (parseInt(page) * 20) - 20;
  }
  const response = await pool.query(
    `SELECT * FROM location OFFSET ${init} ROWS FETCH FIRST 20 ROW ONLY`
  );
  const info = await pool.query("SELECT COUNT(*) fROM location");
  var count = parseInt(info.rows[0].count);
  info.rows.push(count / 20 >= 1 ? Math.ceil(count / 20) : 1);
  res.status(200).json({
    info: { count: count, pages: info.rows[1] },
    results: response.rows,
    code: "location/list_ok",
  });
};

module.exports = {
  listLocation,
};
