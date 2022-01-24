const { Router } = require("express");
const router = Router();
const auth = require("../middleware/auth");

// Ctrl
const { listLocation } = require("../controllers/locations.controller");

// Location - Routes
router.get("/location/", auth, listLocation);
// Rutas eliminadas
// router.get("/location/:id", auth, locationInfo);
// router.put("/location/:id", auth, updateLocationInfo);
// router.delete("/location/:id", auth, deleteAnLocation);

module.exports = router;
