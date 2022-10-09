const express = require('express');
const router = express.Router();
const con = require('./database/db');
const crud = require('./controllers/crud');

router.get('/', (req, res)=>{
    con.query('select * from dinosaurio', (error, resultado)=>{
        if(error) return console.log(error);
        res.render('index', {resultado : resultado});
    });
});

router.get('/crear', (req, res)=>{
    res.render('crear');
});

router.post('/guardar', crud.guardar);

router.get('/editar/:id', (req, res)=>{
    const id = req.params.id;
    con.query(`select * from dinosaurio where id = ${id}`, (error, resultado)=>{
        if(error) return console.log(error);
        res.render('editar', {dinosaurio : resultado[0]});
    });
});

router.post('/actualizar', crud.acrualizar);

router.get('/eliminar/:id', (req, res)=>{
    const id = req.params.id;
    con.query('delete from dinosaurio where id = ?', [id], (error, resultado)=>{
        if(error) return console.log(error);
        res.redirect('/');
    })
})

module.exports = router;