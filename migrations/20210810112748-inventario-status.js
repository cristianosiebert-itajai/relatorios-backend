module.exports = {
  up: async (queryInterface, Sequelize) => {
    const InventarioStatusTable = queryInterface.createTable("inventariostatuses",{
      id: {
        type: Sequelize.BIGINT,
        allowNull: false,
        primaryKey: true,
        autoIncrement: true
      },
      status: {
        type: Sequelize.STRING(100),
        allowNull: false
      }
    });

    return InventarioStatusTable;
  },

  down: async (queryInterface, Sequelize) => {
    return queryInterface.dropTable('inventariostatuses');
  }
};

