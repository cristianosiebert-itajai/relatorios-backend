const { Router } = require('express');
const { SupervisoraUsuario } = require("../models");

const router = Router();

router.all('/', function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "*");
    next();
});

router.get('/', async(req,res) => {
    try {
        const supervisoras = await SupervisoraUsuario.findAll();
        res.status(200).json(supervisoras);
    } catch (e) {
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.get('/:id', async(req,res) => {
    try {
        const supervisora = await SupervisoraUsuario.findByPk(req.params.id);
        res.status(200).json(supervisora);
    } catch (e) {
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.get('/email/:email', async(req,res) => {
    try {
        const supervisoras = await SupervisoraUsuario.findAll({where: { usuario_superior_email: req.params.email } });
        res.status(200).json(supervisoras);
    } catch (e) {
        console.log(e);
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.put('/email/:email', async(req,res) => {
    try {
        const obj = req.body;
        await SupervisoraUsuario.update(obj, { where: { usuario_superior_email: req.params.email } });
        res.status(200).json({'message':'editado'});
    } catch (e) {
        console.log(e);
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.post('/', async(req,res) => {
    try {
        const obj = req.body;
        const promise = SupervisoraUsuario.create(obj);
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
        await SupervisoraUsuario.update(obj, { where: { id: req.params.id } });
        res.status(200).json({'message':'Editado com sucesso'});
    } catch (e) {
        console.log(e);
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.delete('/:id', async(req,res) => {
    try {
        await SupervisoraUsuario.destroy({ where: { id: req.params.id } });
        res.status(200).json({message:"Removido com sucesso."});
    } catch (e) {
        console.log(e);
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }   
});

module.exports = router;