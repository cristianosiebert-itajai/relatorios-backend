const RegistroComentario = (sequelize, DataTypes) => {
    return sequelize.define('RegistroComentario', {
        registro_id: DataTypes.INTEGER,
        usuario_comentario_id: DataTypes.INTEGER,
        comentario: DataTypes.STRING,
        comentario_pai_id: DataTypes.INTEGER,
        data_comentario: DataTypes.DATE,
        ativo: DataTypes.BOOLEAN
    });
};

module.exports = RegistroComentario;