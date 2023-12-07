<?php

include("conexao.php");

$cpf = $_POST["cpf"];
$senha = $_POST["senha"];

$sql = "SELECT * FROM usuarios WHERE cpf = '$cpf'";
$result = $conexao->query($sql);

if ($result && $result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $hashSenhaArmazenada = $row['senha'];

    if (password_verify($senha, $hashSenhaArmazenada)) {
        // Senha correta, login bem-sucedido
        header("Location: ../pages/calendario-adm-crud.html");
        exit();
    } else {
        // Senha incorreta
        echo "<script>alert('CPF ou senha incorretos');</script>";
        header("refresh: 1; ../pages/login.html");
        exit();
    }
} else {
    // Usuário não encontrado
    echo "<script>alert('Usuário não cadastrado');</script>";
    header("refresh: 1; ../pages/cadastro.html");
    exit();
}

$conexao->close();
?>