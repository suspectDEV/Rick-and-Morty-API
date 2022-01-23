const { Router } = require("express");
const router = Router();

// Ctrls
const { listEpisodes, createEpisode, episodeInfo, updateEpisodeInfo, deleteAnEpisode } = require("../controllers/episodes.controller")

// Episodes - Routes
router.post("/episode", createEpisode);
router.get("/episode", listEpisodes);
router.get("/episode/:id", episodeInfo);
router.put("/episode/:id", updateEpisodeInfo);
router.delete("/episode/:id", deleteAnEpisode);

module.exports = router;