<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "calendariodb";
// $port = 3306;


try {

    $conn = new PDO("mysql:host=$servername; dbname=" . $database, $username, $password);

    echo "Conexão com o banco de dados bem sucedida!";

    /* Conexões que pedem portas
    $conn = new PDO("mysql:host=$servername;port=$port; dbname=" . $database, $username, $password);

    echo "Conexão com o banco de dados bem sucedida!" */

} catch (PDOException $err){
    die("Erro! A conexão com o banco de dados não foi possível devido ao erro " . $err->getMessage());

}

?>