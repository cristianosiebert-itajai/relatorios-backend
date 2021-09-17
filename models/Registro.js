const Registro = (sequelize, DataTypes) => {
    const obj = sequelize.define(
        'Registro', {
        user_id: DataTypes.STRING,
        tipo_registro: DataTypes.INTEGER,
        disciplina: DataTypes.INTEGER,
        disciplina_titulo: DataTypes.STRING,
        turma: DataTypes.INTEGER,
        data_inicio: DataTypes.DATE,
        data_fim: DataTypes.DATE,
        is_em_sala: DataTypes.BOOLEAN,
        local: DataTypes.STRING,
        descricao: DataTypes.STRING,
        turno: DataTypes.INTEGER,
        visibilidade: DataTypes.BOOLEAN,
        titulo_outro: DataTypes.BOOLEAN,
        createdAt: DataTypes.DATE,
        updatedAt: DataTypes.DATE,
        deletedAt: DataTypes.DATE,
        createdBy: DataTypes.BIGINT,
        updatedBy: DataTypes.BIGINT,
        deletedBy: DataTypes.BIGINT,
    });
    return obj;
};

module.exports = Registro;