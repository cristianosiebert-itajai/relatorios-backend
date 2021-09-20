const SupervisoraUsuario = (sequelize, DataTypes) => {
    var obj = sequelize.define('SupervisoraUsuario', {
        usuario_superior_email: DataTypes.STRING,
        usuario_email: DataTypes.STRING,
    },{ tableName:'supervisorausuarios' });
    return obj;
};

module.exports = SupervisoraUsuario;