const sql = require("mysql2");

const db = sql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "uni_site",
});

db.connect((err) => {
  if (err) {
    console.log(err);
  }
  console.log("successfully connected");
});
module.exports = db;