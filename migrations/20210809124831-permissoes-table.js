module.exports = {
  up: async (queryInterface, Sequelize) => {
    const PermissoesTable = queryInterface.createTable("permissaos",{
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
      cria_registro_publico: {
        type: Sequelize.BOOLEAN,
        allowNull: false
      },
      cria_registro_privado: {
        type: Sequelize.BOOLEAN,
        allowNull: false
      },
      ver_registro_privado_outros: {
        type: Sequelize.BOOLEAN,
        allowNull: false
      },
      cria_comentarios: {
        type: Sequelize.BOOLEAN,
        allowNull: false
      },
      ver_usuarios: {
        type: Sequelize.BOOLEAN,
        allowNull: false
      },
      criar_usuarios: {
        type: Sequelize.BOOLEAN,
        allowNull: false
      }
    });

    return PermissoesTable;
  },

  down: async (queryInterface, Sequelize) => {
    return queryInterface.dropTable('permissoes');
  }
};
