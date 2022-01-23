const { Router } = require("express");
const router = Router();

// Ctrl
const { listLocation } = require("../controllers/locations.controller")

router.get("/location/", listLocation)

module.exports = router;