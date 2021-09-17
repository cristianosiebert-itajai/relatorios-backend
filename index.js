const express = require('express');
const bodyParser = require('body-parser');
const fileUpload = require('express-fileupload');
const cors = require('cors');
const controllers = require('./controllers');
const app = express();
const port = 3000;

app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended:true}));
app.use(fileUpload({createParentPath:true}));

app.get('/',(req,res) => res.send('Hello World'));

app.use('/aulas-registros', controllers.aulasRegistros);
app.use('/disciplinas', controllers.disciplinasController);
app.use('/inventarios', controllers.inventariosController);
app.use('/inventarios-status', controllers.inventariosStatusController);
app.use('/permissoes', controllers.permissoesController);
app.use('/registros-comentarios', controllers.registrosComentariosController);
app.use('/registros-fotos', controllers.registrosFotosController);
app.use('/registros', controllers.registrosController);
app.use('/supervisora-usuarios', controllers.supervisoraUsuariosController);
app.use('/tipos-perifericos', controllers.tiposPerifericosController);
app.use('/tipos-registros', controllers.tiposRegistrosController);
app.use('/usuarios', controllers.usuariosController);
app.use('/usuarios-permitidos', controllers.usuariosPermitidosController);

app.listen(port, () => console.log('Servidor Iniciado.'));