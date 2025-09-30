---Este comando cria um novo banco de dados 
CREATE DATABASE db_escola_t;

----esse comando usa o BD
use db_escola_t;

----este comando cria uma nova tabela
CREATE TABLE tb_escola(
 id			int identity(1,1) primary key, 
 nome		nvarchar(255) not null,
 endereco	nvarchar(255) not null,
);

---DQL realiza consultas de um respectivo banco
select nome from tb_escola;

------TABELA TURMA
CREATE TABLE tb_turma(
	id				int identity(1,1) primary key,
	serie			int 			not null,
	periodo			nchar(5)		not null,
	numero_sala		tinyint			not null,
	nome_turma		nvarchar(100)	not null
);
select * from tb_turma
---------TABELA PROVA
CREATE TABLE tb_prova(
	id					int identity(1,1) primary key,
	nome_professor		nvarchar(255)		not null,
	materia				nvarchar(255)		not null,
	horario				time				not null,
	nota				decimal(3, 1)		not null,
	data_prova			date				not null
	
);
select * from tb_prova


----------TABELA ALUNO
CREATE TABLE tb_aluno(
	id	int	identity(1,1) primary key,
	nome nvarchar(255)		not null,
	cpf  nchar (11)			unique not null,
	matricula nvarchar(10)  unique not null,
	data_nasc date				   not null,

	id_escola int foreign key references tb_escola(id)
);
select * from tb_aluno;
-------TABELA INTERMEDIARIA TURMAPROVA
CREATE TABLE tb_turma_prova(
	id_turma	int		not null,
	id_prova	int		not null,

	primary key(id_turma, id_prova)

);
select * from tb_turma_prova;

--------ADICIONAR UMA NOVA COLUNA A UMA RESPECTIVA TABELA
/*alter table tb_aluno
add id_escola int not null foreign key references tb_escola(id);*/
----------MODIFICAR UMA TABELA
/*alter table tb_aluno
alter column id_escola int not null*/	