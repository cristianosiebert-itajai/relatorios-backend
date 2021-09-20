module.exports = {
  up: async (queryInterface, Sequelize) => {
    const DisciplinaTable = queryInterface.createTable("disciplinas",{
      id: {
        type: Sequelize.BIGINT,
        allowNull: false,
        primaryKey: true,
        autoIncrement: true
      },
      nome: {
        type: Sequelize.STRING(100),
        allowNull: false
      },
      deletedAt: {
        type: Sequelize.DATE,
        allowNull: true
      }
    });

    return DisciplinaTable;
  },

  down: async (queryInterface, Sequelize) => {
    return queryInterface.dropTable('disciplinas');
  }
};
