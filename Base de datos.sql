create database transporte;
use transporte;
create table conductor(
id_conductor int auto_increment primary key not null, 
Nombre varchar (255) not null,
edad tinyint not null,
correo varchar (255) unique not null,
telefono bigint unique not null,
num_doc bigint unique  not null
);
create table ruta(
id_ruta int primary key auto_increment,
nombre_ruta varchar(255),
num_paradas int not null 
);
create table bus(
placa char (6) primary key not null,
modelo varchar (255) not null,
ruedas tinyint unsigned not null,
puertas tinyint unsigned not null,
num_pasajeros tinyint unsigned not null,
conductor int not null,
foreign key (conductor)references conductor(id_conductor),
ruta int,
foreign key (ruta) references ruta(id_ruta)
);

create table horario(
id_horario int primary key auto_increment,
conductor int not null,
foreign key (conductor)references conductor(id_conductor),
num_horas tinyint not null,
jornada enum ("Diurna","Nocturna"),
dias_trabaja varchar (255) not null,
Hora_salida varchar (255) not null,
horario_bus char(6)not null,
foreign key (horario_bus)references bus(placa)
);

/*CONDUCTOR*/
insert into conductor (Nombre,edad,correo,telefono,num_doc) values ("David",35,"davidrami13@gmail.com",350645231,1031689622);
insert into conductor (Nombre,edad,correo,telefono,num_doc) values ("Juan",32,"juandavid06@gmail.com",3504562345,1045986311);
insert into conductor (Nombre,edad,correo,telefono,num_doc) values ("Fernando",22,"fernandoville@soy.sena.edu.co",3208434858,41628398);
insert into conductor (Nombre,edad,correo,telefono,num_doc) values ("Daniel",23,"danielfer@gmail.com",310645231,1045625996);
insert into conductor (Nombre,edad,correo,telefono,num_doc) values ("Michel",42,"michel11@gmail.com",3057896332,1031456332);
insert into conductor (Nombre,edad,correo,telefono,num_doc) values ("Oscar",19,"oscar14@gmail.com",31011235456,1097856312);
insert into conductor (Nombre,edad,correo,telefono,num_doc) values ("Santiago",42,"SANTIAGO11@gmail.com",3205698321,1031548996);
insert into conductor (Nombre,edad,correo,telefono,num_doc) values ("Miguel",24,"miguel45@hotmail.com",7590182,4563115200);
insert into conductor (Nombre,edad,correo,telefono,num_doc) values ("Julian",20,"juli1306@gmail.com",3508010097,1031646772);
insert into conductor (Nombre,edad,correo,telefono,num_doc) values ("Julian",23,"rubio2@gmail.com",3136589772,47896093);
select * from conductor;
/*RUTA*/
insert into ruta (nombre_ruta,num_paradas) values ("Fontibon",30);
insert into ruta (nombre_ruta,num_paradas) values ("Aures",12);
insert into ruta (nombre_ruta,num_paradas) values ("Metrovivienda",25);
insert into ruta (nombre_ruta,num_paradas) values ("Bosa",50);
insert into ruta (nombre_ruta,num_paradas) values ("Usme",33);
insert into ruta (nombre_ruta,num_paradas) values ("Chapinero",26);
insert into ruta (nombre_ruta,num_paradas) values ("Centro",45);
insert into ruta (nombre_ruta,num_paradas) values ("Gaitana",30);
insert into ruta (nombre_ruta,num_paradas) values ("Aereopuerto",30);
insert into ruta (nombre_ruta,num_paradas) values ("Villemar",30);
select * from ruta;
/*BUS*/
insert into bus (placa,modelo,ruedas,puertas,num_pasajeros,conductor,ruta) values ("LAS987","chevolet",4,2,64,4,4);
insert into bus (placa,modelo,ruedas,puertas,num_pasajeros,conductor,ruta) values ("WER213","chevolet",4,2,64,6,2);
insert into bus (placa,modelo,ruedas,puertas,num_pasajeros,conductor,ruta) values ("OKL825","chevolet",4,2,64,2,2);
insert into bus (placa,modelo,ruedas,puertas,num_pasajeros,conductor,ruta) values ("UJI458","chevolet",4,2,64,6,6);
insert into bus (placa,modelo,ruedas,puertas,num_pasajeros,conductor,ruta) values ("JUL130","chevolet",4,2,64,9,7);
insert into bus (placa,modelo,ruedas,puertas,num_pasajeros,conductor,ruta) values ("IOU336","chevolet",4,2,64,1,1);
insert into bus (placa,modelo,ruedas,puertas,num_pasajeros,conductor,ruta) values ("PRT455","chevolet",4,2,64,5,2);
insert into bus (placa,modelo,ruedas,puertas,num_pasajeros,conductor,ruta) values ("ERT287","chevolet",4,2,64,7,8);
insert into bus (placa,modelo,ruedas,puertas,num_pasajeros,conductor,ruta) values ("QRX122","chevolet",4,2,64,2,9);
insert into bus (placa,modelo,ruedas,puertas,num_pasajeros,conductor,ruta) values ("ÑOL322","chevolet",4,2,64,3,3);
select * from bus;
/*HORARIO*/
insert into horario (conductor,num_horas,jornada,dias_trabaja,Hora_salida,horario_bus) values (6,8,"Diurna","Lunes-viernes","7:20 am","WER213");
insert into horario (conductor,num_horas,jornada,dias_trabaja,Hora_salida,horario_bus) values (5,8,"Diurna","Lunes-viernes","5:20am","ERT287");
insert into horario (conductor,num_horas,jornada,dias_trabaja,Hora_salida,horario_bus) values (3,6,"Nocturna","Lunes-Sabado","7:00pm","PRT455");
insert into horario (conductor,num_horas,jornada,dias_trabaja,Hora_salida,horario_bus) values (6,5,"Diurna","Lunes-Domingo","6:00am","QRX122");
insert into horario (conductor,num_horas,jornada,dias_trabaja,Hora_salida,horario_bus) values (7,5,"Nocturna","Lunes-Domingo","6:00pm","IOU336");
insert into horario (conductor,num_horas,jornada,dias_trabaja,Hora_salida,horario_bus) values (9,6,"Diurna","Lunes-Viernes","5:00am","JUL130");
insert into horario (conductor,num_horas,jornada,dias_trabaja,Hora_salida,horario_bus) values (9,7,"Nocturna","Lunes-Viernes","8:00pm","ÑOL322");
insert into horario (conductor,num_horas,jornada,dias_trabaja,Hora_salida,horario_bus) values (1,7,"Nocturna","Lunes-Miercoles","7:00pm","ÑOL322");
insert into horario (conductor,num_horas,jornada,dias_trabaja,Hora_salida,horario_bus) values (2,7,"Nocturna","Lunes-Domingo","8:00pm","UJI458");
insert into horario (conductor,num_horas,jornada,dias_trabaja,Hora_salida,horario_bus) values (1,6,"Diurna","Domingo-Miercoles","5:00am","PRT455");
select * from horario;
/*Conductor*/
select id_conductor as id, Nombre as nombre,edad as Edad,correo as Correo, telefono as Telefono, num_doc as Numero_Documento From conductor; 
select * from conductor limit 5;
select count(*) from conductor where id_conductor=2 or id_conductor=4 or id_conductor=6 or id_conductor=8 or id_conductor=0;
select * from conductor inner join bus;
/*Horario*/
select id_horario as Id, conductor as Conductor, num_horas as Numero_horas, jornada as Jornada,dias_trabaja as Dias_que_trabaja from horario;
select * from horario limit 5;
select count(*) from horario where id_horario=2 or id_horario=4 or id_horario=6 or id_horario=8 or id_horario=0;
select * from horario inner join conductor;
/*Ruta*/
select id_ruta as Id, nombre_ruta as Nombre_Ruta, num_paradas as Paradas from ruta;
select * from ruta limit 5;
select count(*) from ruta where id_ruta=2 or id_ruta=4 or id_ruta=6 or id_ruta=8 or id_ruta=0;
select * from ruta inner join bus;
/*BUS*/
select placa as Placa, modelo as Modelo,ruedas as Ruedas, puertas as Puertas,num_pasajeros as Pasajeros,conductor as Conductor,ruta as Ruta from bus;
select * from bus limit 5;
select count(*) from ruta where placa="ÑOL322";
select * from bus inner join conductor;























