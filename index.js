const express = require("express");
const app = express();

// mdl
app.use(express.json());
app.use(express.urlencoded({extended: false}));

// routes
app.use(require("./src/routes/characters.route"));
app.use(require("./src/routes/episodes.route"));


app.listen(4000);
console.log("Server listening on 4000 port")