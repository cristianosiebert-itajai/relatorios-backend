const aulasRegistrosController = require('./aulasRegistrosController');
const disciplinasController = require('./disciplinasController');
const inventariosController = require('./inventariosController');
const inventariosStatusController = require('./inventarioStatusController');
const permissoesController = require('./permissoesController');
const registrosComentariosController = require('./registrosComentariosController');
const registrosController = require('./registrosController');
const registrosFotosController = require('./registrosFotosController');
const supervisoraUsuariosController = require('./supervisoraUsuariosController');
const tiposPerifericosController = require('./tiposPerifericosController');
const tiposRegistrosController = require('./tiposRegistrosController')
const usuariosController = require('./usuariosController');
const usuariosPermitidosController = require('./usuariosPermitidosController');

module.exports = {
    aulasRegistros: aulasRegistrosController,
    disciplinasController: disciplinasController,
    inventariosController: inventariosController,
    inventariosStatusController: inventariosStatusController,
    permissoesController: permissoesController,
    registrosComentariosController: registrosComentariosController,
    registrosController: registrosController,
    registrosFotosController: registrosFotosController,
    supervisoraUsuariosController: supervisoraUsuariosController,
    tiposPerifericosController:tiposPerifericosController,
    tiposRegistrosController: tiposRegistrosController,
    usuariosController: usuariosController,
    usuariosPermitidosController: usuariosPermitidosController
}