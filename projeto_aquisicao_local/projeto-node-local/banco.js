const configuracoes = {
    banco: {
        server: "kastrodb2.database.windows.net", //aqui são as coisas do bd do azure
        user: "kastro",
        password: "Castrao123*",
        database: "bancoDagda",
        options: {
            encrypt: true
        },
        pool: {
            max: 4,
            min: 1,
            idleTimeoutMillis: 30000,
            connectionTimeout: 5000
        }
    }
}
 
const sql = require('mssql');
sql.on('error', err => {
    console.error(`Erro de Conexão: ${err}`);
});


function conectar() {
  sql.close();
  return sql.connect(configuracoes.banco)
} 

module.exports = {
    conectar: conectar,
    sql: sql
}
