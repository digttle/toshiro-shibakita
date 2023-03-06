-- MATERIAS
CREATE TABLE tb_materia
(
   id BIGINT PRIMARY KEY,
   descricao TEXT NOT NULL
 );

-- TURMAS
CREATE TABLE tb_turma
(
  id BIGINT PRIMARY KEY,
  descricao TEXT NOT NULL
);

-- ALUNOS
CREATE TABLE tb_aluno
(
  id BIGINT PRIMARY KEY,
  nome TEXT NOT NULL,
  id_turma BIGINT
);

-- NOTAS
CREATE TABLE tb_nota
(
   id_materia BIGINT NOT NULL,
   id_aluno BIGINT NOT NULL,
   UNI REAL,
   UNII REAL,
   UNIII REAL,
   UNIV REAL,
   PRIMARY KEY( id_materia, id_aluno )
 );

-- ALUNOS -> TURMA (UM aluno possui NENHUMA ou APENAS UMA turma)
ALTER TABLE tb_aluno ADD FOREIGN KEY (id_turma) REFERENCES tb_turma;

-- NOTA -> ALUNO (UMA nota possui obrigatoriamente APENAS UM aluno)
ALTER TABLE tb_nota ADD FOREIGN KEY (id_aluno) REFERENCES tb_aluno;

-- NOTA -> MATERIA (UMA nota possui obrigatoriamente APENAS UMA materia)
ALTER TABLE tb_nota ADD FOREIGN KEY (id_materia) REFERENCES tb_materia;

-- CADASTRO DAS MATERIAS
INSERT INTO tb_materia ( id, descricao ) VALUES ( 1, 'PORTUGUES' );
INSERT INTO tb_materia ( id, descricao ) VALUES ( 2, 'MATEMATICA' );
INSERT INTO tb_materia ( id, descricao ) VALUES ( 3, 'HISTORIA' );

-- CADASTRO DAS TURMAS
INSERT INTO tb_turma ( id, descricao ) VALUES ( 1, '3-A' );
INSERT INTO tb_turma ( id, descricao ) VALUES ( 2, '2-A' );
INSERT INTO tb_turma ( id, descricao ) VALUES ( 3, '1-B' );

-- CADASTRO DOS ALUNOS
INSERT INTO tb_aluno ( id, nome, id_turma ) VALUES ( 1, 'JOAO', 1 );
INSERT INTO tb_aluno ( id, nome, id_turma ) VALUES ( 2, 'MARIA', 1 );
INSERT INTO tb_aluno ( id, nome, id_turma ) VALUES ( 3, 'JESUS', 2 );

-- CADASTRO DE NOTAS (SOMENTE JESUS do 2-A)
INSERT INTO tb_nota ( id_aluno, id_materia, UNI, UNII, UNIII, UNIV ) VALUES ( 3, 1, 9.0, 8.5, 5.5, 1.4 );
INSERT INTO tb_nota ( id_aluno, id_materia, UNI, UNII, UNIII, UNIV ) VALUES ( 3, 2, 8.5, 4.5, 6.5, 5.2 );
INSERT INTO tb_nota ( id_aluno, id_materia, UNI, UNII, UNIII, UNIV ) VALUES ( 3, 3, 3.0, 9.5, 2.5, 9.4 );
