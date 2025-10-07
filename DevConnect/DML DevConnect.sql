--DML
USE db_devconnect1

insert into tb_usuario (nome_completo, nome_usuario, email, senha, foto_perfil_url)
values ('Amy Lee', '4mylee', 'amy@123.com','amy123', 'Foto.Perfil' );

insert into tb_publicacao (id_usuario, descricao, imagem_url,data_publicacao)
values (1, 'bem-vindo a empresa DevConnect', 'https: wwww.Imagem.DevConnect', '2025-10-02');

insert into tb_seguidor (id_usuario_seguir, id_usuario_seguida)
values (1, 2);

insert into tb_comentarios (id_usuario, id_publicacao, texto, data_comentario)
values (1,1, 'somos uma empresa especializada em tecnologia', '2025-07-25' );

insert into tb_curtidas (id_usuario, id_publicacao)
values (1, 1);