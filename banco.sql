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
