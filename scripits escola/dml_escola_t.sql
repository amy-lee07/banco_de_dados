---usar um banco ja criado
use db_escola_t;

---inserir um registro na tabela escola
insert into tb_escola (nome, endereco)
values('torloni', 'estrada das lagrimas, 579 - são jose');

select * from tb_escola;

---inserir um registro na tabela turma
insert into tb_turma (serie, periodo, numero_sala, nome_turma)
values (2, 'manhã', 09, '');

select * from tb_turma;

---inserir um registro na tabela prova
insert into tb_prova(nome_professor, materia, horario, nota, data_prova)
values ('Rogeria','matematica', '14:20:00', 10, '2025-09-26');

select * from tb_prova;

---inserir um registro na tabela aluno
insert into tb_aluno (nome, cpf, matricula, data_nasc, id_escola)
values ('Sônia Luciana', '63024243569', 'sonia630', '1969-06-19', 1),
 ('julia fernanda', '12345678910', 'julia630', '1980-05-13', 1),
 ('gabriel nunes', '11334455667', 'biel555', '1990-12-15', 1),
 ('pedro joao', '98567423109', 'joao09', '2000-07-15', 1),
 ('luis ferbis', '64543248901', 'ferbis980', '1998-02-12', 1),
 ('giovana lorena', '87688453264', 'lore880', '1997-01-01', 1);

select * from tb_aluno;
