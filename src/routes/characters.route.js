const { Router } = require("express");
const router = Router();

// Ctrl
const { getCharacters } = require("../controllers/characters.controller")

router.get("/characters", getCharacters)

module.exports = router;