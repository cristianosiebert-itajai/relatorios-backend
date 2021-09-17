const { Router } = require('express');
const { TipoRegistro } = require("../models");

const router = Router();

router.all('/', function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "*");
    next();
});

router.get('/', async(req,res) => {
    try {
        const tipos = await TipoRegistro.findAll({where: { deletedAt: null } });
        res.status(200).json(tipos);
    } catch (e) {
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.get('/:id', async(req,res) => {
    try {
        const tipo = await TipoRegistro.findByPk(req.params.id);
        res.status(200).json(tipo);
    } catch (e) {
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.post('/', async(req,res) => {
    try {
        const obj = req.body;
        const promise = TipoRegistro.create(obj);
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
        await TipoRegistro.update(obj, { where: { id: req.params.id } });
        res.status(200).json({'message':'Editado com sucesso.'});
    } catch (e) {
        console.log(e);
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.delete('/:id', async(req,res) => {
    try {
        //await TipoRegistro.destroy({ where: { id: req.params.id } });
        const del = {'deletedAt':Date.now()};
        await TipoRegistro.update(
            del,
            { where: { id: req.params.id } }
        );
        res.status(200).json({message:"Removido com sucesso."});
    } catch (e) {
        console.log(e);
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }   
});

module.exports = router;