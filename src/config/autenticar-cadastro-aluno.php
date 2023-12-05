<?php 
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "calendariodb";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$email = $_POST["email"];
$nome = $_POST["nome"];
$nascimento = $_POST["nascimento"];
$senha = $_POST["senha"];
$cpf = $_POST["cpf"];
$modulo = $_POST["modulo"];

$sqlEmail = "select count(*) as total from tb_email where email = '$email'";
$resultEmail = mysqli_query($conn, $sqlEmail);
$rowEmail = mysqli_fetch_assoc($resultEmail);


if($rowEmail['total'] == 1) {
  $sql = "INSERT INTO usuarios (email, nome, nascimento,senha, cpf, modulo)
  VALUES ('$email', '$nome', '$nascimento ', '$senha','$cpf','$modulo')";

    if ($conn->query($sql) === TRUE) {
        header("Location: msg-cadastro.html");
      } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
      }
    }else{
        echo  "<script>alert('Email não existe no nosso cadastrado');</script>";
      header("refresh: 1; cadastro.html");
      exit;
    }

$conn->close();

?>