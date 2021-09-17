const { Router } = require('express');
const { AulaRegistro } = require("../models");

const router = Router();

router.all('/', function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "*");
    next();
});

router.get('/:registro_id', async(req,res) => {
    try {
        const aulas = await AulaRegistro.findAll({where: { registro_id: req.params.registro_id } });
        res.status(200).json(aulas);
    } catch (e) {
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.get('/:id', async(req,res) => {
    try {
        const aula = await AulaRegistro.findByPk(req.params.id);
        res.status(200).json(aula);
    } catch (e) {
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.post('/', async(req,res) => {
    try {
        const obj = req.body;
        const promise = AulaRegistro.create(obj);
        promise.then((result) => {
            res.status(200).json(result);
        });
    } catch (e) {
        console.log(e);
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.put('/:registro_id', async(req,res) => {
    try {
        const aulas = await AulaRegistro.findAll({where: { registro_id: req.params.registro_id } });
        if (aulas.length > 0) {
            for (let i=0; i<aulas.length; i++) {
                AulaRegistro.destroy({ where: { id: aulas[i].id } });
            }
        }
        res.status(200).json({'message':'Atualizado com sucesso.'});
    } catch (e) {
        console.log(e);
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.delete('/:id', async(req,res) => {
    try {
        await AulaRegistro.destroy({ where: { id: req.params.id } });
        res.status(200).json({message:"Removido com sucesso."});
    } catch (e) {
        console.log(e);
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }   
});

module.exports = router;