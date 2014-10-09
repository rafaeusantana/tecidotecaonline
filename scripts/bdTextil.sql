CREATE TABLE Suporte(
id serial primary key,
nome varchar(50) not null
);

CREATE TABLE fabricante(
id serial primary key,
nome varchar(100) not null,
estado char(2),
cidade varchar(100),
endereco varchar(150),
pais varchar(100),
especificacoes varchar(500),
site varchar(100),
email varchar(100),
nome_colecao varchar(100),
ano_colecao date
);


CREATE TABLE Catalogo(
id serial primary key,
suporte_id int references suporte,
localizacao varchar(6) not null,
nome_aquisicao varchar(50),
data_aquisicao date, --traduzir formato da base atual
fibra_tecido varchar(100),
codificacao_internacional_tecido varchar(50),
fabricante_id int references fabricante
);


CREATE TABLE tipo_material(
id serial primary key,
nome varchar(100) not null
);


CREATE TABLE Catalogo_Tipo_Material(
catalogo_id int,
tipo_material_id int,
PRIMARY KEY(catalogo_id, tipo_material_id)
);

/*CREATE TABLE Bandeira(
id serial primary key,
suporte_id int REFERENCES suporte,
localizacao varchar(6) not null,
tamanho varchar(30), --tipo?. somente catalogo
nome_aquisicao varchar(50),
data_aquisicao date, --traduzir formato da base atual
gramatura varchar(200)
);
*/
