create schema LauraCastaño_BD_SQL authorization woeapgje

-- Tabla color-coches

create table LauraCastaño_BD_SQL.color_coches(
	id_color varchar(50) not null, --PK
	nombre varchar(100) not null, 
	description varchar(512) null
);

alter table LauraCastaño_BD_SQL.color_coches
add constraint color_coches_PK primary key (id_color);

--insertar datos en color_coches

insert into LauraCastaño_BD_SQL.color_coches (id_color, nombre) values ('1','azul hielo');
insert into LauraCastaño_BD_SQL.color_coches (id_color, nombre) values ('2','rojo ultimate');
insert into LauraCastaño_BD_SQL.color_coches (id_color, nombre) values ('3','verde oliva');
insert into LauraCastaño_BD_SQL.color_coches (id_color, nombre) values ('4','amarillo faro');
insert into LauraCastaño_BD_SQL.color_coches (id_color, nombre) values ('5','azul vertigo');
insert into LauraCastaño_BD_SQL.color_coches (id_color, nombre) values ('6','negro perla');
insert into LauraCastaño_BD_SQL.color_coches (id_color, nombre) values ('7','blanco hielo');
insert into LauraCastaño_BD_SQL.color_coches (id_color, nombre) values ('8','gris artense');
insert into LauraCastaño_BD_SQL.color_coches (id_color, nombre) values ('9','rojo elixir');
insert into LauraCastaño_BD_SQL.color_coches (id_color, nombre) values ('10','blanco banquise');
insert into LauraCastaño_BD_SQL.color_coches (id_color, nombre) values ('11','blanco nacarado');
insert into LauraCastaño_BD_SQL.color_coches (id_color, nombre) values ('12','orange fushion');
insert into LauraCastaño_BD_SQL.color_coches (id_color, nombre) values ('13','gris perla');
insert into LauraCastaño_BD_SQL.color_coches (id_color, nombre) values ('14','azul ultramar');
insert into LauraCastaño_BD_SQL.color_coches (id_color, nombre) values ('15','gris platino');
insert into LauraCastaño_BD_SQL.color_coches (id_color, nombre) values ('16','blanco perla');


-- Tabla modelos

create table LauraCastaño_BD_SQL.modelos(
	id_modelo varchar(50) not null, --PK
	nombre varchar(100) not null,
	description varchar(512) null
);

alter table LauraCastaño_BD_SQL.modelos
add constraint modelos_PK primary key (id_modelo);

--insertar datos modelos

insert into LauraCastaño_BD_SQL.modelos (id_modelo, nombre) values ('1','Q5');
insert into LauraCastaño_BD_SQL.modelos (id_modelo, nombre) values ('2','SERIE8 CC');
insert into LauraCastaño_BD_SQL.modelos (id_modelo, nombre) values ('3','CX3');
insert into LauraCastaño_BD_SQL.modelos (id_modelo, nombre) values ('4','A180');
insert into LauraCastaño_BD_SQL.modelos (id_modelo, nombre) values ('5','SPORTAGE');
insert into LauraCastaño_BD_SQL.modelos (id_modelo, nombre) values ('6','LEON');
insert into LauraCastaño_BD_SQL.modelos (id_modelo, nombre) values ('7','SANDERO');
insert into LauraCastaño_BD_SQL.modelos (id_modelo, nombre) values ('8','GOLF');
insert into LauraCastaño_BD_SQL.modelos (id_modelo, nombre) values ('9','IBIZA');
insert into LauraCastaño_BD_SQL.modelos (id_modelo, nombre) values ('10','GLA 220');
insert into LauraCastaño_BD_SQL.modelos (id_modelo, nombre) values ('11','POLO');
insert into LauraCastaño_BD_SQL.modelos (id_modelo, nombre) values ('12','QX55');
insert into LauraCastaño_BD_SQL.modelos (id_modelo, nombre) values ('13','MODEL 3');
insert into LauraCastaño_BD_SQL.modelos (id_modelo, nombre) values ('14','QASHQAI');
insert into LauraCastaño_BD_SQL.modelos (id_modelo, nombre) values ('15','ARONA');
insert into LauraCastaño_BD_SQL.modelos (id_modelo, nombre) values ('16','COMPASS');
insert into LauraCastaño_BD_SQL.modelos (id_modelo, nombre) values ('17','SERIE 3 ');
insert into LauraCastaño_BD_SQL.modelos (id_modelo, nombre) values ('18','A3');


--Tabla coches

create table LauraCastaño_BD_SQL.coches(
	id_coche varchar(20) not null, --PK
	id_modelo varchar(100) not null, --FK modelos()
	id_marca varchar (100) not null, 
	dt_compra date not null default '4000-01-01', 
	matricula varchar (50) not null,
	id_color varchar(50) not null, --FK color_coches()
	total_kms integer not null,
	id_seguro varchar(20) not null, 
	id_revision varchar(20) not null, 
	conductor_habitual varchar(100) not null default 'Varios'	
);


alter table LauraCastaño_BD_SQL.coches
add constraint coches_PK primary key (id_coche);

alter table LauraCastaño_BD_SQL.coches
add constraint coches_modelos_FK foreign key (id_modelo)
references LauraCastaño_BD_SQL.modelos (id_modelo);

alter table LauraCastaño_BD_SQL.coches
add constraint coches_color_FK foreign key (id_color)
references LauraCastaño_BD_SQL.color_coches (id_color);  


--insertar datos en coches

insert into LauraCastaño_BD_SQL.coches(id_coche,id_modelo, id_marca,dt_compra, matricula, id_color,total_kms, id_seguro, id_revision, conductor_habitual) values ('1','1','1','2017/01/06','2898CLX','12','143350','1','1','Maria Gimenez');
insert into LauraCastaño_BD_SQL.coches(id_coche,id_modelo, id_marca,dt_compra, matricula, id_color,total_kms, id_seguro, id_revision, conductor_habitual) values ('2','2','7','2017/01/06','2394LRX','8','13820','3','3','Sandra Poveda');
insert into LauraCastaño_BD_SQL.coches(id_coche,id_modelo, id_marca,dt_compra, matricula, id_color,total_kms, id_seguro, id_revision, conductor_habitual) values ('3','3','9','2017/01/06','0923CJS','2','38670','5','5','Andres Sandoval');
insert into LauraCastaño_BD_SQL.coches(id_coche,id_modelo, id_marca,dt_compra, matricula, id_color,total_kms, id_seguro, id_revision, conductor_habitual) values ('4','4','8','2017/01/06','2789FKJ','3','45300','7','7','');
insert into LauraCastaño_BD_SQL.coches(id_coche,id_modelo, id_marca,dt_compra, matricula, id_color,total_kms, id_seguro, id_revision, conductor_habitual) values ('5','5','10','2017/01/06','6163JJS','10','32610','9','9','Leonor Vazquez');
insert into LauraCastaño_BD_SQL.coches(id_coche,id_modelo, id_marca,dt_compra, matricula, id_color,total_kms, id_seguro, id_revision, conductor_habitual) values ('6','6','2','2017/01/06','0413ERM','11','145680','11','11','');
insert into LauraCastaño_BD_SQL.coches(id_coche,id_modelo, id_marca,dt_compra, matricula, id_color,total_kms, id_seguro, id_revision, conductor_habitual) values ('7','7','17','2017/01/06','4553MTR','16','18100','13','13','');
insert into LauraCastaño_BD_SQL.coches(id_coche,id_modelo, id_marca,dt_compra, matricula, id_color,total_kms, id_seguro, id_revision, conductor_habitual) values ('8','8','5','2017/01/06','8732EHS','2','125600','15','15','Jesus Romero');
insert into LauraCastaño_BD_SQL.coches(id_coche,id_modelo, id_marca,dt_compra, matricula, id_color,total_kms, id_seguro, id_revision, conductor_habitual) values ('9','9','2','2017/01/06','8056DAS','13','151000','17','17','Maria Jesus Losa');
insert into LauraCastaño_BD_SQL.coches(id_coche,id_modelo, id_marca,dt_compra, matricula, id_color,total_kms, id_seguro, id_revision, conductor_habitual) values ('10','10','8','2017/01/06','7324CMS','11','175980','18','18','');
insert into LauraCastaño_BD_SQL.coches(id_coche,id_modelo, id_marca,dt_compra, matricula, id_color,total_kms, id_seguro, id_revision, conductor_habitual) values ('11','11','5','2017/01/06','6781MNR','7','13257','2','2','Andrea Hernan');
insert into LauraCastaño_BD_SQL.coches(id_coche,id_modelo, id_marca,dt_compra, matricula, id_color,total_kms, id_seguro, id_revision, conductor_habitual) values ('12','12','14','2017/01/06','1205LAT','2','17201','4','4','Jorge Lorenzo');
insert into LauraCastaño_BD_SQL.coches(id_coche,id_modelo, id_marca,dt_compra, matricula, id_color,total_kms, id_seguro, id_revision, conductor_habitual) values ('13','13','13','2017/01/06','3489KLS','10','26802','6','6','Ismael Sanz');
insert into LauraCastaño_BD_SQL.coches(id_coche,id_modelo, id_marca,dt_compra, matricula, id_color,total_kms, id_seguro, id_revision, conductor_habitual) values ('14','14','16','2017/01/06','5689KKP','7','135680','8','8','');
insert into LauraCastaño_BD_SQL.coches(id_coche,id_modelo, id_marca,dt_compra, matricula, id_color,total_kms, id_seguro, id_revision, conductor_habitual) values ('15','15','2','2017/01/06','2397DMW','2','113070','10','10','Alicia Pet');
insert into LauraCastaño_BD_SQL.coches(id_coche,id_modelo, id_marca,dt_compra, matricula, id_color,total_kms, id_seguro, id_revision, conductor_habitual) values ('16','16','12','2017/01/06','1711LCP','13','3584','12','12','');
insert into LauraCastaño_BD_SQL.coches(id_coche,id_modelo, id_marca,dt_compra, matricula, id_color,total_kms, id_seguro, id_revision, conductor_habitual) values ('17','17','7','2017/01/06','3467DCA','3','120540','14','14','Luisa Gala');
insert into LauraCastaño_BD_SQL.coches(id_coche,id_modelo, id_marca,dt_compra, matricula, id_color,total_kms, id_seguro, id_revision, conductor_habitual) values ('18','18','1','2017/01/06','2790EEH','7','158400','16','16','');


--tabla marcas

create table LauraCastaño_BD_SQL.marcas(
	id_marca varchar(20) not null, --PK, FK nombre_marca()
	id_coche varchar(20) not null, --PK, FK coches()
	id_grupo_empresarial varchar(100), 
	nombre_marca varchar(100) not null
);

alter table LauraCastaño_BD_SQL.marcas
add constraint marcas_PK primary key (id_marca, id_coche);

alter table LauraCastaño_BD_SQL.marcas
add constraint marcas_coches_FK foreign key (id_coche)
references LauraCastaño_BD_SQL.coches (id_coche);


--insertar datos de marcas

insert into LauraCastaño_BD_SQL.marcas (id_marca, id_coche, id_grupo_empresarial,nombre_marca) values ('1','1','1','AUDI');
insert into LauraCastaño_BD_SQL.marcas (id_marca, id_coche, id_grupo_empresarial,nombre_marca) values ('7','2','2','MINI');
insert into LauraCastaño_BD_SQL.marcas (id_marca, id_coche, id_grupo_empresarial,nombre_marca) values ('9','3','12','MAZDA');
insert into LauraCastaño_BD_SQL.marcas (id_marca, id_coche, id_grupo_empresarial,nombre_marca) values ('8','4','3','MERCEDES BENZ');
insert into LauraCastaño_BD_SQL.marcas (id_marca, id_coche, id_grupo_empresarial,nombre_marca) values ('10','5','10','KIA');
insert into LauraCastaño_BD_SQL.marcas (id_marca, id_coche, id_grupo_empresarial,nombre_marca) values ('2','6','1','SEAT');
insert into LauraCastaño_BD_SQL.marcas (id_marca, id_coche, id_grupo_empresarial,nombre_marca) values ('17','7','11','INFINITY');
insert into LauraCastaño_BD_SQL.marcas (id_marca, id_coche, id_grupo_empresarial,nombre_marca) values ('5','8','1','VOLKSWAGEN');
insert into LauraCastaño_BD_SQL.marcas (id_marca, id_coche, id_grupo_empresarial,nombre_marca) values ('2','9','1','SEAT');
insert into LauraCastaño_BD_SQL.marcas (id_marca, id_coche, id_grupo_empresarial,nombre_marca) values ('8','10','3','MERCEDES BENZ');
insert into LauraCastaño_BD_SQL.marcas (id_marca, id_coche, id_grupo_empresarial,nombre_marca) values ('5','11','1','SEAT');
insert into LauraCastaño_BD_SQL.marcas (id_marca, id_coche, id_grupo_empresarial,nombre_marca) values ('14','12','11','NISSAN');
insert into LauraCastaño_BD_SQL.marcas (id_marca, id_coche, id_grupo_empresarial,nombre_marca) values ('13','13','5','TESLA');
insert into LauraCastaño_BD_SQL.marcas (id_marca, id_coche, id_grupo_empresarial,nombre_marca) values ('16','14','11','DACIA');
insert into LauraCastaño_BD_SQL.marcas (id_marca, id_coche, id_grupo_empresarial,nombre_marca) values ('2','15','1','VOLKSWAGEN');
insert into LauraCastaño_BD_SQL.marcas (id_marca, id_coche, id_grupo_empresarial,nombre_marca) values ('12','16','4','JEEP');
insert into LauraCastaño_BD_SQL.marcas (id_marca, id_coche, id_grupo_empresarial,nombre_marca) values ('7','17','2','BMW');
insert into LauraCastaño_BD_SQL.marcas (id_marca, id_coche, id_grupo_empresarial,nombre_marca) values ('1','18','1','AUDI');


--tabla grupo-empresarial

create table LauraCastaño_BD_SQL.grupo_empresarial(
	id_grupo_empresarial varchar(20) not null, --PK, FK
	id_coche varchar(20) not null, --PK,FK
	nombre_grupo varchar(100) not null,
	description varchar(512) null
);

alter table LauraCastaño_BD_SQL.grupo_empresarial
add constraint grupo_PK primary key (id_grupo_empresarial, id_coche);

alter table LauraCastaño_BD_SQL.grupo_empresarial
add constraint grupo_coche_FK foreign key (id_coche)
references LauraCastaño_BD_SQL.coches(id_coche);


--Insetar datos de Grupo_Empresarial

insert into LauraCastaño_BD_SQL.grupo_empresarial (id_grupo_empresarial, id_coche, nombre_grupo, description) values('1','1','VAG','');
insert into LauraCastaño_BD_SQL.grupo_empresarial (id_grupo_empresarial, id_coche, nombre_grupo, description) values('2','2','BMW GROUP','');
insert into LauraCastaño_BD_SQL.grupo_empresarial (id_grupo_empresarial, id_coche, nombre_grupo, description) values('12','3','JTS BANK','');
insert into LauraCastaño_BD_SQL.grupo_empresarial (id_grupo_empresarial, id_coche, nombre_grupo, description) values('3','4','DAIMER','');
insert into LauraCastaño_BD_SQL.grupo_empresarial (id_grupo_empresarial, id_coche, nombre_grupo, description) values('10','5','HYUNDAI','');
insert into LauraCastaño_BD_SQL.grupo_empresarial (id_grupo_empresarial, id_coche, nombre_grupo, description) values('1','6','VAG','');
insert into LauraCastaño_BD_SQL.grupo_empresarial (id_grupo_empresarial, id_coche, nombre_grupo, description) values('11','7','RENAULT_NISSAN','');
insert into LauraCastaño_BD_SQL.grupo_empresarial (id_grupo_empresarial, id_coche, nombre_grupo, description) values('1','8','VAG','');
insert into LauraCastaño_BD_SQL.grupo_empresarial (id_grupo_empresarial, id_coche, nombre_grupo, description) values('1','9','VAG','');
insert into LauraCastaño_BD_SQL.grupo_empresarial (id_grupo_empresarial, id_coche, nombre_grupo, description) values('3','10','DAIMER','');
insert into LauraCastaño_BD_SQL.grupo_empresarial (id_grupo_empresarial, id_coche, nombre_grupo, description) values('1','11','VAG','');
insert into LauraCastaño_BD_SQL.grupo_empresarial (id_grupo_empresarial, id_coche, nombre_grupo, description) values('11','12','RENAULT_NISSAN','');
insert into LauraCastaño_BD_SQL.grupo_empresarial (id_grupo_empresarial, id_coche, nombre_grupo, description) values('5','13','FERRARI','');
insert into LauraCastaño_BD_SQL.grupo_empresarial (id_grupo_empresarial, id_coche, nombre_grupo, description) values('11','14','RENAULT_NISSAN','');
insert into LauraCastaño_BD_SQL.grupo_empresarial (id_grupo_empresarial, id_coche, nombre_grupo, description) values('1','15','VAG','');
insert into LauraCastaño_BD_SQL.grupo_empresarial (id_grupo_empresarial, id_coche, nombre_grupo, description) values('4','16','FCA','');
insert into LauraCastaño_BD_SQL.grupo_empresarial (id_grupo_empresarial, id_coche, nombre_grupo, description) values('2','17','BMW GROUP','');
insert into LauraCastaño_BD_SQL.grupo_empresarial (id_grupo_empresarial, id_coche, nombre_grupo, description) values('1','18','VAG','');


update LauraCastaño_BD_SQL.grupo_empresarial
set nombre_grupo = 'TESLA'
where nombre_grupo = 'FERRARI';

update LauraCastaño_BD_SQL.grupo_empresarial
set nombre_grupo = 'MAZDA MOTORS'
where nombre_grupo = 'JTS BANK';


--tabla revisiones-coches 

create table LauraCastaño_BD_SQL.revisiones_coches(
	id_revision varchar(20) not null, --PK,FK
	id_coche varchar(20) not null, --PK,FK
	dt_revision date not null default '4000-01-01',
	kms_ultima_revision varchar(50) not null default '0000',
	precio_revision decimal(20) not null default '0000',
	id_moneda varchar(20) not null default '1', --FK monedas()
	notas varchar(512) null
);

alter table LauraCastaño_BD_SQL.revisiones_coches
add constraint revisiones_PK primary key (id_revision, id_coche);

alter table LauraCastaño_BD_SQL.revisiones_coches
add constraint revisiones_coches_FK foreign key (id_coche)
references LauraCastaño_BD_SQL.coches(id_coche);

alter table LauraCastaño_BD_SQL.revisiones_coches 
add constraint revisiones_moneda_rev_FK foreign key (id_moneda)
references LauraCastaño_BD_SQL.monedas_revisiones(id_moneda);


--insertar datos revisiones_coches

insert into LauraCastaño_BD_SQL.revisiones_coches (id_revision, id_coche, dt_revision, kms_ultima_revision, precio_revision, id_moneda, notas) values('1','1','2022-02-02','47000','54.00','1','falta filtro aire');
insert into LauraCastaño_BD_SQL.revisiones_coches (id_revision, id_coche, dt_revision, kms_ultima_revision, precio_revision, id_moneda, notas) values('2','11','4000-01-01','','0','','');
insert into LauraCastaño_BD_SQL.revisiones_coches (id_revision, id_coche, dt_revision, kms_ultima_revision, precio_revision, id_moneda, notas) values('3','2','2022-02-02','97000','45.3','1','');
insert into LauraCastaño_BD_SQL.revisiones_coches (id_revision, id_coche, dt_revision, kms_ultima_revision, precio_revision, id_moneda, notas) values('4','12','4000-01-01','','0','','');
insert into LauraCastaño_BD_SQL.revisiones_coches (id_revision, id_coche, dt_revision, kms_ultima_revision, precio_revision, id_moneda, notas) values('5','3','2022-03-04','145000','32.23','1','correa distribucion');
insert into LauraCastaño_BD_SQL.revisiones_coches (id_revision, id_coche, dt_revision, kms_ultima_revision, precio_revision, id_moneda, notas) values('6','13','4000-01-01','','0','','');
insert into LauraCastaño_BD_SQL.revisiones_coches (id_revision, id_coche, dt_revision, kms_ultima_revision, precio_revision, id_moneda, notas) values('7','4','2022-05-08','147000','37.3','1','correa distribucion');
insert into LauraCastaño_BD_SQL.revisiones_coches (id_revision, id_coche, dt_revision, kms_ultima_revision, precio_revision, id_moneda, notas) values('8','14','2022-05-08','153000','36.1','1','correa distribucion');
insert into LauraCastaño_BD_SQL.revisiones_coches (id_revision, id_coche, dt_revision, kms_ultima_revision, precio_revision, id_moneda, notas) values('9','5','2021-12-17','52000','43.12','1','falta filtro aire');
insert into LauraCastaño_BD_SQL.revisiones_coches (id_revision, id_coche, dt_revision, kms_ultima_revision, precio_revision, id_moneda, notas) values('10','15','2021-12-17','48000','48.00','1','falta filtro aire');
insert into LauraCastaño_BD_SQL.revisiones_coches (id_revision, id_coche, dt_revision, kms_ultima_revision, precio_revision, id_moneda, notas) values('11','6','2022-03-04','102000','34.5','1','');
insert into LauraCastaño_BD_SQL.revisiones_coches (id_revision, id_coche, dt_revision, kms_ultima_revision, precio_revision, id_moneda, notas) values('12','16','2022-04-03','100230','0','','');
insert into LauraCastaño_BD_SQL.revisiones_coches (id_revision, id_coche, dt_revision, kms_ultima_revision, precio_revision, id_moneda, notas) values('13','7','2022-08-05','110500','32.12','1','');
insert into LauraCastaño_BD_SQL.revisiones_coches (id_revision, id_coche, dt_revision, kms_ultima_revision, precio_revision, id_moneda, notas) values('14','17','2021-12-17','96450','33.6','1','');
insert into LauraCastaño_BD_SQL.revisiones_coches (id_revision, id_coche, dt_revision, kms_ultima_revision, precio_revision, id_moneda, notas) values('15','8','4000-01-01','','0','','');
insert into LauraCastaño_BD_SQL.revisiones_coches (id_revision, id_coche, dt_revision, kms_ultima_revision, precio_revision, id_moneda, notas) values('16','18','4000-01-01','','0','','');
insert into LauraCastaño_BD_SQL.revisiones_coches (id_revision, id_coche, dt_revision, kms_ultima_revision, precio_revision, id_moneda, notas) values('17','9','2022-02-02','104000','37.00','1','');
insert into LauraCastaño_BD_SQL.revisiones_coches (id_revision, id_coche, dt_revision, kms_ultima_revision, precio_revision, id_moneda, notas) values('18','10','2022-03-04','102007','39.00','1','');

update LauraCastaño_BD_SQL.revisiones_coches
set id_moneda = '1'
where id_moneda = '0';


--tabla seguros-coches 

create table LauraCastaño_BD_SQL.seguros_coches(
	id_seguro varchar(20) not null, --PK, FK 
	id_coche varchar(20) not null, --PK,FK
	nombre_aseguradora varchar (100) not null,
	num_poliza varchar (50) not null,
	precio_seguro decimal(10) not null default '000.00',
	id_moneda varchar(20) not null default 'moneda', --FK monedas_seguros()
	description varchar(512) null
);

alter table LauraCastaño_BD_SQL.seguros_coches
add constraint seguros_PK primary key (id_seguro, id_coche);

alter table LauraCastaño_BD_SQL.seguros_coches
add constraint seguros_coches_FK foreign key (id_coche)
references LauraCastaño_BD_SQL.coches(id_coche); 

alter table LauraCastaño_BD_SQL.seguros_coches
add constraint id_moneda_seguro_FK foreign key (id_moneda)
references LauraCastaño_BD_SQL.monedas(id_moneda);

--insertar datos seguros-coches 

insert into LauraCastaño_BD_SQL.seguros_coches (id_seguro, id_coche, nombre_aseguradora, num_poliza, precio_seguro, id_moneda, description) values('1','1','MAPHRE','43/287543','540','1','');
insert into LauraCastaño_BD_SQL.seguros_coches (id_seguro, id_coche, nombre_aseguradora, num_poliza, precio_seguro, id_moneda, description) values('2','11','MAPHRE','43/730467','370.4','1','');
insert into LauraCastaño_BD_SQL.seguros_coches (id_seguro, id_coche, nombre_aseguradora, num_poliza, precio_seguro, id_moneda, description) values('3','2','LINEA DIRECTA','23/114528','215.3','1','');
insert into LauraCastaño_BD_SQL.seguros_coches (id_seguro, id_coche, nombre_aseguradora, num_poliza, precio_seguro, id_moneda, description) values('4','12','MUTUA MADRILEÑA','14/123456','325.6','1','grúa pinchazo');
insert into LauraCastaño_BD_SQL.seguros_coches (id_seguro, id_coche, nombre_aseguradora, num_poliza, precio_seguro, id_moneda, description) values('5','3','LIBERTY','23/876543','326.23','1','');
insert into LauraCastaño_BD_SQL.seguros_coches (id_seguro, id_coche, nombre_aseguradora, num_poliza, precio_seguro, id_moneda, description) values('6','13','PENELOPE','53/843285','212.15','1','parte pintura');
insert into LauraCastaño_BD_SQL.seguros_coches (id_seguro, id_coche, nombre_aseguradora, num_poliza, precio_seguro, id_moneda, description) values('7','4','CATALANA OCCIDENTE','43/823756','375.3','1','');
insert into LauraCastaño_BD_SQL.seguros_coches (id_seguro, id_coche, nombre_aseguradora, num_poliza, precio_seguro, id_moneda, description) values('8','14','AXA','23/987653','236.1','1','');
insert into LauraCastaño_BD_SQL.seguros_coches (id_seguro, id_coche, nombre_aseguradora, num_poliza, precio_seguro, id_moneda, description) values('9','5','GENERALI','14/982345','430.12','1','');
insert into LauraCastaño_BD_SQL.seguros_coches (id_seguro, id_coche, nombre_aseguradora, num_poliza, precio_seguro, id_moneda, description) values('10','15','MAPHRE','23/984235','480','1','multa tráfico');
insert into LauraCastaño_BD_SQL.seguros_coches (id_seguro, id_coche, nombre_aseguradora, num_poliza, precio_seguro, id_moneda, description) values('11','6','LINEA DIRECTA','50/973578','345','1','');
insert into LauraCastaño_BD_SQL.seguros_coches (id_seguro, id_coche, nombre_aseguradora, num_poliza, precio_seguro, id_moneda, description) values('12','16','ALLIANZ','43/843571','645.7','1','');
insert into LauraCastaño_BD_SQL.seguros_coches (id_seguro, id_coche, nombre_aseguradora, num_poliza, precio_seguro, id_moneda, description) values('13','7','MUTUA MADRILEÑA','23/1287654','320.12','1','parte choque');
insert into LauraCastaño_BD_SQL.seguros_coches (id_seguro, id_coche, nombre_aseguradora, num_poliza, precio_seguro, id_moneda, description) values('14','17','LINEA DIRECTA','43/9834573','336','1','');
insert into LauraCastaño_BD_SQL.seguros_coches (id_seguro, id_coche, nombre_aseguradora, num_poliza, precio_seguro, id_moneda, description) values('15','8','MUTUA MADRILEÑA','12/8754356','256','1','multa aparcamiento');
insert into LauraCastaño_BD_SQL.seguros_coches (id_seguro, id_coche, nombre_aseguradora, num_poliza, precio_seguro, id_moneda, description) values('16','18','LINEA DIRECTA','23/874325','258.9','1','');
insert into LauraCastaño_BD_SQL.seguros_coches (id_seguro, id_coche, nombre_aseguradora, num_poliza, precio_seguro, id_moneda, description) values('17','9','PENELOPE','23/876432','237','1','');
insert into LauraCastaño_BD_SQL.seguros_coches (id_seguro, id_coche, nombre_aseguradora, num_poliza, precio_seguro, id_moneda, description) values('18','10','AXA','12/865290','390.2','1','');


--tabla monedas seguros

create table LauraCastaño_BD_SQL.monedas(
	id_moneda varchar(20) not null, --PK
	nombre varchar (50) not null,
	description varchar(512) null
);

alter table LauraCastaño_BD_SQL.monedas
add constraint monedas_PK primary key (id_moneda);

--Insetar datos de monedas

insert into LauraCastaño_BD_SQL.monedas (id_moneda, nombre)
values ('1','EUR');
insert into LauraCastaño_BD_SQL.monedas (id_moneda, nombre)
values ('2','USD');
insert into LauraCastaño_BD_SQL.monedas (id_moneda, nombre)
values ('3','JPY');
insert into LauraCastaño_BD_SQL.monedas (id_moneda, nombre)
values ('4','GBP');
insert into LauraCastaño_BD_SQL.monedas (id_moneda, nombre)
values ('5','AUD');
insert into LauraCastaño_BD_SQL.monedas (id_moneda, nombre)
values ('6','CAD');
insert into LauraCastaño_BD_SQL.monedas (id_moneda, nombre)
values ('7','CHF');
insert into LauraCastaño_BD_SQL.monedas (id_moneda, nombre)
values ('8','CNH');
insert into LauraCastaño_BD_SQL.monedas (id_moneda, nombre)
values ('9','HKD');
insert into LauraCastaño_BD_SQL.monedas (id_moneda, nombre)
values ('10','NZD');


--tabla monedas revisiones

create table LauraCastaño_BD_SQL.monedas_revisiones(
	id_moneda varchar(20) not null, --PK
	nombre varchar (50) not null,
	description varchar(512) null
);

alter table LauraCastaño_BD_SQL.monedas_revisiones
add constraint monedas_revisiones_PK primary key (id_moneda);

--Insetar datos de monedas

insert into LauraCastaño_BD_SQL.monedas_revisiones (id_moneda, nombre)
values ('1','EUR');
insert into LauraCastaño_BD_SQL.monedas_revisiones (id_moneda, nombre)
values ('2','USD');
insert into LauraCastaño_BD_SQL.monedas_revisiones (id_moneda, nombre)
values ('3','JPY');
insert into LauraCastaño_BD_SQL.monedas_revisiones (id_moneda, nombre)
values ('4','GBP');
insert into LauraCastaño_BD_SQL.monedas_revisiones (id_moneda, nombre)
values ('5','AUD');
insert into LauraCastaño_BD_SQL.monedas_revisiones (id_moneda, nombre)
values ('6','CAD');
insert into LauraCastaño_BD_SQL.monedas_revisiones (id_moneda, nombre)
values ('7','CHF');
insert into LauraCastaño_BD_SQL.monedas_revisiones (id_moneda, nombre)
values ('8','CNH');
insert into LauraCastaño_BD_SQL.monedas_revisiones (id_moneda, nombre)
values ('9','HKD');
insert into LauraCastaño_BD_SQL.monedas_revisiones (id_moneda, nombre)
values ('10','NZD');


