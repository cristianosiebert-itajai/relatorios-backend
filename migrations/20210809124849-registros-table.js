module.exports = {
  up: async (queryInterface, Sequelize) => {
    const RegistroTable = queryInterface.createTable("registros",{
      id: {
        type: Sequelize.BIGINT,
        allowNull: false,
        primaryKey: true,
        autoIncrement: true
      },
      user_id: {
        type: Sequelize.STRING(100),
        allowNull: false
      },
      tipo_registro: {
        type: Sequelize.INTEGER,
        allowNull: false
      },
      disciplina: {
        type: Sequelize.INTEGER,
        allowNull: true
      },
      disciplina_titulo: {
        type: Sequelize.TEXT,
        allowNull: true
      },
      turma: {
        type: Sequelize.INTEGER,
        allowNull: true
      },
      data_inicio: {
        type: Sequelize.DATE,
        allowNull: false
      },
      data_fim: {
        type: Sequelize.DATE,
        allowNull: false
      },
      is_em_sala: {
        type: Sequelize.BOOLEAN,
        allowNull: true
      },
      local: {
        type: Sequelize.STRING(255),
        allowNull: true
      },
      descricao: {
        type: Sequelize.TEXT,
        allowNull: false
      },
      turno: {
        type: Sequelize.INTEGER,
        allowNull: false
      },
      visibilidade: {
        type: Sequelize.BOOLEAN,
        allowNull: false
      },
      titulo_outro: {
        type: Sequelize.STRING(255),
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

    return RegistroTable;
  },

  down: async (queryInterface, Sequelize) => {
    return queryInterface.dropTable('registros');
  }
};
