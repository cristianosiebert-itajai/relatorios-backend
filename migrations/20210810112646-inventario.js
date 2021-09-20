module.exports = {
  up: async (queryInterface, Sequelize) => {
    const InventarioTable = queryInterface.createTable("inventarios",{
      id: {
        type: Sequelize.BIGINT,
        allowNull: false,
        primaryKey: true,
        autoIncrement: true
      },
      nome: {
        type: Sequelize.TEXT,
        allowNull: false
      },
      patrimonio: {
        type: Sequelize.TEXT,
        allowNull: true
      },
      tipo_periferico_id: {
        type: Sequelize.INTEGER,
        allowNull: false
      },
      tipo_periferico_outro_nome: {
        type: Sequelize.TEXT,
        allowNull: true
      },
      status_id: {
        type: Sequelize.INTEGER,
        allowNull: false
      },
      foto: {
        type: Sequelize.TEXT,
        allowNull: true
      },
      createdAt: {
        type: Sequelize.DATE,
        allowNull: false
      },
      updatedAt: {
        type: Sequelize.DATE,
        allowNull: false
      },
      deletedAt: {
        type: Sequelize.DATE,
        allowNull: true
      },
      createdBy: {
        type: Sequelize.INTEGER,
        allowNull: false
      },
      updatedBy: {
        type: Sequelize.INTEGER,
        allowNull: false
      },
      deletedBy: {
        type: Sequelize.INTEGER,
        allowNull: true
      }
    });

    return InventarioTable;
  },

  down: async (queryInterface, Sequelize) => {
    return queryInterface.dropTable('inventarios');
  }
};
