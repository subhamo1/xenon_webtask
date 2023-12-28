const express = require("express");
const app = express();
const cors = require("cors");
const bodyParser = require("body-parser");
const bcrypt = require("bcrypt");

const db = require("./db");

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(cors());


app.use(express.static('../public'));



app.post("/register", (req, res) => {
  let name = req.body.name;
  let password = req.body.password;
//   console.log(name,password)
  bcrypt.hash(password, 10, (err, hash) => {
    if (err) {
      console.log(err);
    }
    db.query(
      "INSERT INTO users(username,password) VALUES (?,?)",
      [name, hash],
      (err, result) => {
        if (err) {
          if (err.code == "ER_DUP_ENTRY")
            res.send({ err: "user already exists" });
        } else {
        //   res.send({ msg: "" }); 
        //   console.log(result);
        res.send(`registered succesfully<br><a href="/login.html">go to login</a>`)
        }
      }
    );
  });
});

app.post("/login", (req, res) => {
  let name = req.body.name;
  let password = req.body.password;
  db.query(
    // "SELECT * FROM users WHERE name=? AND password=?",
    "SELECT username,password FROM users WHERE username=?",
    name,
    (err, result) => {
      if (err) console.log(err);

      if (result.length > 0) {
        bcrypt.compare(password, result[0].password, (error, response) => {
          if (response) {
            // console.log(result);
            res.redirect("contact.html");
          } else {
            res.send({ msg: "WRONG username/password combination" });
          }
        });
      } else {
        res.send({ msg: "user doesn't exist." });
      }
    }
  );
});

app.listen(5000);