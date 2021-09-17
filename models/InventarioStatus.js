const InventarioStatus = (sequelize, DataTypes) => {
    return sequelize.define('InventarioStatus', {
        status: DataTypes.STRING,
    });
};

module.exports = InventarioStatus;