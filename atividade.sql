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


 
