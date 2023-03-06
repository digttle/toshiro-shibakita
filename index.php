<html>

<head>
<title>Exemplo PHP</title>
</head>
<body>

<?php
ini_set("display_errors", 1);
header('Content-Type: text/html; charset=iso-8859-1');



echo 'Versao Atual do PHP: ' . phpversion() . '<br>';

$servername = "54.234.153.24";
$username = "root";
$password = "Senha123";
$database = "meubanco";

// Criar conexão


$link = new mysqli($servername, $username, $password, $database);

/* check connection */
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}

$valor_rand1 =  rand(1, 999);
$valor_rand2 = strtoupper(substr(bin2hex(random_bytes(4)), 1));
$host_name = gethostname();

/*    -- CADASTRO DAS MATERIAS   */
$query = "INSERT INTO tb_materia ( id, descricao ) VALUES ( 1, 'PORTUGUES' );"
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
INSERT INTO tb_nota ( id_aluno, id_materia, UNI, UNII, UNIII, UNIV ) VALUES ( 3, 3, 3.0, 9.5, 2.5, 9.4 );"INSERT INTO dados (AlunoID, Nome, Sobrenome, Endereco, Cidade, Host) VALUES ('$valor_rand1' , '$valor_rand2', '$valor_rand2', '$valor_rand2', '$valor_rand2','$host_name')";


if ($link->query($query) === TRUE) {
  echo "New record created successfully";
} else {
  echo "Error: " . $link->error;
}

?>
</body>
</html>
