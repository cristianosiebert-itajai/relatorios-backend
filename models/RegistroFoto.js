const RegistroFoto = (sequelize, DataTypes) => {
    return sequelize.define(
        'RegistroFoto', {
        registro_id: DataTypes.INTEGER,
        filepath: DataTypes.STRING
    },{ tableName:'registrofotos' });
};

module.exports = RegistroFoto;