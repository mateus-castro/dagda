'use strict';

/* 
lista e explicação dos Datatypes:
https://codewithhugo.com/sequelize-data-types-a-practical-guide/
*/

module.exports = (sequelize, DataTypes) => {
    let Usuario = sequelize.define('Usuario',{
		id: {
			field: 'idMonitor',
			type: DataTypes.INTEGER,
			primaryKey: true,
			autoIncrement: true
		},
		loginUsuario: {
			field: 'cnpj',
			type: DataTypes.INTEGER
		},		
		razaoSocial: {
			field: 'razaoSocial',
			type: DataTypes.STRING,
			allowNull: false
		},
		telFixo: {
			field: 'telFixo',
			type: DataTypes.STRING,
			allowNull: false
		},
		telCel: {
			field: 'telCel',
			type: DataTypes.STRING,
			allowNull: false
		},
		login: {
			field: 'login',
			type: DataTypes.STRING,
			allowNull: false
		},
		senha: {
			field: 'senha',
			type: DataTypes.STRING,
			allowNull: false
		}
	}, 
	{
		tableName: 'monitores', 
		freezeTableName: true, 
		underscored: true,
		timestamps: false,
	});

    return Usuario;
};
