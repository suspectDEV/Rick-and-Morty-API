const { Router } = require("express");
const router = Router();
const auth = require("../middleware/auth")

// Ctrl
const { listCharacter } = require("../controllers/characters.controller")

// Characters - Routes
router.get("/character/", auth, listCharacter)
// Rutas eliminadas
// router.get("/character/:id", auth, characterInfo);
// router.put("/character/:id", auth, updateCharacterInfo);
// router.delete("/character/:id", auth, deleteAnCharacter);

module.exports = router;