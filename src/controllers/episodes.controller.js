const res = require("express/lib/response");
const { pool } = require("../services/dev.env");

// CRUD

// Create an episode
const createEpisode = async (req, res) => {
  const { name, air_date, episode, url, created } = req.body;
  if (
    !name ||
    name == "" ||
    !air_date ||
    air_date == "" ||
    !episode ||
    episode == "" ||
    !url ||
    url == "" ||
    !created ||
    created == ""
  ) {
    res.status(403).json({
      message:
        "Uno o más campos son incorrectos. \nPor favor revíselos e intente nuevamente.",
      code: "episodes/dataE_incorrect",
    });
  } else {
    const response = await pool.query(
      "INSERT INTO episode (name, air_date, episode, url, created) VALUES ($1, $2, $3, $4, $5)",
      [name, air_date, episode, url, created]
    );
    //TODO: Imprimir errores de la consulta
    res.status(201).json({
      message: "Episodio creado correctamente.",
      code: "episodes/created_ok",
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
    `SELECT * FROM episode ORDER BY id ASC OFFSET ${init} ROWS FETCH FIRST 20 ROW ONLY`
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
  const response = await pool.query("SELECT * FROM episode WHERE id = $1", [
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
  const { name, air_date, episode, url } = req.body;
  if (
    !name ||
    name == "" ||
    !air_date ||
    air_date == "" ||
    !episode ||
    episode == "" ||
    !url ||
    url == ""
  ) {
    res.status(406).json({
      message: "Uno o más campos están vacíos.",
      code: "episodes/empty_data",
    });
  } else {
    await pool.query(
      "UPDATE episode SET name = $1, air_date = $2, episode = $3, url = $4 WHERE id = $5",
      [name, air_date, episode, url, id]
    );
    res.status(200).json({
      message: "Episodio actualizado correctamente.",
      code: "episodes/updated_ok",
    });
  }
};

function checkFields(body) {
  console.log("hi");
}

// Delete an episode
const deleteAnEpisode = async (req, res) => {
  const id = req.params.id;
  const response = await pool.query("DELETE FROM episode WHERE id = $1", [id]);
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
