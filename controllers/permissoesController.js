const { Router } = require('express');
const { Permissao } = require("../models");

const router = Router();

router.all('/', function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "*");
    next();
});

router.get('/', async(req,res) => {
    try {
        const permissoes = await Permissao.findAll();
        res.status(200).json(permissoes);
    } catch (e) {
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.get('/:id', async(req,res) => {
    try {
        const permissao = await Permissao.findByPk(req.params.id);
        res.status(200).json(permissao);
    } catch (e) {
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.post('/', async(req,res) => {
    try {
        const obj = req.body;
        const promise = Permissao.create(obj);
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
        await Permissao.update(obj, { where: { id: req.params.id } });
        res.status(200).json(result);
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