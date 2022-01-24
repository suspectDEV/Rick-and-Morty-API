const { Pool } = require("pg")

const pool = new Pool({
  host : "localhost",
  user : "postgres",
  password: "",
  database: "v_dev",
  port: "5432"
})

module.exports = {
  pool
}