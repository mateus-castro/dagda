var mysql = require('mysql');
var connection = mysql.createConnection({
    host     : 'localhost',
    port     : '3306',
    user     : 'mario',
    password : 'mario03122000',
    database : 'sensor'
});

connection.connect(function(err) {
    if (err) throw err;
    console.log('Conectado com sucesso!')
});


module.exports = connection;