<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "calendariodb";

$mysqli = new mysqli($servername, $username, $password, $dbname);

if ($mysqli->connect_error) {
    die("Conexão falhou: " . $mysqli->connect_error);
}

$codigoUsuario = isset($_POST['codigo']) ? $_POST['codigo'] : '';
$email = isset($_POST['email']) ? $_POST['email'] : '';
$nome = isset($_POST['nome']) ? $_POST['nome'] : '';
$nascimento = isset($_POST['nascimento']) ? $_POST['nascimento'] : '';
$senha = isset($_POST['senha']) ? $_POST['senha'] : '';
$hashSenha = sha1($senha);

$cpf = isset($_POST['cpf']) ? $_POST['cpf'] : '';

var_dump($codigoUsuario, $email, $nome, $nascimento, $senha, $cpf);

$query = "SELECT * FROM codigos WHERE Codigo = ?";
$stmt = $mysqli->prepare($query);
$stmt->bind_param('s', $codigoUsuario);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {


    $insertQuery = "INSERT INTO usuarios (email, nome, nascimento, senha, cpf) VALUES (?, ?, ?, ?, ?)";
    $insertStmt = $mysqli->prepare($insertQuery);

    if (!$insertStmt) {
        die("Erro na preparação da consulta de inserção: " . $mysqli->error);
    }

    $insertStmt->bind_param('sssss', $email, $nome, $nascimento, $hashSenha, $cpf);

    if (!$insertStmt->execute()) {
        die("Erro na execução da consulta de inserção: " . $insertStmt->error);
    }

    header("Location: ../pages/msg-cadastro.html");
    exit();
} else {
    $mensagem = "Código incorreto. Tente novamente.";

    header("Location: ../pages/cadastro-administrativo.html");
    exit();
}

$stmt->close();
$insertStmt->close();
$mysqli->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <script>
        alert("<?php echo $mensagem; ?>");
        window.location.href ='cadastro-administrativo.html'
    </script>
</body>
</html>
