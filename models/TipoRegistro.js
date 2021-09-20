const TipoRegistro = (sequelize, DataTypes) => {
    return sequelize.define('TipoRegistro', {
        nome: DataTypes.STRING,
        deletedAt: DataTypes.DATE
    },{ tableName:'tiporegistros' });
};

module.exports = TipoRegistro;