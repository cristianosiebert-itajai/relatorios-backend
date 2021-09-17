const UsuarioPermitido = (sequelize, DataTypes) => {
    return sequelize.define('UsuarioPermitido', {
        email: DataTypes.STRING,
        permissao: DataTypes.INTEGER
    });
};

module.exports = UsuarioPermitido;