<?php

include("conexao.php");

$email = $_POST["email"];
$nome = $_POST["nome"];
$nascimento = $_POST["nascimento"];
$senha = $_POST["senha"];
$cpf = $_POST["cpf"];
$modulo = $_POST["modulo"];

// Verifique se o e-mail está cadastrado na tabela tb_email
$sqlEmail = "SELECT * FROM tb_email WHERE email = '$email'";
$resultEmail = $conexao->query($sqlEmail);

if ($resultEmail && $resultEmail->num_rows > 0) {
    // O e-mail está cadastrado na tabela tb_email

    // Realize as operações necessárias para cadastrar o usuário
    $senhaHash = password_hash($senha, PASSWORD_DEFAULT);
    $sqlCadastro = "INSERT INTO usuarios (nome, cpf, email, nascimento, senha, modulo) VALUES ('$nome', '$cpf', '$email', '$nascimento', '$senhaHash', '$modulo')";

    if ($conexao->query($sqlCadastro) === TRUE) {
        // Exiba mensagem de sucesso na interface do usuário
        echo "<script>alert('Cadastro realizado com sucesso');</script>";
        header("Location: ../pages/msg-cadastro.html");
        exit();
    } else {
        // Exiba mensagem de erro na interface do usuário
        echo "<script>alert('Erro ao cadastrar usuário');</script>";
        header("Location: ../pages/cadastro.html");
        exit();
    }
} else {
    // O e-mail não está cadastrado na tabela tb_email
    echo "<script>alert('E-mail não cadastrado');</script>";
    header("Location: ../pages/cadastro.html");
    exit();
}

// Feche a conexão com o banco de dados
$conexao->close();

?>
