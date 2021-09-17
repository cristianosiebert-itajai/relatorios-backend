const { Router } = require('express');
const { Registro } = require("../models");
const { RegistroFoto } = require("../models");
const { Sequelize } = require("sequelize");
const { Op } = require("sequelize");

const router = Router();

Registro.hasMany(RegistroFoto, {as:'fotos', foreignKey: 'registro_id'});
RegistroFoto.belongsTo(Registro, {foreignKey: 'id'});

router.all('/', function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "*");
    next();
});

router.get('/', async(req,res) => {
    try {
        const registros = await Registro.findAll({where: { deletedBy: null, deletedAt: null } });
        res.status(200).json(registros);
    } catch (e) {
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.get('/:mes/:user_id/:columns/:publico', async(req,res) => {
    try {
        var where_clause = { deletedBy: null, deletedAt: null, user_id: req.params.user_id };
        if (req.params.publico == 'publico') { where_clause = { deletedBy: null, deletedAt: null, visibilidade: true } }
        var registros = await Registro.findAll(
            {
                where: 
                {
                    [Op.and]: [
                        Sequelize.where(Sequelize.fn('MONTH',Sequelize.col('Registro.data_inicio')),req.params.mes),
                        where_clause
                    ]
                },
                include: [{
                    model: RegistroFoto,
                    as: 'fotos'
                }],
                order: [
                    ['data_inicio','DESC'],
                    ['data_fim','DESC'],
                    ['id','DESC']
                ]
            });
        var resultados = [];
        var contador = 0;
        var comment_counter = 0;
        var size = registros.length;
        registros.forEach((registro) => {
            registro.setDataValue('comment_counter',comment_counter);
            if (contador < req.params.columns) {
                if (!Array.isArray(resultados[contador])) {
                    resultados[contador] = [registro];
                } else {
                    resultados[contador].push(registro);        
                }
                contador++;
            } else {
                contador = 0;
                resultados[contador].push(registro);
                contador++;
            }
            comment_counter++;
        });
        resultados.push(size);
        res.status(200).json(resultados);
    } catch (e) {
        console.log(e);
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.get('/id/:id', async(req,res) => {
    try {
        const registro = await Registro.findByPk(req.params.id);
        res.status(200).json(registro);
    } catch (e) {
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.post('/', async(req,res) => {
    try {
        const obj = req.body;
        const promise = Registro.create(obj);
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
        await Registro.update(obj, { where: { id: req.params.id } });
        res.status(200).json({'message':'Alterado com sucesso'});
    } catch (e) {
        console.log(e);
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.delete('/:id/:user_id', async(req,res) => {
    try {
        const del = {'deletedAt':Date.now(), 'deletedBy':req.params.user_id};
        await Registro.update(
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