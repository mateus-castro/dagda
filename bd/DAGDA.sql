create database dagda;
use dagda;

create table monitores (
	idMonitor int primary key auto_increment,
    cnpj char(14),
    razaoSocial varchar(40),
    telFixo char(9),
    telCel char(11),
    login varchar(30),
    senha varchar(30)
);

create table chama (
	fkMonitor int,
	fkResponsavel int,
    primary key(fkMonitor, fkResponsavel),
	dataOcorrencia date,
    foreign key(fkMonitor) references monitores(idMonitor),
    foreign key(fkResponsavel) references responsaveisTecnico(idResponsavel)
);

create table responsaveisTecnicos (
	idResponsavel int auto_increment,
    cpf char(11),
    nomeUsuario varchar(40),
    telFixo char(9),
    telCel char(11)
);

create table arruma (
	fkResponsavel int,
	fkTrafo int,
    primary key(fkTrafo, fkResponsavel),
    dataOcorrencia date,
    foreign key(fkResponsavel) references responsaveisTecnico(idResponsavel),
    foreign key(fkTrafo) references transformadores(idTrafo)
);

create table transformadores (
	fkMonitor int,
	idTrafo int primary key auto_increment,
    estado char(2) not null,
    cidade varchar(30) not null,
    bairro varchar(30) not null,
    rua varchar(30),
    foreign key(fkUsuario) references usuarios(idUsuario)
);


create table leitura (
	idLeitura int auto_increment,
    fkTrafo int,
    temperatura varchar(5),
    umidade varchar(3),
    tempoDataLeitura datetime,
    primary key(idLeitura, fkTrafo),
    foreign key(fkTrafo) references transformadores(idTrafo)
);