const { Pool } = require("pg")

const pool = new Pool({
  host : "localhost",
  user : "alex",
  password: "",
  database: "v_dev",
  port: "5432"
})

module.exports = {
  pool
}