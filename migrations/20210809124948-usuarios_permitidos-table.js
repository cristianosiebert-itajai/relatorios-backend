module.exports = {
  up: async (queryInterface, Sequelize) => {
    const UsuarioPermitidoTable = queryInterface.createTable("UsuariosPermitidos",{
      id: {
        type: Sequelize.BIGINT,
        allowNull: false,
        primaryKey: true,
        autoIncrement: true
      },
      email: {
        type: Sequelize.STRING(100),
        allowNull: false
      },
      permissao: {
        type: Sequelize.INTEGER,
        allowNull: false
      }
    });

    return UsuarioPermitidoTable;
  },

  down: async (queryInterface, Sequelize) => {
    return queryInterface.dropTable('Discplinas');
  }
};
