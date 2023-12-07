<?php

include("conexao.php");

$codigoAcesso = $_POST["codigo"];
$emailUsuario = $_POST["email"];

// Verifique se o e-mail está cadastrado na tabela tb_email
$sqlEmail = "SELECT * FROM tb_email WHERE email = '$emailUsuario'";
$resultEmail = $conexao->query($sqlEmail);

if ($resultEmail && $resultEmail->num_rows > 0) {
    // O e-mail está cadastrado na tabela tb_email

    // Verifique o código de acesso
    $sqlCodigo = "SELECT * FROM codigos WHERE Codigo = '$codigoAcesso'";
    $resultCodigo = $conexao->query($sqlCodigo);

    if ($resultCodigo && $resultCodigo->num_rows > 0) {
      
        $nome = $_POST["nome"];
        $cpf = $_POST["cpf"];
        $nascimento = $_POST["nascimento"];
        $senha = $_POST["senha"];

        $senhaHash = password_hash($senha, PASSWORD_DEFAULT);
        $sqlCadastro = "INSERT INTO usuarios (nome, cpf, email, nascimento, senha) VALUES ('$nome', '$cpf', '$emailUsuario', '$nascimento', '$senhaHash')";
        
        if ($conexao->query($sqlCadastro) === TRUE) {
            echo "<script>alert('Cadastro realizado com sucesso');</script>";
            header("Location: ../pages/msg-cadastro.html");
            exit();
        } else {
            echo "<script>alert('Erro ao cadastrar usuário');</script>";
            header("Location: ../pages/cadastro-administrativo.html");
            exit();
        }

    } else {
        // O código de acesso não está cadastrado
        echo "<script>alert('Código de acesso inválido');</script>";
        header("Location: ../pages/cadastro-administrativo.html");
        exit();
    }
} else {
    // O e-mail não está cadastrado na tabela tb_email
    echo "<script>alert('E-mail não cadastrado');</script>";
    header("Location: ../pages/cadastro-administrativo.html");
    exit();
}

// Feche a conexão com o banco de dados
$conexao->close();
?>