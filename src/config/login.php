<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "calendariodb";

$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$cpf = $_POST["cpf"];
$senha = $_POST["senha"];

$sql = "SELECT * FROM usuarios WHERE cpf = '$cpf' AND senha = '$senha'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Login successful
    header("Location: ../pages/calendario-adm-crud.html");
} else {
    // Login failed
    echo "<script>alert('CPF ou senha incorretos');</script>";
    header("refresh: 1; ../pages/login.html");
}

$conn->close();
?>
