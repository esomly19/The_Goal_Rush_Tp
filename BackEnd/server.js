const express = require('express')
const bodyParser = require('body-parser')
const mysql = require('mysql')

const app = express()
const port = process.env.PORT || 5000;

// Parsing middleware
// Parse application/x-www-form-urlencoded
// app.use(bodyParser.urlencoded({ extended: false })); // Remove 
app.use(express.urlencoded({ extended: true })); // New
// Parse application/json
// app.use(bodyParser.json()); // Remove
app.use(express.json()); // New

// MySQL Code goes here



const con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "root",
  database: "goal_rush"
});

con.connect(function (err) {
  if (err) throw err;
  console.log("Connecté à la base de données MySQL!");
  con.query("SELECT * FROM bets", function (err, result) {
    if (err) throw err;
    console.log(result);
  });
  con.query("SELECT * from parties inner join bets on parties.id = bets.party_id ", function (err, result) {
    for (let i = 0; i < result.length; i++) {
      id = result[i].home_team
      ida = result[i].away_team
      console.log(id)
      con.query(`SELECT * from teams where teams.id='${id}' `, function (err, result) {
        console.log(result);
      });
      con.query(`SELECT * from teams where teams.id='${ida}' `, function (err, result) {
        console.log(result);
      });
    }


  });
});

app.get('/', (req, res) => {
  con.query("SELECT * FROM bets", function (err, result) {
    res.send(result);
  });
})

app.get('/matchs', (req, res) => {
  con.query("SELECT teams.name FROM parties inner join teams on parties.home_team = teams.id", function (err, result) {
    res.send(result);
    console.log(result);
  });
});
app.get('/match', (req, res) => {
  con.query("select * from parties inner join bets on parties.id = bets.party_id  inner join teams on partieshome_team = teamsname", function (err, result) {
    res.send(result);
    console.log(result);
  });

});


// Listen on enviroment port or 5000
app.listen(port, () => console.log(`Listening on port ${port}`))