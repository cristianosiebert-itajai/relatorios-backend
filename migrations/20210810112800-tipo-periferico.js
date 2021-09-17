module.exports = {
  up: async (queryInterface, Sequelize) => {
    const TipoPerifericoTable = queryInterface.createTable("TiposPerifericos",{
      id: {
        type: Sequelize.BIGINT,
        allowNull: false,
        primaryKey: true,
        autoIncrement: true
      },
      nome: {
        type: Sequelize.STRING(100),
        allowNull: false
      }
    });

    return TipoPerifericoTable;
  },

  down: async (queryInterface, Sequelize) => {
    return queryInterface.dropTable('TiposPerifericos');
  }
};
