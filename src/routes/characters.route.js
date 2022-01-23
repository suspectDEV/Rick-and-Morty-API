const { Router } = require("express");
const router = Router();

// Ctrl
const { listCharacter } = require("../controllers/characters.controller")

router.get("/character/", listCharacter)

module.exports = router;