var express = require('express');
var mysql = require('mysql');
var bodyParser = require("body-parser"); //makes retrieving request as js object.
var app = express();

app.set("view engine", "ejs"); // identifies home in line 32 is going to be of type ejs
app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static(__dirname + "/public")); //makes the contents in public available to app files using the reference

var connection = mysql.createConnection({
    host: 'sql3.freemysqlhosting.net',
    user: 'sql3255208',
    database: 'sql3255208',
    password: 'HmxNJnjCZm'
});

// app.get("/", function(req, res){
//     // Find the host
//     connection.query(q, function(err, results){
//         if(err) throw err;
//          console.log(results[0]);
//     });
// });


app.get("/", function (req, res) {
    // Find count of users in DB
    var q = "SELECT COUNT(*) AS count FROM users";
    connection.query(q, function (err, results) {
        if (err) throw err;
        var count = results[0].count;
        // count is passed as JS object to the view home.ejs(line 10)
        res.render("home", { data: count }); // by default, looks for "home.ejs" in "views" directory
    });
});


app.post("/register", function (req, res) {
    var person = {
        email: req.body.email  //email is sent as post request from line 11 in home.ejs; works only with body-parser
    };
    connection.query('INSERT INTO users SET ?', person, function (err, result) {
        if (err) throw err;
        res.redirect("/endpage");
    });
});

app.get("/endpage", function (req, res) {

    res.render("thankyou");
})

app.listen(8080, function () {
    console.log("Server running on 8080!");
});