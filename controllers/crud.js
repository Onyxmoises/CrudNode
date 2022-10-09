const con = require('../database/db')

exports.guardar = (req, res)=>{
    const nombre = req.body.nombre;
    const dieta = req.body.dieta;
    const era = req.body.era;
    const altitud = req.body.altitud;
    const longitud = req.body.longitud;
    const peso = req.body.peso;
    const esperanza = req.body.esperanza;
    const familia = req.body.familia;
    con.query(`insert into dinosaurio values("${nombre}", "${dieta}", "${era}", ${altitud}, ${longitud}, "${peso}", ${esperanza}, "${familia}", 0)`, (error, resultado)=>{
        if(error) return console.log(error);
        res.redirect('/');
    });
}

exports.acrualizar = (req, res)=>{
    const nombre = req.body.nombre;
    const dieta = req.body.dieta;
    const era = req.body.era;
    const altitud = req.body.altitud;
    const longitud = req.body.longitud;
    const peso = req.body.peso;
    const esperanza = req.body.esperanza;
    const familia = req.body.familia;
    const id = req.body.id;
    con.query('update dinosaurio set ? where id = ?', [{nombre:nombre, dieta:dieta, era:era, altura:altitud, longitud:longitud, peso:peso, esperanza:esperanza, familia:familia}, id], (error, resultado)=>{
        if(error) return console.log(error);
        res.redirect('/');
    });
}