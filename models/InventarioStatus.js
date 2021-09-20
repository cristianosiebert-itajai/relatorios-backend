const InventarioStatus = (sequelize, DataTypes) => {
    return sequelize.define('InventarioStatus', {
        status: DataTypes.STRING,
    },{ tableName:'inventariostatuses' });
};

module.exports = InventarioStatus;