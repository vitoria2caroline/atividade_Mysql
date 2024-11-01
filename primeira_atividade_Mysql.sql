create database db_Escola;
use db_escola;
drop database db_Escola;

create table tb_aluno(
pk_id_aluno int auto_increment primary key,
nome_aluno varchar (100) not null,
data_nasc_aluno date not null,
cpf_aluno char (11) not null,
endereco_aluno varchar (100),
Ra_aluno varchar (11) not null
);

insert into tb_aluno(nome_aluno, data_nasc_aluno, cpf_aluno, endereco_aluno, Ra_aluno)
values('Isabela clemente da silva', '1989-03-20', '12345678910', 'Rua Nove, 10','13348678910'),
('Josiane Domingos de Souza', '2004-06-05', '11345678910', 'Rua Rio Capiberibe, 07','19345778910'),
('Vitória Caroline Neves', '2005-03-20', '12145678910', 'Rua Osasco, 10','18945678930'),
('Ricardo ribeito de matos', '2005-01-15', '12315678910', 'Rua Um, 10', '14385678920'),
('wesley de rocha', '2004-03-15', '19345678910', 'Rua Camilo Cortellini, 32', '14385672910'),
('Jessica Honoratto', '1994-07-03', '15237517890', 'Rua Camilo Cortellini, 78','12645878110' ),
('Jaqueline Santos', '1997-10-19', '18345616910', 'Rua Sigismundo, 10', '12342674310'),
('Roseni Alves', '1969-12-15', '12345471980', 'Rua Franscisco Floridi, 38','12945478610' ),
('Ana Julia Silva', '2003-07-25', '12338671910', 'Rua Sete de Setembro, 63', '12347679910'),
('Diana Figueredo', '2004-08-02', '14345679110', 'Rua Giuseppe, 36','92345673910');

describe  tb_aluno;
select * from tb_aluno;

create table tb_aula(
id_aula int auto_increment primary key,
horario_aula time not null,
local_aula varchar (100) not null,
data_aula date not null,
materia_aula varchar (20),
descricao_aula varchar (1000) not null
);

insert into tb_aula(horario_aula, local_aula, data_aula, materia_aula, descricao_aula)
values('16:28:25', 'escola municipal josé maria rodriguez', '2004-06-05', 'matematica','subtração'),
('10:38:25', 'escola municipal josé maria rodriguez', '2005-03-20', 'português','linguas'),
('15:58:25', 'escola municipal josé maria rodriguez', '2005-03-20', 'história','segunda guerra mundial'),
('19:48:25', 'escola municipal josé maria rodriguez', '2005-03-20', 'ciências', 'dna'),
('12:34:25', 'escola municipal josé maria rodriguez', '2005-03-20', 'projeto de vida ', 'carreira'),
('11:28:25', 'escola municipal josé maria rodriguez', '2005-03-20', 'artes ','pintura ' ),
('9:18:25', 'escola municipal josé maria rodriguez', '2005-03-20', 'filosofia', 'plutão'),
('10:24:25', 'escola municipal josé maria rodriguez', '2005-03-20', 'inglês','A,B,D' ),
('2:21:25', 'escola municipal josé maria rodriguez', '2005-03-20', 'educação fisica', 'alongamento'),
('3:26:25', 'escola municipal josé maria rodriguez', '2005-03-20', 'programação','MySQL');

describe  tb_aula;
select * from tb_aula;

create table tb_professor(
pk_id_professor int auto_increment primary key,
nome_professor varchar (100) not null,
data_nasc_professor date not null,
cpf_professor char (11) not null,
endereco_professor varchar (100),
Re_professor varchar (11) not null
);

insert into tb_professor(nome_professor, data_nasc_professor, cpf_professor, endereco_professor, Re_professor)
values('Isabela clemente da silva', '1989-03-20', '12345678910', 'Rua Nove, 10','13348678910'),
('Josiane Domingos de Souza', '2004-06-05', '11345678910', 'Rua Rio Capiberibe, 07','19345778910'),
('Vitória Caroline Neves', '2005-03-20', '12145678910', 'Rua Osasco, 10','18945678930'),
('Ricardo ribeito de matos', '2005-01-15', '12315678910', 'Rua Um, 10', '14385678920'),
('wesley de rocha', '2004-03-15', '19345678910', 'Rua Camilo Cortellini, 32', '14385672910'),
('Jessica Honoratto', '1994-07-03', '15237517890', 'Rua Camilo Cortellini, 78','12645878110' ),
('Jaqueline Santos', '1997-10-19', '18345616910', 'Rua Sigismundo, 10', '12342674310'),
('Roseni Alves', '1969-12-15', '12345471980', 'Rua Franscisco Floridi, 38','12945478610' ),
('Ana Julia Silva', '2003-07-25', '12338671910', 'Rua Sete de Setembro, 63', '12347679910'),
('Diana Figueredo', '2004-08-02', '14345679110', 'Rua Giuseppe, 36','92345673910');


describe  tb_professor;
select * from tb_professor;
alter table tb_professor /* alterar coluna*/
add column estado_civil_professor varchar(20), /*adicionar colunas */
add column nome_mae_professor varchar(100);

alter table tb_professor modify column cpf_professor char (15); /* altera uma coluna */
alter table tb_professor; /* alterar coluna*/
insert into tb_professor(nome_professor, data_nasc_professor, cpf_professor, endereco_professor, Re_professor, estado_civil_professor,
nome_mae_professor) values ('sandra','1975-08-24','12345678910','rua das orquideas, 64','12435698454','solteira', 'mariana'),
('sandra','1975-08-24','12345678910','rua das orquideas, 64','12435698454','divorciada', 'mariana'),
('sandra','1975-08-24','12345678910','rua das orquideas, 64','12435698454','casada', 'zelia'); /* adicionar registros */

alter table tb_professor /* alterar coluna*/
add column cidade_professor varchar(20);
 
 alter table tb_professor
 drop column cidade_professor;
 
  alter table tb_professor
  add column materia_professor varchar (20);
  select * from tb_professor;
  
  update tb_professor 
  set materia_professor = 'artes'
  where pk_id_professor in (9,10,11,12,13);
  
  delete from tb_professor 
  where pk_id_professor in (7,10,12);
  
  alter table tb_professor 
  add column email_professor varchar(50);
  
update tb_professor 
set email_professor = 'solicitação em andamento'; /* atualizar campo de todos os registros, monstra uma mensagem*/

alter table tb_professor modify column estado_civil_professor char (10);

alter table tb_professor /* alterar coluna*/
add column formacao_professor varchar(50);
start transaction; /*apaga os dados, mas armazena */ 
rollback;/*recupera  */ 
commit /* zerar essa configuração*/ 
  
  





