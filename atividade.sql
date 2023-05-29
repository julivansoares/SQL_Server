create database SUCOS_VENDAS_01;





create database SUCOS_VENDAS_02

OR (NAME -'SUCOS_VENDAS.DAT', = NOME INTERNO DO BANCO

FILENAME - '/media/soares/rock/Projetos_2023_1/sql_server', = LOCAL A ONDE QUERO SALVAR   MEU  BANCO

SIZE - 10MB, = TANHO INICIAL DO BANCO
 
MAXSIZE -50MB, = TAMANHO MÁXIMO DO BANCO

FILEGROWTH =5MB) = TAXA DE CRECIMENTO DO BANCO EX= QUANDO CHEGA A O TAMANHO MÁXIMO ELE ADD MIAS 5MB  
 
 LOG ON
 (NAME -'SUCOS_VENDAS.DAT',
 FILENAME - '/media/soares/rock/Projetos_2023_1/sql_server',
 SIZE - 10MB,
 MAXSIZE -50MB,
 FILEGROWTH =5MB
 
 
 ) 

//////////////////////////////////////////////////////
                 TIPOS DE DADOS


BIGINT =byte 8 

INT    =byte 4 

SMALLINT=byte 2 

TINYINT =byte 1

//////////////////////////////////////////////////////////////////////////
               NUMEROS EXATOS
MONEY   =byte 8

SMALLMONEY=byte 4

////////////////////////////////////////////////////////////////////////////
                falores decimais

float 

real = bytes 4

///////////////////////////

date =0001-01-01 até 9999-12-31

datetime =AAAA-MM-DD HH:MM:SS.MMM

SMALLDATE =AAAA-MM-DD HH:MM:SS

TIME = HH:MM:SS.MMMMMMM

//////////////////////////////////////////////////
   CADEIA DE CARECTERES

CHAR = 0 A 8000 BYTES

VARCHAR=0 A 8000 BYTES OU USAR MAX =2 GB

NCHAR = 0 A 4000 BYTES

NVARCHAR=0 A 4000 BYTES OU USAR MAX =2 GB


BINARY = 0 A 8000 BYTES

VARBINARY=0 A 8000 BYTES OU USAR MAX =2 GB


BINARY = 0 A 8000 BYTES

NVARBINARY=0 A 8000 BYTES OU USAR MAX =2 GB



//////////////////////////////////////////////////////////////
                criando uma tabela

create database SUCOS_VENDAS_02
 ON (NAME ='SUCOS_VENDAS.DAT',
 FILENAME = '/home/soares/curso-dds/SQL_SERVER',
 SIZE = 10MB,
 MAXSIZE = 50MB,
 FILEGROWTH =5MB)
 
 LOG ON
 (NAME ='SUCOS_VENDAS.LOG',
 FILENAME = '/home/soares/curso-dds/SQL_SERVER',
 SIZE = 10MB,
 MAXSIZE =50MB,
 FILEGROWTH =5MB);
 

create table [TABELA DE CLIENTES](
 
CPF CHAR(11),
NOME VARCHAR(100),
ENDERECO01 VARCHAR(150),
ENDERECO02 VARCHAR(150),
BAIRRO VARCHAR (50),
CIDADE VARCHAR(50),
ESTADO CHAR (2),
CEP CHAR (8),
[DATA  DE NASCIMENTO] DATE,
IDADE SMALLINT,
[LIMITE DE CREDITO] MONEY,
[VOLUME DE COMPRA] FLOAT,
[PRIMEIRA COMPŔA] BIT

);


CREATE TABLE VENDEDORES (
 MATRICULA VARCHAR(10) PRIMARY KEY NOT NULL,
 NOME VARCHAR (100),
 [PORCENTUAL COMISSÃO] FLOAT
 );

 
 
 CREATE TABLE PRODUTOS(
 
 [CODIGO DO PRODUTO] VARCHAR (20),
 [NOME DO PRODUTO] VARCHAR (150),
 EMBALAGEM VARCHAR (50),
 TAMANHO VARCHAR (50),
 SABOR VARCHAR (50),
 [PRECO DE LISTA] SMALLMONEY
 );

////////////////////////////////////////////////////////////////////////////////////////////
                           INCERINDO DADOS NA TABELA 


INSERT INTO PRODUTOS(
[CODIGO DO PRODUTO],
[NOME DO PRODUTO],
EMBALAGEM,
TAMANHO,
SABOR,
[PRECO DE LISTA]
)
VALUES
('1037797','Videira do Campo - 1,5 Litros - Melância','PET','1,5','Melância',19.51),
('544931','Frescor do Verão - 350 ml - Limão','LATA','350ml',' Limão',2.46),
('1078680','Frescor do Verão - 470 ml - Manga','PET','470ml','Manga',5.18),
('1088126','Linha Citros - 1 Litro - Limão','PET','1L',' Limão',7.00) ;
 
 
INSERT INTO VENDEDORES
VALUES('00236','Cláudia Morais',0.08),('00237','Marcela Ferreira',0.09);  = INCERINDO DADOS NA TABELA
 
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                ATUALIZANDO DADOS NA TABELA

UPDATE [PRODUTOS]
SET [PRECO DE LISTA] = 3
WHERE [CODIGO DO PRODUTO] = '544931';

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                               Adicionando uma primary key a um campo na tabela


ALTER TABLE VENDEDORES  ADD CONSTRAINT PK_VENDEDORES
PRIMARY KEY  CLUSTERED (MATRICULA);


OBS: VC TAMBÉM PODE DEFINIR O CAMPO QUE SERÁ A PRIMARY KEY NA CRIAÇÃO DA TABELA

EX:


CREATE TABLE VAN(

MATRICULA CHAR(8) PRIMARY KEY NOT NULL,

NOME: VARCHAR(50)

);
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                        DELETANDO UM ARQUIVO DA TABELA 


  DELETE FROM SUCOS_VENDAS_01.dbo.PRODUTOS
WHERE [CODIGO DO PRODUTO]=N'1088126' AND [NOME DO PRODUTO]=N'Linha Citros - 1 Litro - Limão' AND EMBALAGEM=N'PET' AND TAMANHO=N'1L' AND SABOR=N' Limão' AND [PRECO DE LISTA]=7.0000;


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  
                             ALTERANDO DADOS NA  TABELA  


 ALTER TABLE [PRODUTOS] ALTER COLUMN [CODIGO DO PRODUTO] VARCHAR(20) NOT NULL;

 ALTER TABLE VENDEDORES ALTER COLUMN MATRICULA VARCHAR (50) NOT NULL;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                    função chamada YEAR



há uma função chamada YEAR (ano), que podemos aplicar à condição e, com isso, visualizaremos as pessoas nascidas no ano de 1995.

SELECT * FROM [TABELA DE CLIENTES] WHERE YEAR [DATA DE NASCIMENTO] = 1995;



///////////////////////////////////////////////////

Então, a função pode ser aplicada tanto no filtro, quanto na seleção. Outras funções que poderíamos utilizar, são MONTH (mês) e DAY (dia).




SELECT [NOME], [ESTADO], [DATA DE NASCIMENTO]
, YEAR ([DATA DE NASCIMENTO]) AS ANO
, MONTH ([DATA DE NASCIMENTO]) AS MES
, DAY ([DATA DE NASCIMENTO]) AS DIA
FROM [TABELA DE CLIENTES];




/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                        função AND


Se os dois nasceram no dia 12, mas somente o segundo mora na Tijuca, aplicando o filtro para saber quem nasceu no dia 12 e mora na Tijuca, o resultado será de apenas uma linha, dos dados de César Teixeira. Para nos certificarmos disso, basta adicionar AND [BAIRRO] = 'Tijuca'.



SELECT * FROM [TABELA DE CLIENTES] WHERE DAY [DATA DE NASCIMENTO] =12 AND [BAIRRO] = 'Tijuca';



SELECT * FROM [TABELA DE VENDEDORES] WHERE [CIDADE] = 'Rio de Janeiro' AND [TEM DEPENDENTE] = 1;




 
