const UsuarioPermitido = (sequelize, DataTypes) => {
    return sequelize.define('UsuarioPermitido', {
        email: DataTypes.STRING,
        permissao: DataTypes.INTEGER
    },{ tableName:'usuariopermitidos' });
};
    

module.exports = UsuarioPermitido;