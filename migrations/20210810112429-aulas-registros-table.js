module.exports = {
  up: async (queryInterface, Sequelize) => {
    const AulaRegistroTable = queryInterface.createTable("AulasRegistros",{
      id: {
        type: Sequelize.BIGINT,
        allowNull: false,
        primaryKey: true,
        autoIncrement: true
      },
      registro_id: {
        type: Sequelize.INTEGER,
        allowNull: false
      },
      aula: {
        type: Sequelize.INTEGER,
        allowNull: false
      }
    });

    return AulaRegistroTable;
  },

  down: async (queryInterface, Sequelize) => {
    return queryInterface.dropTable('AulasRegistros');
  }
};
