// Inserts bulk data into database
var faker = require('faker');

var mysql = require('mysql');
 
var connection = mysql.createConnection({
    host: 'sql3.freemysqlhosting.net',
    user: 'sql-------',
    database: 'sql-------',
    password: 'XXXXXXXXXX'
});

// js object => key value pair

var data = [];

for(var i = 0; i < 500; i++){
    data.push([
        faker.internet.email(),
        faker.date.past()
    ]);
}

// console.log ('data : ', data);
 
var q = 'INSERT INTO users (email, created_at) VALUES ?';

var qCount = 'select count(*) as userCount from users';

connection.query(q,[data], function (error, results, fields) {
   if (error) throw error;
   console.log('Insert Result: ', results);
  
});


connection.query(qCount, function (error, results, fields) {
   if (error) throw error;
   console.log('The solution is: ', results[0].userCount);
  
});

connection.end();