const { Router } = require("express");
const router = Router();
const auth = require("../middleware/auth")

// Ctrl
const { listLocation } = require("../controllers/locations.controller")

router.get("/location/", auth, listLocation)

module.exports = router;