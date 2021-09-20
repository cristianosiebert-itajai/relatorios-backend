const Usuario = (sequelize, DataTypes) => {
    return sequelize.define('Usuario', {
        google_id: DataTypes.STRING,
        nome: DataTypes.STRING,
        email: DataTypes.STRING,
        foto: DataTypes.STRING,
        ativo: DataTypes.BOOLEAN,
        permissao: DataTypes.INTEGER
    },{ tableName:'usuarios' });
};

module.exports = Usuario;