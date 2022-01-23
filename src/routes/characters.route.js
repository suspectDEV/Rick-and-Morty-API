const { Router } = require("express");
const router = Router();
const auth = require("../middleware/auth")

// Ctrl
const { listCharacter } = require("../controllers/characters.controller")

router.get("/character/", auth, listCharacter)

module.exports = router;