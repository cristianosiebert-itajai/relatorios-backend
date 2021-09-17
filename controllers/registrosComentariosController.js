const { Router } = require('express');
const { RegistroComentario } = require("../models");
const { Usuario } = require("../models");
const Sequelize = require('sequelize');
const env = process.env.NODE_ENV || 'development';
const config = require(__dirname + '/../config/config.json')[env];

const router = Router();

RegistroComentario.belongsTo(Usuario, {as: 'usuarios', foreignKey: 'id'});
Usuario.hasMany(RegistroComentario, {as:'comentarios', foreignKey: 'usuario_comentario_id'});

router.all('/', function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "*");
    next();
});

router.get('/:registro_id', async(req,res) => {
    try {
        let sequelize;
        
        if (config.use_env_variable) {
            sequelize = new Sequelize(process.env[config.use_env_variable], config);
        } else {
            sequelize = new Sequelize(config.database, config.username, config.password, config);
        }

        var comentarios = await sequelize.query(
            'SELECT `RegistroComentario`.*, `usuarios`.nome, `usuarios`.foto FROM `registrocomentarios` AS `RegistroComentario` LEFT OUTER JOIN `Usuarios` AS `usuarios` ON `RegistroComentario`.`usuario_comentario_id` = `usuarios`.`id` WHERE `RegistroComentario`.`registro_id` = "'+req.params.registro_id+'" AND `RegistroComentario`.`comentario_pai_id` IS NULL ORDER BY createdAt DESC',
            {model: RegistroComentario}
        );

        for (let i=0; i<comentarios.length; i++) {
            var count = await sequelize.query(
                'SELECT COUNT(*) as total_respostas FROM `registrocomentarios` AS `RegistroComentario` WHERE `RegistroComentario`.`comentario_pai_id` = '+comentarios[i].id,
                {model: RegistroComentario}
            );
            comentarios[i].setDataValue('num_respostas',count[0]);
        }

        res.status(200).json(comentarios);
    } catch (e) {
        console.log(e);
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.get('/respostas/:registro_pai', async(req,res) => {
    try {
        let sequelize;
        if (config.use_env_variable) {
            sequelize = new Sequelize(process.env[config.use_env_variable], config);
        } else {
            sequelize = new Sequelize(config.database, config.username, config.password, config);
        }

        const comentarios = await sequelize.query(
            'SELECT `RegistroComentario`.*, `usuarios`.nome, `usuarios`.foto FROM `registrocomentarios` AS `RegistroComentario` LEFT OUTER JOIN `Usuarios` AS `usuarios` ON `RegistroComentario`.`usuario_comentario_id` = `usuarios`.`id` WHERE `RegistroComentario`.`comentario_pai_id` = "'+req.params.registro_pai+'" ORDER BY createdAt DESC',
            {model: RegistroComentario}
        );

        for (let i=0; i<comentarios.length; i++) {
            var count = await sequelize.query(
                'SELECT COUNT(*) as total_respostas FROM `registrocomentarios` AS `RegistroComentario` WHERE `RegistroComentario`.`comentario_pai_id` = '+comentarios[i].id,
                {model: RegistroComentario}
            );
            comentarios[i].setDataValue('num_respostas',count[0]);
        }
        
        res.status(200).json(comentarios);
    } catch (e) {
        console.log(e);
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.get('/id/:id', async(req,res) => {
    try {
        const comentario = await RegistroComentario.findByPk(req.params.id)
        res.status(200).json(comentario);
    } catch (e) {
        console.log(e);
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.post('/', async(req,res) => {
    try {
        const obj = req.body;
        const promise = RegistroComentario.create(obj);
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
        await RegistroComentario.update(obj, { where: { id: req.params.id } });
        res.status(200).json({'message':'Editado com sucesso.'});
    } catch (e) {
        console.log(e);
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.delete('/:id', async(req,res) => {
    try {
        await RegistroComentario.destroy({ where: { id: req.params.id } });
        res.status(200).json({message:"Removido com sucesso."});
    } catch (e) {
        console.log(e);
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }   
});

module.exports = router;