const Permissao = (sequelize, DataTypes) => {
    var obj = sequelize.define('Permissao', {
        nome: DataTypes.STRING,
        cria_registro_publico: DataTypes.BOOLEAN,
        cria_registro_privado: DataTypes.BOOLEAN,
        ver_registro_privado_outros: DataTypes.BOOLEAN,
        cria_comentarios: DataTypes.BOOLEAN,
        ver_usuarios: DataTypes.BOOLEAN,
        criar_usuarios: DataTypes.BOOLEAN,
    },{ tableName:'permissaos' });
    return obj;
};

module.exports = Permissao;