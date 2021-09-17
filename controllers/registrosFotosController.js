const { Router } = require('express');
const { RegistroFoto } = require("../models");
const path = require('path');
const fs = require('fs');

const router = Router();

router.all('/', function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "*");
    next();
});

router.get('/:registro_id', async(req,res) => {
    try {
        const fotos = await RegistroFoto.findAll({where: { registro_id: req.params.registro_id } });
        res.status(200).json({'fotos':fotos,'len':fotos.length});
    } catch (e) {
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.get('/foto/:filepath', async(req,res) => {
    try {
        var url = req.params.filepath.replace('___','/');
        var abs_url = path.resolve(url);
        res.status(200).sendFile(abs_url);
    } catch (e) {
        console.log(e);
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.get('/:id', async(req,res) => {
    try {
        const foto = await RegistroFoto.findByPk(req.params.id);
        res.status(200).json(foto);
    } catch (e) {
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.post('/', async(req,res) => {
    try {
        if (!req.files) {
            res.status(200).json({message:"Nenhum arquivo enviado."});    
        } else {
            for (let i=0; i<Object.keys(req.files).length; i++) {
                let photo = req.files['files['+i+']'];
                let name = photo.name;
                photo_ext = name.split('.').pop();
                photo_new_name = photo.name.replace('.'+photo_ext,new Date().toISOString().replace(/:/g, '-') + '.' + photo_ext);
                photo.mv('./uploads/'+photo_new_name);
                var registro_foto = {'registro_id': req.body.registro_id, 'filepath':'uploads/'+photo_new_name};
                RegistroFoto.create(registro_foto);
            }
            res.status(200).json({"message":"Upload feito com sucesso."});
        }
    } catch (e) {
        console.log(e);
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.put('/:id', async(req,res) => {
    try {
        const obj = req.body;
        await RegistroFoto.update(obj, { where: { id: req.params.id } });
        res.status(200).json(result);
    } catch (e) {
        console.log(e);
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }
});

router.delete('/:id/:filepath', async(req,res) => {
    try {
        var path = req.params.filepath;
        var fixed_path = path.replace('___','/');
        fs.unlinkSync("./"+fixed_path);
        await RegistroFoto.destroy({ where: { id: req.params.id } });
        res.status(200).json({message:"Removido com sucesso."});
    } catch (e) {
        console.log(e);
        res.status(500).json({message:"Erro interno do servidor.", error_message: e});
    }   
});

module.exports = router;