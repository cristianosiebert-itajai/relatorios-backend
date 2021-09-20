const { Router } = require('express');
const { UsuarioPermitido } = require("../models");
const { Usuario } = require("../models");

const router = Router();

router.all('/', function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "*");
    next();
});

router.get('/', async(req,res) => {
    try {
        const usuarios = await UsuarioPermitido.findAll();
        for (let i=0; i<usuarios.length; i++) {
            const user = await Usuario.findAll({where:{'email':usuarios[i].email}});
            if (user.length > 0) {
                usuarios[i].setDataValue('nome',user[0].nome);
                usuarios[i].setDataValue('avatar',user[0].foto);
            }
        }
        res.status(200).json(usuarios);
    } catch (e) {
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.get('/email/:email', async(req,res) => {
    try {
        const users_email = await UsuarioPermitido.findAll({where: { email: req.params.email } });
        res.status(200).json(users_email);
    } catch (e) {
        console.log(e);
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});


router.get('/:id', async(req,res) => {
    try {
        const usuario = await UsuarioPermitido.findByPk(req.params.id);
        res.status(200).json(usuario);
    } catch (e) {
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.post('/', async(req,res) => {
    try {
        const obj = req.body;
        const promise = UsuarioPermitido.create(obj);
        promise.then((result) => {
            res.status(200).json(result);
        });
    } catch (e) {
        console.log(e);
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.put('/:id', async(req,res) => {
    try {
        const obj = req.body;
        const result = await UsuarioPermitido.update(obj, { where: { id: req.params.id } });
        res.status(200).json(result);
    } catch (e) {
        console.log(e);
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.delete('/:id', async(req,res) => {
    try {
        const usuario = await UsuarioPermitido.findByPk(req.params.id);
        const user = await Usuario.findAll({where:{'email':usuario.email}});
        if (user.length > 0) {
            await Usuario.destroy({ where: { id: user[0].id } });
        }
        await UsuarioPermitido.destroy({ where: { id: req.params.id } });
        res.status(200).json({message:"Removido com sucesso."});
    } catch (e) {
        console.log(e);
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }   
});

module.exports = router;