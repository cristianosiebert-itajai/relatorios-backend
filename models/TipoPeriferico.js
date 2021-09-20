const TipoPeriferico = (sequelize, DataTypes) => {
    return sequelize.define('TipoPeriferico', {
        nome: DataTypes.STRING
    },{ tableName:'tipoperifericos' });
};

module.exports = TipoPeriferico;