create table monitores (
	idMonitor int primary key auto_increment, /*identity*/
    cnpj char(14),
    razaoSocial varchar(40),
    telFixo char(9),
    telCel char(11),
    login varchar(30),
    senha varchar(30)
);
 
 create table transformadores (
	idTrafo int primary key auto_increment, /*identity*/
    fkMonitor int,
    foreign key(fkMonitor) references monitores(idMonitor),
    estado char(2),
    cidade varchar(30),
    bairro varchar(40),
    rua varchar(30)
 );

create table responsaveisTecnicos (
	idResponsavel int primary key auto_increment, /*identity*/
    cpf char(11),
    nomeUsuario varchar(40),
    telFixo char(9),
    telCel char(11)
);


create table arruma (
    idArruma int primary key auto_increment, /*identity*/
	fkResponsavel int,
	fkTrafo int,
    dataOcorrencia date,
    foreign key(fkResponsavel) references responsaveisTecnicos(idResponsavel),
    foreign key(fkTrafo) references transformadores(idTrafo)
);


create table chama (
    idChamado int primary key auto_increment, /*identity*/
	fkMonitor int,
	fkResponsavel int,
	dataOcorrencia date,
    foreign key(fkMonitor) references monitores(idMonitor),
    foreign key(fkResponsavel) references responsaveisTecnico(idResponsavel)
);


create table leitura (
	idLeitura int primary key auto_increment, /*identity*/
    fkTrafo int,
    temperatura decimal(11,2),
    umidade decimal(11,2),
    tempoDataLeitura datetime,
    foreign key(fkTrafo) references transformadores(idTrafo)
);