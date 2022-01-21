const { Router } = require("express");
const router = Router();

// Ctrls
const { listEpisodes, createEpisode, episodeInfo, updateEpisodeInfo, deleteAnEpisode } = require("../controllers/episodes.controller")

// Episodes - Routes
router.post("/episodes", createEpisode);
router.get("/episodes", listEpisodes);
router.get("/episodes/:id", episodeInfo);
router.put("/episodes/:id", updateEpisodeInfo);
router.delete("/episodes/:id", deleteAnEpisode);

module.exports = router;