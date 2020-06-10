create table medidas (
	id int primary key auto_increment,
    tipo varchar(25),
    valorLido double(10,2)
);

desc medidas;
select count(id) from medidas;
select * from medidas;

delete from medidas where id < 200;