const Disciplina = (sequelize, DataTypes) => {
    return sequelize.define('Disciplina', {
        nome: DataTypes.STRING(100),
        createdAt: DataTypes.DATE,
        updatedAt: DataTypes.DATE,
        deletedAt: DataTypes.DATE,
    });
};

module.exports = Disciplina;