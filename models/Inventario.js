const Inventario = (sequelize, DataTypes) => {
    return sequelize.define('Inventario', {
        nome: DataTypes.STRING,
        patrimonio: DataTypes.STRING,
        tipo_periferico_id: DataTypes.INTEGER,
        tipo_periferico_outro_nome: DataTypes.STRING,
        status_id: DataTypes.INTEGER,
        foto: DataTypes.STRING,
        createdAt: DataTypes.DATE,
        updatedAt: DataTypes.DATE,
        deletedAt: DataTypes.DATE,
        createdBy: DataTypes.BIGINT,
        updatedBy: DataTypes.BIGINT,
        deletedBy: DataTypes.BIGINT,
    });
};

module.exports = Inventario;