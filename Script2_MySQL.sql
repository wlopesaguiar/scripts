-- Banco de Dados: DDL - Data Definition Language - Linguagem de Definição de Dados.
--                 DML - Data Manipulation Language - Linguagem de Manipulação de Dados.

show databases; -- Lista bases de dados
create database Lojinhadoastolfo; -- Criando Base de dados
-- No mySql não é possível renomear a base de dados, devido ao risco de perder dados.
drop database Lojinhadoastolfo; -- Apaga a Base de dados

use Lojinhadoastolfo;
use mysql; -- Equivalente ao Master do SQL Server

show tables; -- Lista tabelas


create table tblProdut(idprod int not null auto_increment, nomep varchar(20) not null,
			unidade Enum ('UN','CT','CX','DZ','GZ','PA','PÇ','PR','PT','RL') not null,
			qtdprod tinyint not null, precounit decimal (6,2) not null ,codbarras decimal(13,0) not null, detalhes varchar(300),
            dt_cadastro datetime default now(), 
            constraint idprod_pk primary key(idprod)); 
            -- CONSTRAINT mantém os dados do usuário restritos, assim evitam que dados inválidos sejam inseridos no banco.
            
rename table tblprodut to tblproduto; -- Renomeia a tabela            


Drop table tblproduto; -- Exclui a Tabela

show columns from tblproduto; -- Lista colunas e detalhes da tabela
describe tblproduto; -- Idem acima

ALTER TABLE tblproduto change nomep nomeprod nvarchar(25) not null; -- Renomeia a coluna, Altera tamanho ou tipo
ALTER TABLE tblproduto ADD TesteColuna NVARCHAR (30) not null; -- Adiciona Coluna
ALTER TABLE tblproduto DROP COLUMN TesteColuna; -- Exclui coluna
