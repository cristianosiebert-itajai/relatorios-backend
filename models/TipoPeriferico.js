const TipoPeriferico = (sequelize, DataTypes) => {
    return sequelize.define('TipoPeriferico', {
        nome: DataTypes.STRING
    });
};

module.exports = TipoPeriferico;