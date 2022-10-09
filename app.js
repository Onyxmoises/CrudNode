const express = require('express');
let app = express();
const port = process.env.port || 5000;

app.set('view engine', 'ejs');
app.use(express.urlencoded({extended:false}));
app.use(express(JSON));
app.use('/', require('./router'));

app.listen(port,()=>{
    console.log(`Servidor escuchando en http://localhost:${port}`);
}); 