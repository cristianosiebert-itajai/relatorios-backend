module.exports = {
  up: async (queryInterface, Sequelize) => {
    const TipoRegistroTable = queryInterface.createTable("tiporegistros",{
      id: {
        type: Sequelize.BIGINT,
        allowNull: false,
        primaryKey: true,
        autoIncrement: true
      },
      nome: {
        type: Sequelize.STRING(255),
        allowNull: false
      },
      deletedAt: {
        type: Sequelize.DATE,
        allowNull: true
      },
    });

    return TipoRegistroTable;
  },

  down: async (queryInterface, Sequelize) => {
    return queryInterface.dropTable('tiporegistros');
  }
};
