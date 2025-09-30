use db_escola_t;

---listar os 3 primeiros alunos(em ordem decrescente)
select top 3 matricula from tb_aluno;
---listar as matriculas dos alunos em ordem crescente
select matricula
from tb_aluno
order by id asc; 
---listar os id's dos 3 primeiros alunos que foram recem cadastrados 
select top 3 matricula
from tb_aluno
order by id desc;
---listar todos os alunos
select nome, cpf 
from tb_aluno
where nome = 'gabriel nunes';  
---listar o nome da escola Torloni
select nome
from tb_escola
where nome = 'Torloni';
---mostre as turmas que tem o nome SEDUC
select nome_turma
from tb_turma
where nome_turma = 'seduc';
---liste quantos alunos existe na base
select count(nome) as qtd_alunos from tb_aluno;
---mostre os alunos mais novos
select min(data_nasc) as idade_mais_velha 
from tb_aluno;
---mostre os alunos mais velhos
select max(data_nasc) as idade_mais_nova 
from tb_aluno
---media de nota que vale nas provas
select avg(nota) as media_nota
from tb_prova;
---exiba a soma dos id's de turma
select sum(id) from tb_aluno
select * from tb_aluno
---mostre os nomes dos alunos mais novos
select max(data_nasc) as idade_mais_nova, nome, data_nasc 
from tb_aluno
group by nome, data_nasc
order by data_nasc desc;
---exibir quantas turmas tem no periodo da tarde
select count(periodo)
from tb_turma
where periodo = 'tarde';

