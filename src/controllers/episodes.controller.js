const { pool } = require("../env/dev.env");

// CRUD

// MODEL
/**
 * name
 * air_data
 * episode
 * url
 * created
 */

// Create an episode
const createEpisode = async (req, res) => {
  const { name, episode } = req.body;
  if (name && episode) {
    const response = await pool.query(
      "INSERT INTO episodes (name, air_data, episode, url, created) VALUES ($1, NULL, $2, NULL, NULL)",
      [name, episode]
    );
    //TODO: Imprimir errores de la consulta
    res.status(201).json({
      message: "Episodio creado correctamente.",
      code: "episodes/created_ok",
    });
  } else {
    res.status(403).json({
      message:
        "Uno o más campos son incorrectos. \nPor favor revíselos e intente nuevamente.",
      code: "episodes/dataE_incorrect",
    });
  }
};
// Read Episodes
const listEpisodes = async (req, res) => {
  var page = req.query.page;
  var init = 0;
  if (page) {
    init = parseInt(page) * 20 - 20;
  }
  const response = await pool.query(
    `SELECT * FROM episode OFFSET ${init} ROWS FETCH FIRST 20 ROW ONLY`
  );
  const info = await pool.query("SELECT COUNT(*) fROM episode");
  var count = parseInt(info.rows[0].count);
  info.rows.push(count / 20 >= 1 ? Math.ceil(count / 20) : 1);
  res.status(200).json({
    info: { count: count, pages: info.rows[1] },
    results: response.rows,
    code: "episode/list_ok",
  });
};
// Read an episode
const episodeInfo = async (req, res) => {
  const id = req.params.id;
  const response = await pool.query("SELECT * FROM episodes WHERE id = $1", [
    id,
  ]);
  res.status(200).json({
    message: response.rows,
    code: "episodes/info_ok",
  });
};
// Update an episode
const updateEpisodeInfo = async (req, res) => {
  const id = req.params.id;
  const { name, air_data, episode, url, created } = req.body;
  const response = await pool.query(
    "UPDATE episodes SET name = $1, air_data = $2, episode = $3, url = $4, created = $5 WHERE id = $6",
    [name, air_data, episode, url, created, id]
  );
  res.status(200).json({
    message: "Episodio actualizado correctamente.",
    code: "episodes/updated_ok",
  });
};

// Delete an episode
const deleteAnEpisode = async (req, res) => {
  const id = req.params.id;
  const response = await pool.query("DELETE FROM episodes WHERE id = $1", [id]);
  res.status(200).json({
    message: "Episodio eliminado correctamente",
    code: "episodes/del_ok",
  });
};

module.exports = {
  createEpisode,
  listEpisodes,
  episodeInfo,
  updateEpisodeInfo,
  deleteAnEpisode,
};
