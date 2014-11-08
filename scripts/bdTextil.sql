DROP TABLE IF EXISTS suporte CASCADE; CREATE TABLE suporte(
id serial primary key,
nome varchar(50) not null
);

DROP TABLE IF EXISTS materia_prima CASCADE; CREATE TABLE materia_prima(
id serial primary key,
nome varchar(50) not null,
codificacao_internacional_tecido varchar(50)
);

DROP TABLE IF EXISTS ligamento CASCADE; CREATE TABLE ligamento(
id serial primary key,
tipo varchar(50) not null
);

DROP TABLE IF EXISTS padronagem_design CASCADE; CREATE TABLE padronagem_design(
id serial primary key,
tipo varchar(50) not null
);

DROP TABLE IF EXISTS colecao CASCADE; CREATE TABLE colecao(
id serial primary key,
nome_colecao varchar(100) not null,
ano_colecao date,
fabricante_id int references fabricante
);

DROP TABLE IF EXISTS fabricante CASCADE; CREATE TABLE fabricante(
id serial primary key,
nome varchar(100) not null,
estado char(2),
cidade varchar(100),
endereco varchar(150),
pais varchar(100),
especificacoes varchar(500),
site varchar(100),
email varchar(100)
);

DROP TABLE IF EXISTS item CASCADE; CREATE TABLE item(
id serial primary key,
suporte_id int references suporte,
localizacao varchar(6) not null,
nome_aquisicao varchar(50),
data_aquisicao date, --traduzir formato da base atual
fabricante_id int references fabricante,
colecao_id int references colecao
);

DROP TABLE IF EXISTS item_materia_prima CASCADE; CREATE TABLE item_materia_prima(
materia_prima_id int references materia_prima,
item_id int references item,
PRIMARY KEY(materia_prima_id, item_id)
);

DROP TABLE IF EXISTS item_ligamento CASCADE; CREATE TABLE item_ligamento(
ligamento_id int references ligamento,
item_id int references item,
PRIMARY KEY(ligamento_id, item_id)
);

DROP TABLE IF EXISTS item_padronagem_design CASCADE; CREATE TABLE item_padronagem_design(
padronagem_design_id int references padronagem_design,
item_id int references item,
PRIMARY KEY(padronagem_design_id, item_id)
);

DROP TABLE IF EXISTS tipo_material CASCADE; CREATE TABLE tipo_material(
id serial primary key,
nome varchar(100) not null
);


DROP TABLE IF EXISTS catalogo_tipo_material CASCADE; CREATE TABLE catalogo_tipo_material(
catalogo_id int,
tipo_material_id int,
PRIMARY KEY(catalogo_id, tipo_material_id)
);
