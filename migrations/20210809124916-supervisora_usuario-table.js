module.exports = {
  up: async (queryInterface, Sequelize) => {
    const SupervisoraUsuarioTable = queryInterface.createTable("SupervisoraUsuarios",{
      id: {
        type: Sequelize.BIGINT,
        allowNull: false,
        primaryKey: true,
        autoIncrement: true
      },
      usuario_superior_email: {
        type: Sequelize.STRING(50),
        allowNull: false
      },
      usuario_email: {
        type: Sequelize.STRING(50),
        allowNull: false
      }
    });

    return MonitorarUsuarioTable;
  },

  down: async (queryInterface, Sequelize) => {
    return queryInterface.dropTable('SupervisoraUsuarios');
  }
};
