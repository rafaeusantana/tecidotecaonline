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

INSERT INTO materia_prima(id, nome) VALUES(1,'Acetato');
INSERT INTO materia_prima(id, nome) VALUES(2,'Algodão');
INSERT INTO materia_prima(id, nome, codificacao_internacional_tecido) VALUES(3,'Acetato','CO');
INSERT INTO materia_prima(id, nome) VALUES(4,'Bambú');
INSERT INTO materia_prima(id, nome) VALUES(5,'Cânhamo');
INSERT INTO materia_prima(id, nome, codificacao_internacional_tecido) VALUES(6,'Elastano','PUE');
INSERT INTO materia_prima(id, nome) VALUES(7,'Juta');
INSERT INTO materia_prima(id, nome, codificacao_internacional_tecido) VALUES(8,'Lã','WO');
INSERT INTO materia_prima(id, nome, codificacao_internacional_tecido) VALUES(9,'Linho','L');
INSERT INTO materia_prima(id, nome) VALUES(10,'Lurex');
INSERT INTO materia_prima(id, nome) VALUES(11,'Malva');
INSERT INTO materia_prima(id, nome) VALUES(12,'Modal');
INSERT INTO materia_prima(id, nome) VALUES(13,'OP');
INSERT INTO materia_prima(id, nome, codificacao_internacional_tecido) VALUES(14,'Poliéster','PES');
INSERT INTO materia_prima(id, nome, codificacao_internacional_tecido) VALUES(15,'Poliamida','PA');
INSERT INTO materia_prima(id, nome, codificacao_internacional_tecido) VALUES(16,'Poliuretano','PU');
INSERT INTO materia_prima(id, nome) VALUES(17,'Rami');
INSERT INTO materia_prima(id, nome, codificacao_internacional_tecido) VALUES(18,'Seda','S');
INSERT INTO materia_prima(id, nome) VALUES(19,'Sisal');
INSERT INTO materia_prima(id, nome, codificacao_internacional_tecido) VALUES(20,'Rayon','R');
INSERT INTO materia_prima(id, nome, codificacao_internacional_tecido) VALUES(21,'Viscose','CV');
INSERT INTO materia_prima(id, nome) VALUES(22,'Tencel');
INSERT INTO materia_prima(id, nome) VALUES(23,'TNT');
INSERT INTO materia_prima(id, nome) VALUES(24,'WV');
INSERT INTO materia_prima(id, nome) VALUES(25,'Diversos');

DROP TABLE IF EXISTS ligamento CASCADE; 
CREATE TABLE ligamento(
id serial primary key,
tipo varchar(50) not null
);

INSERT INTO ligamento(id, tipo) VALUES(1,'Malharia');
INSERT INTO ligamento(id, tipo) VALUES(2,'Alto relevo');
INSERT INTO ligamento(id, tipo) VALUES(3,'Canelado');
INSERT INTO ligamento(id, tipo) VALUES(4,'Cetim');
INSERT INTO ligamento(id, tipo) VALUES(5,'Desagulhado');
INSERT INTO ligamento(id, tipo) VALUES(6,'Desenhado');
INSERT INTO ligamento(id, tipo) VALUES(7,'Dupla Malha');
INSERT INTO ligamento(id, tipo) VALUES(8,'Esponja');
INSERT INTO ligamento(id, tipo) VALUES(9,'Esportivo');
INSERT INTO ligamento(id, tipo) VALUES(10,'Interlock');
INSERT INTO ligamento(id, tipo) VALUES(11,'Jacquard');
INSERT INTO ligamento(id, tipo) VALUES(12,'Listras verticais');
INSERT INTO ligamento(id, tipo) VALUES(13,'Malha');
INSERT INTO ligamento(id, tipo) VALUES(14,'Matelassê');
INSERT INTO ligamento(id, tipo) VALUES(15,'Meia malha');
INSERT INTO ligamento(id, tipo) VALUES(16,'Moleton');
INSERT INTO ligamento(id, tipo) VALUES(17,'Plush');
INSERT INTO ligamento(id, tipo) VALUES(18,'Punho');
INSERT INTO ligamento(id, tipo) VALUES(19,'Renda');
INSERT INTO ligamento(id, tipo) VALUES(20,'Rib 1x1');
INSERT INTO ligamento(id, tipo) VALUES(21,'Sarjado');
INSERT INTO ligamento(id, tipo) VALUES(22,'Trabalhado');
INSERT INTO ligamento(id, tipo) VALUES(23,'Tecelagem');
INSERT INTO ligamento(id, tipo) VALUES(24,'Maquinetado');
INSERT INTO ligamento(id, tipo) VALUES(25,'Sarja');
INSERT INTO ligamento(id, tipo) VALUES(26,'Sarja quebrada');
INSERT INTO ligamento(id, tipo) VALUES(27,'Tela');
INSERT INTO ligamento(id, tipo) VALUES(28,'Diversos');
INSERT INTO ligamento(id, tipo) VALUES(29,'Aplicação no tecido');
INSERT INTO ligamento(id, tipo) VALUES(30,'Sarja Múltipla');
INSERT INTO ligamento(id, tipo) VALUES(31,'Sarja pesada');
INSERT INTO ligamento(id, tipo) VALUES(32,'Tela mista');
INSERT INTO ligamento(id, tipo) VALUES(33,'Tela REP');
INSERT INTO ligamento(id, tipo) VALUES(34,'Tela Sarja');
INSERT INTO ligamento(id, tipo) VALUES(35,'Trama');
INSERT INTO ligamento(id, tipo) VALUES(36,'Tecido não tecido');

DROP TABLE IF EXISTS padronagem_design CASCADE; 
CREATE TABLE padronagem_design(
id serial primary key,
tipo varchar(50) not null
);

INSERT INTO padronagem_design(id, tipo) VALUES(1,'Animal');
INSERT INTO padronagem_design(id, tipo) VALUES(2,'Art Nouveau');
INSERT INTO padronagem_design(id, tipo) VALUES(3,'Bolas');
INSERT INTO padronagem_design(id, tipo) VALUES(4,'Cartoons');
INSERT INTO padronagem_design(id, tipo) VALUES(5,'Corações');
INSERT INTO padronagem_design(id, tipo) VALUES(6,'Degradê');
INSERT INTO padronagem_design(id, tipo) VALUES(7,'Envernizado');
INSERT INTO padronagem_design(id, tipo) VALUES(8,'Escritas');
INSERT INTO padronagem_design(id, tipo) VALUES(9,'Étnico');
INSERT INTO padronagem_design(id, tipo) VALUES(10,'Flocos de neve');
INSERT INTO padronagem_design(id, tipo) VALUES(11,'Floral');
INSERT INTO padronagem_design(id, tipo) VALUES(12,'Floreios');
INSERT INTO padronagem_design(id, tipo) VALUES(13,'Frutas');
INSERT INTO padronagem_design(id, tipo) VALUES(14,'Geométrico');
INSERT INTO padronagem_design(id, tipo) VALUES(15,'Liso');
INSERT INTO padronagem_design(id, tipo) VALUES(16,'Listrado');
INSERT INTO padronagem_design(id, tipo) VALUES(17,'Listras diagonais');
INSERT INTO padronagem_design(id, tipo) VALUES(18,'Listras tortas');
INSERT INTO padronagem_design(id, tipo) VALUES(19,'Malhado');
INSERT INTO padronagem_design(id, tipo) VALUES(20,'Manchado');
INSERT INTO padronagem_design(id, tipo) VALUES(21,'Motivos femininos');
INSERT INTO padronagem_design(id, tipo) VALUES(22,'Infantil');
INSERT INTO padronagem_design(id, tipo) VALUES(23,'Madeira');
INSERT INTO padronagem_design(id, tipo) VALUES(24,'Mesclado');
INSERT INTO padronagem_design(id, tipo) VALUES(25,'Plantas');
INSERT INTO padronagem_design(id, tipo) VALUES(26,'Patchwork');
INSERT INTO padronagem_design(id, tipo) VALUES(27,'Pied-de-poule');
INSERT INTO padronagem_design(id, tipo) VALUES(28,'Poás');
INSERT INTO padronagem_design(id, tipo) VALUES(29,'Quadriculado');
INSERT INTO padronagem_design(id, tipo) VALUES(30,'Rendado');
INSERT INTO padronagem_design(id, tipo) VALUES(31,'Risca de giz');
INSERT INTO padronagem_design(id, tipo) VALUES(32,'Tie-Dye');
INSERT INTO padronagem_design(id, tipo) VALUES(33,'Traços');
INSERT INTO padronagem_design(id, tipo) VALUES(34,'Vidro quebrado');
INSERT INTO padronagem_design(id, tipo) VALUES(35,'Xadrez');
INSERT INTO padronagem_design(id, tipo) VALUES(36,'Zigue-Zague');

DROP TABLE IF EXISTS colecao CASCADE; 
CREATE TABLE colecao(
id serial primary key,
nome varchar(100) not null
);

INSERT INTO colecao(id, nome) VALUES(1,'Inverno');
INSERT INTO colecao(id, nome) VALUES(2,'Outono');
INSERT INTO colecao(id, nome) VALUES(3,'Outono-Inverno');
INSERT INTO colecao(id, nome) VALUES(4,'Primavera');
INSERT INTO colecao(id, nome) VALUES(5,'Primavera-Verão');
INSERT INTO colecao(id, nome) VALUES(6,'Verão');

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

INSERT INTO fabricante(id, nome) VALUES(1,'Não identificado');
INSERT INTO fabricante(id, nome) VALUES(2,'BEST');
INSERT INTO fabricante(id, nome) VALUES(3,'Aço');
INSERT INTO fabricante(id, nome) VALUES(4,'Acqua Doce Lavanderia');
INSERT INTO fabricante(id, nome) VALUES(5,'Adidas');
INSERT INTO fabricante(id, nome) VALUES(6,'Alfred Dunhill');
INSERT INTO fabricante(id, nome) VALUES(7,'Allstil');
INSERT INTO fabricante(id, nome) VALUES(165,'Alpina Têxtil');
INSERT INTO fabricante(id, nome) VALUES(8,'Alta Pressão Lavanderia Industrial');
INSERT INTO fabricante(id, nome) VALUES(9,'Andréa');
INSERT INTO fabricante(id, nome) VALUES(10,'Arrow');
INSERT INTO fabricante(id, nome) VALUES(11,'Belgrano');
INSERT INTO fabricante(id, nome) VALUES(12,'Bicolor');
INSERT INTO fabricante(id, nome) VALUES(13,'Black Cotton');
INSERT INTO fabricante(id, nome) VALUES(14,'Bloomingdales');
INSERT INTO fabricante(id, nome) VALUES(15,'Brasil Connects');
INSERT INTO fabricante(id, nome) VALUES(166,'Brooksfield');
INSERT INTO fabricante(id, nome) VALUES(17,'Cataguases');
INSERT INTO fabricante(id, nome) VALUES(18,'Cedro');
INSERT INTO fabricante(id, nome) VALUES(19,'Clariant');
INSERT INTO fabricante(id, nome) VALUES(20,'Coats Corrente');
INSERT INTO fabricante(id, nome) VALUES(21,'Companhia Têxtil de Castanhal');
INSERT INTO fabricante(id, nome) VALUES(22,'Confecções Diament');
INSERT INTO fabricante(id, nome) VALUES(23,'Corozite');
INSERT INTO fabricante(id, nome) VALUES(24,'Costume Nacional');
INSERT INTO fabricante(id, nome) VALUES(25,'Covolan Indústria Têxtil');
INSERT INTO fabricante(id, nome) VALUES(26,'Cristextil');
INSERT INTO fabricante(id, nome) VALUES(27,'Cristina Malhas');
INSERT INTO fabricante(id, nome) VALUES(28,'Crylor');
INSERT INTO fabricante(id, nome) VALUES(29,'Di Cotone');
INSERT INTO fabricante(id, nome) VALUES(30,'Diamantina Fossanese');
INSERT INTO fabricante(id, nome) VALUES(31,'Diana Têxtil');
INSERT INTO fabricante(id, nome) VALUES(32,'DuPont');
INSERT INTO fabricante(id, nome) VALUES(33,'Dürkopp Adler AG');
INSERT INTO fabricante(id, nome) VALUES(34,'E-tex');
INSERT INTO fabricante(id, nome) VALUES(35,'Eberle fashion');
INSERT INTO fabricante(id, nome) VALUES(36,'Ermenegildo Zegna');
INSERT INTO fabricante(id, nome) VALUES(37,'Evolutex');
INSERT INTO fabricante(id, nome) VALUES(38,'Expofil');
INSERT INTO fabricante(id, nome) VALUES(39,'Expofil Premièr Vision');
INSERT INTO fabricante(id, nome) VALUES(40,'Eurotêxtil');
INSERT INTO fabricante(id, nome) VALUES(41,'Fashion Sample');
INSERT INTO fabricante(id, nome) VALUES(42,'Ferreira Guimarães');
INSERT INTO fabricante(id, nome) VALUES(43,'Fiação Fides');
INSERT INTO fabricante(id, nome) VALUES(44,'Fibratex');
INSERT INTO fabricante(id, nome) VALUES(45,'Fiobras');
INSERT INTO fabricante(id, nome) VALUES(46,'Fios Amparo');
INSERT INTO fabricante(id, nome) VALUES(47,'Fiotto');
INSERT INTO fabricante(id, nome) VALUES(48,'Fran Lui');
INSERT INTO fabricante(id, nome) VALUES(49,'Frankenberg / Sulperola');
INSERT INTO fabricante(id, nome) VALUES(50,'Grecco');
INSERT INTO fabricante(id, nome) VALUES(51,'Gutermann');
INSERT INTO fabricante(id, nome) VALUES(52,'H.I. Indústria de Etiquetas');
INSERT INTO fabricante(id, nome) VALUES(53,'HAK');
INSERT INTO fabricante(id, nome) VALUES(54,'Helvetia');
INSERT INTO fabricante(id, nome) VALUES(55,'High Stil');
INSERT INTO fabricante(id, nome) VALUES(56,'Hisud');
INSERT INTO fabricante(id, nome) VALUES(57,'Hitega');
INSERT INTO fabricante(id, nome) VALUES(58,'Horizonte Textil');
INSERT INTO fabricante(id, nome) VALUES(59,'Intergiffes / Manufatora');
INSERT INTO fabricante(id, nome) VALUES(60,'Irmãos Perfeito');
INSERT INTO fabricante(id, nome) VALUES(61,'J.M. Weston');
INSERT INTO fabricante(id, nome) VALUES(62,'Julimar Lavanderia');
INSERT INTO fabricante(id, nome) VALUES(63,'Kennelan Lavanderia industrial e tinturaria');
INSERT INTO fabricante(id, nome) VALUES(64,'Kowarick');
INSERT INTO fabricante(id, nome) VALUES(65,'Kufner');
INSERT INTO fabricante(id, nome) VALUES(66,'Lacoste');
INSERT INTO fabricante(id, nome) VALUES(67,'Lainiëre de Picardie');
INSERT INTO fabricante(id, nome) VALUES(68,'Lancaster');
INSERT INTO fabricante(id, nome) VALUES(69,'Lanifício São Francisco');
INSERT INTO fabricante(id, nome) VALUES(70,'Lansul / Paramount');
INSERT INTO fabricante(id, nome) VALUES(71,'Lavanderia Krieger');
INSERT INTO fabricante(id, nome) VALUES(72,'LG');
INSERT INTO fabricante(id, nome) VALUES(73,'Linkolene');
INSERT INTO fabricante(id, nome) VALUES(74,'Lonas Alpargatas');
INSERT INTO fabricante(id, nome) VALUES(75,'Louframe');
INSERT INTO fabricante(id, nome) VALUES(76,'Louis Vuitton');
INSERT INTO fabricante(id, nome) VALUES(77,'Lupo');
INSERT INTO fabricante(id, nome) VALUES(78,'Magma');
INSERT INTO fabricante(id, nome) VALUES(79,'Malharia Cristina');
INSERT INTO fabricante(id, nome) VALUES(80,'Malharia Nacional');
INSERT INTO fabricante(id, nome) VALUES(81,'Malhas Fiandeira');
INSERT INTO fabricante(id, nome) VALUES(82,'Manufatora');
INSERT INTO fabricante(id, nome) VALUES(83,'Marles');
INSERT INTO fabricante(id, nome) VALUES(84,'Milleniumm');
INSERT INTO fabricante(id, nome) VALUES(85,'Mods Armond');
INSERT INTO fabricante(id, nome) VALUES(86,'Nova América');
INSERT INTO fabricante(id, nome) VALUES(87,'Novelsul');
INSERT INTO fabricante(id, nome) VALUES(88,'Nuova superlana');
INSERT INTO fabricante(id, nome) VALUES(89,'Ogochi - Raiz Quadrada');
INSERT INTO fabricante(id, nome) VALUES(90,'Orientex');
INSERT INTO fabricante(id, nome) VALUES(91,'Paramount Têxteis');
INSERT INTO fabricante(id, nome) VALUES(92,'Pégaso');
INSERT INTO fabricante(id, nome) VALUES(93,'Pierre Cardin');
INSERT INTO fabricante(id, nome) VALUES(94,'Pirituba Têxtil');
INSERT INTO fabricante(id, nome) VALUES(95,'Piter Pan');
INSERT INTO fabricante(id, nome) VALUES(96,'Paylana');
INSERT INTO fabricante(id, nome) VALUES(97,'Polyenka');
INSERT INTO fabricante(id, nome) VALUES(98,'Premièr Vision');
INSERT INTO fabricante(id, nome) VALUES(99,'Preview');
INSERT INTO fabricante(id, nome) VALUES(100,'Queen Lavanderias');
INSERT INTO fabricante(id, nome) VALUES(101,'Quéfio');
INSERT INTO fabricante(id, nome) VALUES(102,'Renaux');
INSERT INTO fabricante(id, nome) VALUES(103,'Ribeiro Chaves');
INSERT INTO fabricante(id, nome) VALUES(104,'Richards');
INSERT INTO fabricante(id, nome) VALUES(105,'Rockstter');
INSERT INTO fabricante(id, nome) VALUES(106,'Rosa Chá');
INSERT INTO fabricante(id, nome) VALUES(107,'Rosset');
INSERT INTO fabricante(id, nome) VALUES(108,'Santa Constancia');
INSERT INTO fabricante(id, nome) VALUES(109,'Santista Têxtil');
INSERT INTO fabricante(id, nome) VALUES(110,'Santista vestis');
INSERT INTO fabricante(id, nome) VALUES(111,'Sanyotex');
INSERT INTO fabricante(id, nome) VALUES(112,'Sanyotex - Lanifício Sanyo');
INSERT INTO fabricante(id, nome) VALUES(113,'Selene');
INSERT INTO fabricante(id, nome) VALUES(114,'Sellinvest');
INSERT INTO fabricante(id, nome) VALUES(115,'Smith and Hawken');
INSERT INTO fabricante(id, nome) VALUES(116,'Strobel');
INSERT INTO fabricante(id, nome) VALUES(117,'Tecelagem Panamericana');
INSERT INTO fabricante(id, nome) VALUES(118,'Textil Alamo');
INSERT INTO fabricante(id, nome) VALUES(119,'Textil Canatiba');
INSERT INTO fabricante(id, nome) VALUES(120,'Têxtil Farfalla');
INSERT INTO fabricante(id, nome) VALUES(121,'Textil H. J. Hering');
INSERT INTO fabricante(id, nome) VALUES(122,'Têxtil Leitão');
INSERT INTO fabricante(id, nome) VALUES(123,'Têxtil Picasso');
INSERT INTO fabricante(id, nome) VALUES(124,'Têxtil Renaux');
INSERT INTO fabricante(id, nome) VALUES(125,'Texvision');
INSERT INTO fabricante(id, nome) VALUES(126,'Tinturaria Bela Vista');
INSERT INTO fabricante(id, nome) VALUES(127,'Tootal');
INSERT INTO fabricante(id, nome) VALUES(128,'Toyobo');
INSERT INTO fabricante(id, nome) VALUES(129,'Tsuzuki');
INSERT INTO fabricante(id, nome) VALUES(130,'Tutti Tanto Modas');
INSERT INTO fabricante(id, nome) VALUES(131,'UMA Raquel Davidowick');
INSERT INTO fabricante(id, nome) VALUES(132,'Urban Outfitters');
INSERT INTO fabricante(id, nome) VALUES(133,'Vera Cruz');
INSERT INTO fabricante(id, nome) VALUES(134,'Vicunha Têxtil');
INSERT INTO fabricante(id, nome) VALUES(135,'VR Manswear');
INSERT INTO fabricante(id, nome) VALUES(136,'YKK');
INSERT INTO fabricante(id, nome) VALUES(137,'Yves Saint Laurent/Intergriffes');
INSERT INTO fabricante(id, nome) VALUES(138,'Z Tec Malhas');
INSERT INTO fabricante(id, nome) VALUES(139,'Albieri Têxtil');
INSERT INTO fabricante(id, nome) VALUES(140,'Arco Têxteis');
INSERT INTO fabricante(id, nome) VALUES(141,'Bazak International Corp.');
INSERT INTO fabricante(id, nome) VALUES(142,'Bazak kinsberg');
INSERT INTO fabricante(id, nome) VALUES(143,'Bonor – Botões do Nordeste S/A');
INSERT INTO fabricante(id, nome) VALUES(144,'Botões Perfeito');
INSERT INTO fabricante(id, nome) VALUES(145,'Códigos dinâmicos-Tecelagem Panamericana');
INSERT INTO fabricante(id, nome) VALUES(146,'Crediten');
INSERT INTO fabricante(id, nome) VALUES(147,'Fashion Samper');
INSERT INTO fabricante(id, nome) VALUES(148,'JBeSan');
INSERT INTO fabricante(id, nome) VALUES(149,'Jeans (Barra calça)');
INSERT INTO fabricante(id, nome) VALUES(150,'Jeans (lavagens)');
INSERT INTO fabricante(id, nome) VALUES(151,'Jeans (Menor)');
INSERT INTO fabricante(id, nome) VALUES(152,'Khoten');
INSERT INTO fabricante(id, nome) VALUES(153,'Mod’s Armond');
INSERT INTO fabricante(id, nome) VALUES(154,'Mr. Tié');
INSERT INTO fabricante(id, nome) VALUES(155,'Paramount');
INSERT INTO fabricante(id, nome) VALUES(156,'Santarosa');
INSERT INTO fabricante(id, nome) VALUES(157,'Santista');
INSERT INTO fabricante(id, nome) VALUES(158,'Silva Santos');
INSERT INTO fabricante(id, nome) VALUES(159,'Tecidos Bogiten');
INSERT INTO fabricante(id, nome) VALUES(160,'Têxtil Hering');
INSERT INTO fabricante(id, nome) VALUES(161,'Têxtil HJH');
INSERT INTO fabricante(id, nome) VALUES(16,'Vicunha Trends');
INSERT INTO fabricante(id, nome) VALUES(163,'Vila Romana');
INSERT INTO fabricante(id, nome) VALUES(164,'Yves Saint Laurent');

DROP TABLE IF EXISTS faixa_etaria CASCADE; 
CREATE TABLE faixa_etaria (
id serial primary key,
nome varchar(50) not null
);

INSERT INTO faixa_etaria(id, nome) VALUES(1,'Moda Feminina');
INSERT INTO faixa_etaria(id, nome) VALUES(2,'Moda Masculina');
INSERT INTO faixa_etaria(id, nome) VALUES(3,'Moda Infanto Juvenil');

DROP TABLE IF EXISTS tipo_material CASCADE; 
CREATE TABLE tipo_material (
id serial primary key,
nome varchar(50) not null
);

INSERT INTO tipo_material(id, nome) VALUES(1,'Tecido');
INSERT INTO tipo_material(id, nome) VALUES(2,'Aviamento');
INSERT INTO tipo_material(id, nome) VALUES(3,'Aviamento com Botões');
INSERT INTO tipo_material(id, nome) VALUES(4,'Aviamento com Entretela');
INSERT INTO tipo_material(id, nome) VALUES(5,'Aviamento com Fios');
INSERT INTO tipo_material(id, nome) VALUES(6,'Aviamento com Fivelas');
INSERT INTO tipo_material(id, nome) VALUES(7,'Aviamento com Zíper');
INSERT INTO tipo_material(id, nome) VALUES(8,'Beneficiamento');
INSERT INTO tipo_material(id, nome) VALUES(9,'Fibra');
INSERT INTO tipo_material(id, nome) VALUES(10,'Carretel');
INSERT INTO tipo_material(id, nome) VALUES(11,'Cone de tingimento');
INSERT INTO tipo_material(id, nome) VALUES(12,'Indumentária');
INSERT INTO tipo_material(id, nome) VALUES(13,'Indumentária com Jeans');
INSERT INTO tipo_material(id, nome) VALUES(14,'Tecido com Têxteis técnicos');

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

INSERT INTO uso_tecido(id, tipo) VALUES(1,'Absorvente Higiênico');
INSERT INTO uso_tecido(id, tipo) VALUES(2,'Agasalho');
INSERT INTO uso_tecido(id, tipo) VALUES(3,'Agricultura');
INSERT INTO uso_tecido(id, tipo) VALUES(4,'Almofada');
INSERT INTO uso_tecido(id, tipo) VALUES(5,'Anabela');
INSERT INTO uso_tecido(id, tipo) VALUES(6,'Ankle Boot');
INSERT INTO uso_tecido(id, tipo) VALUES(7,'Bermuda');
INSERT INTO uso_tecido(id, tipo) VALUES(8,'Bíquini');
INSERT INTO uso_tecido(id, tipo) VALUES(9,'Blazer');
INSERT INTO uso_tecido(id, tipo) VALUES(10,'Blusa');
INSERT INTO uso_tecido(id, tipo) VALUES(11,'Blusão');
INSERT INTO uso_tecido(id, tipo) VALUES(12,'Bodies');
INSERT INTO uso_tecido(id, tipo) VALUES(13,'Boina');
INSERT INTO uso_tecido(id, tipo) VALUES(14,'Bolero');
INSERT INTO uso_tecido(id, tipo) VALUES(15,'Bolsa');
INSERT INTO uso_tecido(id, tipo) VALUES(16,'Boné');
INSERT INTO uso_tecido(id, tipo) VALUES(17,'Bota');
INSERT INTO uso_tecido(id, tipo) VALUES(18,'Brinco');
INSERT INTO uso_tecido(id, tipo) VALUES(19,'Brinquedo de Criança');
INSERT INTO uso_tecido(id, tipo) VALUES(20,'Brogue');
INSERT INTO uso_tecido(id, tipo) VALUES(21,'Caderno');
INSERT INTO uso_tecido(id, tipo) VALUES(22,'Calça');
INSERT INTO uso_tecido(id, tipo) VALUES(23,'Calçados');
INSERT INTO uso_tecido(id, tipo) VALUES(24,'Calcinha');
INSERT INTO uso_tecido(id, tipo) VALUES(25,'Cama para Cachorro');
INSERT INTO uso_tecido(id, tipo) VALUES(26,'Camisa');
INSERT INTO uso_tecido(id, tipo) VALUES(27,'Camiseta');
INSERT INTO uso_tecido(id, tipo) VALUES(28,'Camiseta Esportiva');
INSERT INTO uso_tecido(id, tipo) VALUES(29,'Camiseta polo');
INSERT INTO uso_tecido(id, tipo) VALUES(30,'Camisola');
INSERT INTO uso_tecido(id, tipo) VALUES(31,'Canga');
INSERT INTO uso_tecido(id, tipo) VALUES(32,'Cano Alto');
INSERT INTO uso_tecido(id, tipo) VALUES(33,'Cano Médio');
INSERT INTO uso_tecido(id, tipo) VALUES(34,'Capa para Sofá');
INSERT INTO uso_tecido(id, tipo) VALUES(35,'Carteira');
INSERT INTO uso_tecido(id, tipo) VALUES(36,'Casaco');
INSERT INTO uso_tecido(id, tipo) VALUES(37,'Casaco de Couro');
INSERT INTO uso_tecido(id, tipo) VALUES(38,'Casaco de Lã');
INSERT INTO uso_tecido(id, tipo) VALUES(39,'Casaco de Pele');
INSERT INTO uso_tecido(id, tipo) VALUES(40,'Ceroulas');
INSERT INTO uso_tecido(id, tipo) VALUES(41,'Chapéu');
INSERT INTO uso_tecido(id, tipo) VALUES(42,'Chuteira');
INSERT INTO uso_tecido(id, tipo) VALUES(43,'Cinto');
INSERT INTO uso_tecido(id, tipo) VALUES(44,'Cobertor');
INSERT INTO uso_tecido(id, tipo) VALUES(45,'Colar');
INSERT INTO uso_tecido(id, tipo) VALUES(46,'Colcha');
INSERT INTO uso_tecido(id, tipo) VALUES(47,'Colchão');
INSERT INTO uso_tecido(id, tipo) VALUES(48,'Colete');
INSERT INTO uso_tecido(id, tipo) VALUES(49,'Colete de Polo');
INSERT INTO uso_tecido(id, tipo) VALUES(50,'Conjuntinho');
INSERT INTO uso_tecido(id, tipo) VALUES(51,'Construção Civil');
INSERT INTO uso_tecido(id, tipo) VALUES(52,'Corpete');
INSERT INTO uso_tecido(id, tipo) VALUES(53,'Corselet');
INSERT INTO uso_tecido(id, tipo) VALUES(54,'Cortina');
INSERT INTO uso_tecido(id, tipo) VALUES(55,'Cuecas');
INSERT INTO uso_tecido(id, tipo) VALUES(56,'Descartáveis');
INSERT INTO uso_tecido(id, tipo) VALUES(57,'Edredom');
INSERT INTO uso_tecido(id, tipo) VALUES(58,'Embalagens');
INSERT INTO uso_tecido(id, tipo) VALUES(59,'Espadrille');
INSERT INTO uso_tecido(id, tipo) VALUES(60,'Espartilho');
INSERT INTO uso_tecido(id, tipo) VALUES(61,'Estofado para Sofá');
INSERT INTO uso_tecido(id, tipo) VALUES(62,'Estola');
INSERT INTO uso_tecido(id, tipo) VALUES(63,'Fantasia');
INSERT INTO uso_tecido(id, tipo) VALUES(64,'Fedora');
INSERT INTO uso_tecido(id, tipo) VALUES(65,'Fichário');
INSERT INTO uso_tecido(id, tipo) VALUES(66,'Filtros');
INSERT INTO uso_tecido(id, tipo) VALUES(67,'Forro');
INSERT INTO uso_tecido(id, tipo) VALUES(68,'Forro para Mesa');
INSERT INTO uso_tecido(id, tipo) VALUES(69,'Fralda');
INSERT INTO uso_tecido(id, tipo) VALUES(70,'Geotêxteis');
INSERT INTO uso_tecido(id, tipo) VALUES(71,'Gorro');
INSERT INTO uso_tecido(id, tipo) VALUES(72,'Gravata');
INSERT INTO uso_tecido(id, tipo) VALUES(73,'Industrial');
INSERT INTO uso_tecido(id, tipo) VALUES(74,'Jaqueta');
INSERT INTO uso_tecido(id, tipo) VALUES(75,'Jaqueta de Alfaiataria');
INSERT INTO uso_tecido(id, tipo) VALUES(76,'Jaqueta de Couro');
INSERT INTO uso_tecido(id, tipo) VALUES(77,'Jaqueta de Sarja');
INSERT INTO uso_tecido(id, tipo) VALUES(78,'Jaqueta Jeans');
INSERT INTO uso_tecido(id, tipo) VALUES(79,'Jogo Americano');
INSERT INTO uso_tecido(id, tipo) VALUES(80,'Legging');
INSERT INTO uso_tecido(id, tipo) VALUES(81,'Lenço');
INSERT INTO uso_tecido(id, tipo) VALUES(82,'Lenço Úmido');
INSERT INTO uso_tecido(id, tipo) VALUES(83,'Lençol e Fronha');
INSERT INTO uso_tecido(id, tipo) VALUES(84,'Lingerie');
INSERT INTO uso_tecido(id, tipo) VALUES(85,'Luva');
INSERT INTO uso_tecido(id, tipo) VALUES(86,'Macacão');
INSERT INTO uso_tecido(id, tipo) VALUES(87,'Macaquinho');
INSERT INTO uso_tecido(id, tipo) VALUES(88,'Maiô');
INSERT INTO uso_tecido(id, tipo) VALUES(89,'Mala');
INSERT INTO uso_tecido(id, tipo) VALUES(90,'Malha');
INSERT INTO uso_tecido(id, tipo) VALUES(91,'Manta');
INSERT INTO uso_tecido(id, tipo) VALUES(92,'Masculino');
INSERT INTO uso_tecido(id, tipo) VALUES(93,'Meia calça');
INSERT INTO uso_tecido(id, tipo) VALUES(94,'Meias');
INSERT INTO uso_tecido(id, tipo) VALUES(95,'Meias de Algodão');
INSERT INTO uso_tecido(id, tipo) VALUES(96,'Meias de Lã');
INSERT INTO uso_tecido(id, tipo) VALUES(97,'Meias de Poliamida');
INSERT INTO uso_tecido(id, tipo) VALUES(98,'Mocassim');
INSERT INTO uso_tecido(id, tipo) VALUES(99,'Mochila');
INSERT INTO uso_tecido(id, tipo) VALUES(100,'Moda praia');
INSERT INTO uso_tecido(id, tipo) VALUES(101,'Moletom');
INSERT INTO uso_tecido(id, tipo) VALUES(102,'Móveis');
INSERT INTO uso_tecido(id, tipo) VALUES(103,'Ortopédicos');
INSERT INTO uso_tecido(id, tipo) VALUES(104,'Oxford');
INSERT INTO uso_tecido(id, tipo) VALUES(105,'Painel de Cortiça');
INSERT INTO uso_tecido(id, tipo) VALUES(106,'Paletó');
INSERT INTO uso_tecido(id, tipo) VALUES(107,'Panamá');
INSERT INTO uso_tecido(id, tipo) VALUES(108,'Pantufa');
INSERT INTO uso_tecido(id, tipo) VALUES(109,'Papete');
INSERT INTO uso_tecido(id, tipo) VALUES(110,'Pasta');
INSERT INTO uso_tecido(id, tipo) VALUES(111,'Peças de Baixo');
INSERT INTO uso_tecido(id, tipo) VALUES(112,'Peças de Corpo Inteiro');
INSERT INTO uso_tecido(id, tipo) VALUES(113,'Pijama');
INSERT INTO uso_tecido(id, tipo) VALUES(114,'Pulseira');
INSERT INTO uso_tecido(id, tipo) VALUES(115,'Pump');
INSERT INTO uso_tecido(id, tipo) VALUES(116,'Quepe');
INSERT INTO uso_tecido(id, tipo) VALUES(117,'Rasteirinha');
INSERT INTO uso_tecido(id, tipo) VALUES(118,'Regata');
INSERT INTO uso_tecido(id, tipo) VALUES(119,'Regata Esportiva');
INSERT INTO uso_tecido(id, tipo) VALUES(120,'Relógio');
INSERT INTO uso_tecido(id, tipo) VALUES(121,'Roupa íntima');
INSERT INTO uso_tecido(id, tipo) VALUES(122,'Roupa de Mergulho');
INSERT INTO uso_tecido(id, tipo) VALUES(123,'Roupa de Proteção');
INSERT INTO uso_tecido(id, tipo) VALUES(124,'Roupão de Banho');
INSERT INTO uso_tecido(id, tipo) VALUES(125,'Sacola');
INSERT INTO uso_tecido(id, tipo) VALUES(126,'Saia');
INSERT INTO uso_tecido(id, tipo) VALUES(127,'Saia para Cama');
INSERT INTO uso_tecido(id, tipo) VALUES(128,'Saída de Praia');
INSERT INTO uso_tecido(id, tipo) VALUES(129,'Salto');
INSERT INTO uso_tecido(id, tipo) VALUES(130,'Samba-Canção');
INSERT INTO uso_tecido(id, tipo) VALUES(131,'Sandália');
INSERT INTO uso_tecido(id, tipo) VALUES(132,'Sapato');
INSERT INTO uso_tecido(id, tipo) VALUES(133,'Sapatilha');
INSERT INTO uso_tecido(id, tipo) VALUES(134,'Scarpin');
INSERT INTO uso_tecido(id, tipo) VALUES(135,'Segunda Pele');
INSERT INTO uso_tecido(id, tipo) VALUES(136,'Sem Salto');
INSERT INTO uso_tecido(id, tipo) VALUES(137,'Short Doll');
INSERT INTO uso_tecido(id, tipo) VALUES(138,'Shorts');
INSERT INTO uso_tecido(id, tipo) VALUES(139,'Shorts de Tactel');
INSERT INTO uso_tecido(id, tipo) VALUES(140,'Slipper');
INSERT INTO uso_tecido(id, tipo) VALUES(141,'Smoking');
INSERT INTO uso_tecido(id, tipo) VALUES(142,'Suéter');
INSERT INTO uso_tecido(id, tipo) VALUES(143,'Sunga');
INSERT INTO uso_tecido(id, tipo) VALUES(144,'Sutiã');
INSERT INTO uso_tecido(id, tipo) VALUES(145,'Tailleur');
INSERT INTO uso_tecido(id, tipo) VALUES(146,'Tamanco');
INSERT INTO uso_tecido(id, tipo) VALUES(147,'Tanga');
INSERT INTO uso_tecido(id, tipo) VALUES(148,'Tapete');
INSERT INTO uso_tecido(id, tipo) VALUES(149,'Tapetes de Banheiro');
INSERT INTO uso_tecido(id, tipo) VALUES(150,'Tela para cama');
INSERT INTO uso_tecido(id, tipo) VALUES(151,'Tênis Esportivo');
INSERT INTO uso_tecido(id, tipo) VALUES(152,'Terno');
INSERT INTO uso_tecido(id, tipo) VALUES(153,'Toalha');
INSERT INTO uso_tecido(id, tipo) VALUES(154,'Toalha de Banho');
INSERT INTO uso_tecido(id, tipo) VALUES(155,'Toalha de Lavabo');
INSERT INTO uso_tecido(id, tipo) VALUES(156,'Toalha de Mesa');
INSERT INTO uso_tecido(id, tipo) VALUES(157,'Toalha de Piquenique');
INSERT INTO uso_tecido(id, tipo) VALUES(158,'Toalha de Praia');
INSERT INTO uso_tecido(id, tipo) VALUES(159,'Top');
INSERT INTO uso_tecido(id, tipo) VALUES(160,'Uniformes');
INSERT INTO uso_tecido(id, tipo) VALUES(161,'Vestido');
INSERT INTO uso_tecido(id, tipo) VALUES(162,'Vestido de festa');
INSERT INTO uso_tecido(id, tipo) VALUES(163,'Viseira');

DROP TABLE IF EXISTS cor CASCADE; 
CREATE TABLE cor (
id serial primary key,
nome varchar(50) not null
);

INSERT INTO cor(id, nome) VALUES(1,'Amarelo');
INSERT INTO cor(id, nome) VALUES(2,'Amarelo Claro');
INSERT INTO cor(id, nome) VALUES(3,'Amarelo Escuro');
INSERT INTO cor(id, nome) VALUES(4,'Azul');
INSERT INTO cor(id, nome) VALUES(5,'Azul Claro');
INSERT INTO cor(id, nome) VALUES(6,'Azul Escuro');
INSERT INTO cor(id, nome) VALUES(7,'Bege');
INSERT INTO cor(id, nome) VALUES(8,'Bege Claro');
INSERT INTO cor(id, nome) VALUES(9,'Bege Escuro');
INSERT INTO cor(id, nome) VALUES(10,'Branco');
INSERT INTO cor(id, nome) VALUES(11,'Champagne');
INSERT INTO cor(id, nome) VALUES(12,'Cinza');
INSERT INTO cor(id, nome) VALUES(13,'Cinza Claro');
INSERT INTO cor(id, nome) VALUES(14,'Cinza Escuro');
INSERT INTO cor(id, nome) VALUES(15,'Cinza Mescla');
INSERT INTO cor(id, nome) VALUES(16,'Creme');
INSERT INTO cor(id, nome) VALUES(17,'Cru');
INSERT INTO cor(id, nome) VALUES(18,'Dourado');
INSERT INTO cor(id, nome) VALUES(19,'Roxo');
INSERT INTO cor(id, nome) VALUES(20,'Laranja');
INSERT INTO cor(id, nome) VALUES(21,'Laranja claro');
INSERT INTO cor(id, nome) VALUES(22,'Laranja Escuro');
INSERT INTO cor(id, nome) VALUES(23,'Lilás');
INSERT INTO cor(id, nome) VALUES(24,'Marrom');
INSERT INTO cor(id, nome) VALUES(25,'Marrom Claro');
INSERT INTO cor(id, nome) VALUES(26,'Marrom Escuro');
INSERT INTO cor(id, nome) VALUES(27,'Petróleo');
INSERT INTO cor(id, nome) VALUES(28,'Prateado');
INSERT INTO cor(id, nome) VALUES(29,'Preto');
INSERT INTO cor(id, nome) VALUES(30,'Púrpura');
INSERT INTO cor(id, nome) VALUES(31,'Rosa');
INSERT INTO cor(id, nome) VALUES(32,'Rosa claro');
INSERT INTO cor(id, nome) VALUES(33,'Rosê');
INSERT INTO cor(id, nome) VALUES(34,'Roxo');
INSERT INTO cor(id, nome) VALUES(35,'Salmão');
INSERT INTO cor(id, nome) VALUES(36,'Verde');
INSERT INTO cor(id, nome) VALUES(37,'Verde Claro');
INSERT INTO cor(id, nome) VALUES(38,'Verde Escuro');
INSERT INTO cor(id, nome) VALUES(39,'Verde Limão');
INSERT INTO cor(id, nome) VALUES(40,'Verde oliva');
INSERT INTO cor(id, nome) VALUES(41,'Vermelho');
INSERT INTO cor(id, nome) VALUES(42,'Vermelho Claro');
INSERT INTO cor(id, nome) VALUES(43,'Vinho');
INSERT INTO cor(id, nome) VALUES(44,'Turquesa');

DROP TABLE IF EXISTS tecnica_design CASCADE; 
CREATE TABLE tecnica_design (
id serial primary key,
nome varchar(50) not null
);

INSERT INTO tecnica_design(id, nome) VALUES(1,'Liso');
INSERT INTO tecnica_design(id, nome) VALUES(2,'Estampado');
INSERT INTO tecnica_design(id, nome) VALUES(3,'Fio tinto');
INSERT INTO tecnica_design(id, nome) VALUES(4,'Jacquard');
INSERT INTO tecnica_design(id, nome) VALUES(5,'Corrosão');

DROP TABLE IF EXISTS acabamento CASCADE; 
CREATE TABLE acabamento (
id serial primary key,
tipo varchar(50) not null
);

INSERT INTO acabamento(id, tipo) VALUES(1,'Aveludado');
INSERT INTO acabamento(id, tipo) VALUES(2,'Acetinado');
INSERT INTO acabamento(id, tipo) VALUES(3,'Emborrachado');
INSERT INTO acabamento(id, tipo) VALUES(4,'Brilhante');
INSERT INTO acabamento(id, tipo) VALUES(5,'Glitter');
INSERT INTO acabamento(id, tipo) VALUES(6,'Lantejoula');
INSERT INTO acabamento(id, tipo) VALUES(7,'Metalizado');
INSERT INTO acabamento(id, tipo) VALUES(8,'Neon');
INSERT INTO acabamento(id, tipo) VALUES(9,'Opaco');
INSERT INTO acabamento(id, tipo) VALUES(10,'Paetê');
INSERT INTO acabamento(id, tipo) VALUES(11,'Renda');
INSERT INTO acabamento(id, tipo) VALUES(12,'Translúcido');
INSERT INTO acabamento(id, tipo) VALUES(13,'Transparente');
INSERT INTO acabamento(id, tipo) VALUES(14,'Verniz');

DROP TABLE IF EXISTS textura CASCADE; 
CREATE TABLE textura (
id serial primary key,
tipo varchar(50) not null
);

INSERT INTO textura(id, tipo) VALUES(1,'Aveludado');
INSERT INTO textura(id, tipo) VALUES(2,'Babado');
INSERT INTO textura(id, tipo) VALUES(3,'Couro');
INSERT INTO textura(id, tipo) VALUES(4,'Crochê');
INSERT INTO textura(id, tipo) VALUES(5,'Enrugado');
INSERT INTO textura(id, tipo) VALUES(6,'Felpudo');
INSERT INTO textura(id, tipo) VALUES(7,'Homogêneo');
INSERT INTO textura(id, tipo) VALUES(8,'Matelassê');
INSERT INTO textura(id, tipo) VALUES(9,'Plissado');
INSERT INTO textura(id, tipo) VALUES(10,'Relevo');
INSERT INTO textura(id, tipo) VALUES(11,'Rendado');
INSERT INTO textura(id, tipo) VALUES(12,'Sanfonado');
INSERT INTO textura(id, tipo) VALUES(13,'Tela');
INSERT INTO textura(id, tipo) VALUES(14,'Texturizado');
INSERT INTO textura(id, tipo) VALUES(15,'Tule');
INSERT INTO textura(id, tipo) VALUES(16,'Tricô');
INSERT INTO textura(id, tipo) VALUES(17,'Vazado');

DROP TABLE IF EXISTS tamanho CASCADE; 
CREATE TABLE tamanho (
id serial primary key,
nome varchar(50) not null
);

INSERT INTO tamanho(id, nome) VALUES(1,'Pequeno');
INSERT INTO tamanho(id, nome) VALUES(2,'Médio');
INSERT INTO tamanho(id, nome) VALUES(3,'Grande');

DROP TABLE IF EXISTS item CASCADE; 
CREATE TABLE item(
id serial primary key,
suporte_id int references suporte,
localizacao varchar(6) not null,
tipo_aquisicao varchar(50),
data_aquisicao date,
fornecedor_aquisicao varchar(50),
fabricante_id int references fabricante,
colecao_id int references colecao,
ano_colecao int,
especificacoes varchar(500),
-- exclusivos de catalogo
tamanho_id int references tamanho,
faixa_etaria_id int references faixa_etaria,
peca_vestuario varchar(50),
-- exclusivos de bandeira
tipo_bandeira_id int references bandeira,
gramatura int,
numero_trama int,
numero_urdume int,
cor_id int references cor,
acabamento_id int references acabamento,
textura_id int references textura,
analise_cor varchar(100)
);

DROP TABLE IF EXISTS item_materia_prima CASCADE; 
CREATE TABLE item_materia_prima(
item_id int references item on delete cascade on update cascade,
materia_prima_id int references materia_prima on delete cascade on update cascade,
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

DROP TABLE IF EXISTS item_cor_adicional CASCADE; 
CREATE TABLE item_cor_adicional (
item_id int references item on delete cascade on update cascade,
cor_adicional_id int references cor on delete cascade on update cascade,
PRIMARY KEY(item_id, cor_adicional_id)
);

DROP TABLE IF EXISTS item_tecnica_design CASCADE; 
CREATE TABLE item_tecnica_design (
item_id int references item on delete cascade on update cascade,
tecnica_design_id int references tecnica_design on delete cascade on update cascade,
PRIMARY KEY(item_id, tecnica_design_id)
);
