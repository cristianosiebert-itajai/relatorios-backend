const RegistroFoto = (sequelize, DataTypes) => {
    var obj =  sequelize.define(
        'RegistroFoto', {
        registro_id: DataTypes.INTEGER,
        filepath: DataTypes.STRING
    });
    return obj;
};

module.exports = RegistroFoto;