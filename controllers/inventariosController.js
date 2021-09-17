const { Router } = require('express');
const { Inventario } = require("../models");
const path = require('path');

const router = Router();

//VER UPLOAD DE FOTO

router.all('/', function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "*");
    next();
});

router.get('/', async(req,res) => {
    try {
        const items = await Inventario.findAll({where: { deletedBy: null, deletedAt: null } });
        res.status(200).json(items);
    } catch (e) {
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.get('/user_id/:id', async(req,res) => {
    try {
        const items = await Inventario.findAll({where: { deletedBy: null, deletedAt: null, createdBy: req.params.id } });
        res.status(200).json(items);
    } catch (e) {
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.get('/busca/:search', async(req,res) => {
    try {
        const items = await Inventario.findAll({where: { 
            [Op.and]: [{deletedBy: null},{deletedAt: null}],
            [Op.or]: [
                {nome:{[Op.like]:'%'+req.params.search+'%'}}
            ]}
        });
        res.status(200).json(items);
    } catch (e) {
        console.log(e);
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.get('/:id', async(req,res) => {
    try {
        const item = await Inventario.findByPk(req.params.id);
        res.status(200).json(item);
    } catch (e) {
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.post('/', async(req,res) => {
    try {
        const obj = req.body;
        const promise = Inventario.create(obj);
        promise.then((result) => {
            res.status(200).json(result);
        });
    } catch (e) {
        console.log(e);
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.put('/foto/:id', async(req,res) => {
    try {
        if (!req.files) {
            res.status(200).json({message:"Nenhum arquivo enviado."});    
        } else {
            for (let i=0; i<Object.keys(req.files).length; i++) {
                let photo = req.files['files['+i+']'];
                let name = photo.name;
                photo_ext = name.split('.').pop();
                photo_new_name = photo.name.replace('.'+photo_ext,new Date().toISOString().replace(/:/g, '-') + '.' + photo_ext);
                photo.mv('./uploads/perifericos/'+photo_new_name);
                const item = Inventario.findByPk(req.params.id);
                item.foto = 'uploads/perifericos/'+photo_new_name;
                Inventario.update(item, { where: { id: req.params.id } });
            }
            res.status(200).json({"message":"Upload feito com sucesso."});
        }
    } catch (e) {
        console.log(e);
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.get('/get-foto/:filepath', async(req,res) => {
    try {
        var url = req.params.filepath.replace('___','/');
        url = url.replace('___','/');
        var abs_url = path.resolve(url);
        res.status(200).sendFile(abs_url);
    } catch (e) {
        console.log(e);
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.put('/:id', async(req,res) => {
    try {
        const obj = req.body;
        await Inventario.update(obj, { where: { id: req.params.id } });
        res.status(200).json({'message':'Editado com sucesso'});
    } catch (e) {
        console.log(e);
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.delete('/:id/:user_id', async(req,res) => {
    try {
        const del = {'deletedAt':Date.now(), 'deletedBy':req.params.user_id};
        await Inventario.update(
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