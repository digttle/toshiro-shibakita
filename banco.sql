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
-- CADASTRO MATERIAS
INSERT INTO tb_materia ( id, descricao ) VALUES ( 1, 'PORTUGUES' );
INSERT INTO tb_materia ( id, descricao ) VALUES ( 2, 'MATEMATICA' );
INSERT INTO tb_materia ( id, descricao ) VALUES ( 3, 'HISTORIA' );

-- CADASTRO DAS TURMAS
INSERT INTO tb_turma ( id, descricao ) VALUES ( 1, '3-A' );
INSERT INTO tb_turma ( id, descricao ) VALUES ( 2, '2-A' );
INSERT INTO tb_turma ( id, descricao ) VALUES ( 3, '1-B' );

