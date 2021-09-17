const SupervisoraUsuario = (sequelize, DataTypes) => {
    return sequelize.define('SupervisoraUsuario', {
        usuario_superior_email: DataTypes.STRING,
        usuario_email: DataTypes.STRING,
    });
};

module.exports = SupervisoraUsuario;