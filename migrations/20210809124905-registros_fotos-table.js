module.exports = {
  up: async (queryInterface, Sequelize) => {
    const RegistroFotoTable = queryInterface.createTable("registrofotos",{
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
      filepath: {
        type: Sequelize.TEXT,
        allowNull: false
      }
    });

    return RegistroFotoTable;
  },

  down: async (queryInterface, Sequelize) => {
    return queryInterface.dropTable('registrofotos');
  }
};
