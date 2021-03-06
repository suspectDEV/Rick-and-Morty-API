const express = require("express");
const app = express();
const { API_PORT } = process.env

// cors
app.use((req, res, next) => {
  res.header('Access-Control-Allow-Origin', '*');
  res.header('Access-Control-Allow-Headers', 'Authorization, X-access-KEY, x-access-token, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Allow-Request-Method');
  res.header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, DELETE');
  res.header('Allow', 'GET, POST, OPTIONS, PUT, DELETE');
  next();
});


// mdl
app.use(express.json());
app.use(express.urlencoded({extended: false}));

// routes
app.use(require("./src/routes/episodes.route"));
app.use(require("./src/routes/characters.route"));
app.use(require("./src/routes/locations.route"));


app.listen(API_PORT);
console.log(`Server listening on ${API_PORT} port`)