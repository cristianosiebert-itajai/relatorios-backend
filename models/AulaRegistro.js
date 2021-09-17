const AulaRegistro = (sequelize, DataTypes) => {
    return sequelize.define('AulaRegistro', {
        registro_id: DataTypes.INTEGER,
        aula: DataTypes.INTEGER
    });
};

module.exports = AulaRegistro;