<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "calendariodb";

// Cria a conexão
$conn = new mysqli($servername, $username, $password, $database);
// echo "Conexão bem sucedida";

// Verifica a conexão
if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}
?>