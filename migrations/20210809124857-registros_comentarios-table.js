module.exports = {
  up: async (queryInterface, Sequelize) => {
    const RegistroComentariosTable = queryInterface.createTable("registrocomentarios",{
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
      usuario_comentario_id: {
        type: Sequelize.INTEGER,
        allowNull: true
      },
      comentario: {
        type: Sequelize.TEXT,
        allowNull: false
      },
      comentario_pai_id: {
        type: Sequelize.INTEGER,
        allowNull: true
      },
      data_comentario: {
        type: Sequelize.DATE,
        allowNull: false
      },
      ativo: {
        type: Sequelize.BOOLEAN,
        allowNull: false
      }
    });

    return RegistroComentariosTable;
  },

  down: async (queryInterface, Sequelize) => {
    return queryInterface.dropTable('registrocomentarios');
  }
};
