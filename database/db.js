const mysql = require('mysql2');
const BD_HOST = process.env.BD_HOST || 'localhost';
const BD_USER = process.env.BD_USER || 'root';
const BD_PASSWORD = process.env.BD_PASSWORD || 'n0m3l0';
const BD_NAME = process.env.BD_NAME || 'bd';
const BD_PORT = process.env.BD_PORT || 'bd';

let con = mysql.createConnection({
    host: BD_HOST,
    user: BD_USER,
    password: BD_PASSWORD,
    database: BD_NAME,
    port: BD_PORT
});

con.connect((error)=>{
    if(error) return console.log(error);
    console.log('CONECTADO a la Base de Datos')
});

module.exports = con;