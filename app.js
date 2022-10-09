const express = require('express');
let app = express();
const PORT = process.env.PORT || 5000;

app.set('view engine', 'ejs');
app.use(express.urlencoded({extended:false}));
app.use(express(JSON));
app.use('/', require('./router'));

app.listen(PORT,()=>{
    console.log(`Servidor escuchando en http://localhost:${PORT}`);
}); 