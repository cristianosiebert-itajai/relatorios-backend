const TipoRegistro = (sequelize, DataTypes) => {
    return sequelize.define('TipoRegistro', {
        nome: DataTypes.STRING,
        deletedAt: DataTypes.DATE
    });
};

module.exports = TipoRegistro;