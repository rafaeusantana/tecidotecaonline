DROP TABLE IF EXISTS suporte CASCADE; 
CREATE TABLE suporte(
id serial primary key,
nome varchar(50) not null
);

INSERT INTO suporte(id, nome) VALUES(1,'Catálogo');
INSERT INTO suporte(id, nome) VALUES(2,'Bandeira');

DROP TABLE IF EXISTS bandeira CASCADE; 
CREATE TABLE bandeira(
id serial primary key,
tipo varchar(50) not null
);

INSERT INTO bandeira(id, tipo) VALUES(1,'Malharia');
INSERT INTO bandeira(id, tipo) VALUES(2,'Tecelagem');
INSERT INTO bandeira(id, tipo) VALUES(3,'Tecnológica');

DROP TABLE IF EXISTS materia_prima CASCADE; 
CREATE TABLE materia_prima(
id serial primary key,
nome varchar(50) not null,
codificacao_internacional_tecido varchar(50)
);

DROP TABLE IF EXISTS ligamento CASCADE; 
CREATE TABLE ligamento(
id serial primary key,
tipo varchar(50) not null
);

DROP TABLE IF EXISTS padronagem_design CASCADE; 
CREATE TABLE padronagem_design(
id serial primary key,
tipo varchar(50) not null
);

DROP TABLE IF EXISTS colecao CASCADE; 
CREATE TABLE colecao(
id serial primary key,
nome_colecao varchar(100) not null,
ano_colecao date,
fabricante_id int references fabricante
);

DROP TABLE IF EXISTS fabricante CASCADE; 
CREATE TABLE fabricante(
id serial primary key,
nome varchar(100) not null,
estado char(2),
cidade varchar(100),
endereco varchar(150),
pais varchar(100),
site varchar(100),
email varchar(100)
);

DROP TABLE IF EXISTS faixa_etaria CASCADE; 
CREATE TABLE faixa_etaria (
id serial primary key,
nome varchar(50) not null
);

DROP TABLE IF EXISTS tipo_material CASCADE; 
CREATE TABLE tipo_material (
id serial primary key,
nome varchar(50) not null
);

DROP TABLE IF EXISTS fio_titulo CASCADE; 
CREATE TABLE fio_titulo (
id serial primary key,
tipo varchar(50) not null
);

DROP TABLE IF EXISTS uso_tecido CASCADE; 
CREATE TABLE uso_tecido (
id serial primary key,
tipo varchar(50) not null
);

DROP TABLE IF EXISTS cor CASCADE; 
CREATE TABLE cor (
id serial primary key,
nome varchar(50) not null
);

DROP TABLE IF EXISTS tecnica_design CASCADE; 
CREATE TABLE tecnica_design (
id serial primary key,
nome varchar(50) not null
);

DROP TABLE IF EXISTS acabamento CASCADE; 
CREATE TABLE acabamento (
id serial primary key,
tipo varchar(50) not null
);

DROP TABLE IF EXISTS textura CASCADE; 
CREATE TABLE textura (
id serial primary key,
tipo varchar(50) not null
);

DROP TABLE IF EXISTS item CASCADE; 
CREATE TABLE item(
id serial primary key,
suporte_id int references suporte,
localizacao varchar(6) not null,
nome_aquisicao varchar(50),
data_aquisicao date, --traduzir formato da base atual
fabricante_id int references fabricante,
colecao_id int references colecao,
especificacoes varchar(500),
-- exclusivos de catalogo
peca_vestuario varchar(50), -- isso apenas foi citado na documentacao mas nao foi encontrado nos dados
tamanho_catalogo int, -- valor em centimetros, foi apenas citado tbm
-- exclusivos de bandeira
tipo_bandeira_id int references bandeira,
gramatura varchar(50),
numero_trama int,
numero_urdume int
);

DROP TABLE IF EXISTS item_materia_prima CASCADE; 
CREATE TABLE item_materia_prima(
item_id int references item,
materia_prima_id int references materia_prima,
PRIMARY KEY(item_id, materia_prima_id)
);

DROP TABLE IF EXISTS item_ligamento CASCADE; 
CREATE TABLE item_ligamento(
item_id int references item on delete cascade on update cascade,
ligamento_id int references ligamento on delete cascade on update cascade,
PRIMARY KEY(item_id, ligamento_id)
);

DROP TABLE IF EXISTS item_padronagem_design CASCADE; 
CREATE TABLE item_padronagem_design(
item_id int references item on delete cascade on update cascade,
padronagem_design_id int references padronagem_design on delete cascade on update cascade,
PRIMARY KEY(item_id, padronagem_design_id)
);

DROP TABLE IF EXISTS item_faixa_etaria CASCADE; 
CREATE TABLE item_faixa_etaria (
item_id int references item on delete cascade on update cascade,
faixa_etaria_id int references faixa_etaria on delete cascade on update cascade,
PRIMARY KEY(item_id, faixa_etaria_id)
);

DROP TABLE IF EXISTS item_tipo_material CASCADE; 
CREATE TABLE item_tipo_material (
item_id int references item on delete cascade on update cascade,
tipo_material_id int references tipo_material on delete cascade on update cascade,
PRIMARY KEY(item_id, tipo_material_id)
);

DROP TABLE IF EXISTS item_fio_titulo CASCADE; 
CREATE TABLE item_fio_titulo (
item_id int references item on delete cascade on update cascade,
fio_titulo_id int references fio_titulo on delete cascade on update cascade,
PRIMARY KEY(item_id, fio_titulo_id)
);

DROP TABLE IF EXISTS item_uso_tecido CASCADE; 
CREATE TABLE item_uso_tecido (
item_id int references item on delete cascade on update cascade,
uso_tecido_id int references uso_tecido on delete cascade on update cascade,
PRIMARY KEY(item_id, uso_tecido_id)
);

DROP TABLE IF EXISTS item_cor CASCADE; 
CREATE TABLE item_cor (
item_id int references item on delete cascade on update cascade,
cor_id int references cor on delete cascade on update cascade,
PRIMARY KEY(item_id, cor_id)
);

DROP TABLE IF EXISTS item_tecnica_design CASCADE; 
CREATE TABLE item_tecnica_design (
item_id int references item on delete cascade on update cascade,
tecnica_design_id int references tecnica_design on delete cascade on update cascade,
PRIMARY KEY(item_id, tecnica_design_id)
);

DROP TABLE IF EXISTS item_acabamento CASCADE; 
CREATE TABLE item_acabamento (
item_id int references item on delete cascade on update cascade,
acabamento_id int references acabamento on delete cascade on update cascade,
PRIMARY KEY(item_id, acabamento_id)
);

DROP TABLE IF EXISTS item_textura CASCADE; 
CREATE TABLE item_textura (
item_id int references item on delete cascade on update cascade,
textura_id int references textura on delete cascade on update cascade,
PRIMARY KEY(item_id, textura_id)
);
