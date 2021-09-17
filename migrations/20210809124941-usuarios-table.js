module.exports = {
  up: async (queryInterface, Sequelize) => {
    const UsuarioTable = queryInterface.createTable("Usuarios",{
      id: {
        type: Sequelize.BIGINT,
        allowNull: false,
        primaryKey: true,
        autoIncrement: true
      },
      google_id: {
        type: Sequelize.STRING(100),
        allowNull: false
      },
      nome: {
        type: Sequelize.STRING(500),
        allowNull: false
      },
      email: {
        type: Sequelize.STRING(500),
        allowNull: false
      },
      foto: {
        type: Sequelize.TEXT,
        allowNull: false
      },
      ativo: {
        type: Sequelize.BOOLEAN,
        allowNull: false
      },
      permissao: {
        type: Sequelize.INTEGER,
        allowNull: false
      }
    });

    return UsuarioTable;
  },

  down: async (queryInterface, Sequelize) => {
    return queryInterface.dropTable('Usuarios');
  }
};
