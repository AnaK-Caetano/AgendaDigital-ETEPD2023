<?php

$hostname = 'localhost';
$username = 'root';
$password = '';
$database = 'calendariodb';

$conexao = new mysqli($hostname, $username, $password, $database);
    if ($conexao->connect_errno) {
        echo "Falha ao conectar: (" .$conexao->connect_errno . ") " . $conexao->connect_error;

 }
?>