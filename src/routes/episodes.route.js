const { Router } = require("express");
const router = Router();
const auth = require("../middleware/auth");

// Ctrls
const {
  listEpisodes,
  createEpisode,
  episodeInfo,
  updateEpisodeInfo,
  deleteAnEpisode,
} = require("../controllers/episodes.controller");


// Episodes - Routes
router.post("/episode", auth, createEpisode);
router.get("/episode", auth, listEpisodes);
router.get("/episode/:id", auth, episodeInfo);
router.put("/episode/:id", auth, updateEpisodeInfo);
router.delete("/episode/:id", auth, deleteAnEpisode);

module.exports = router;
