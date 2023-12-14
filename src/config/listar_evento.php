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

$query_events = "SELECT id, title, color, start, end FROM events";

$result_events = $conn->prepare($query_events);

$result_events->execute();

$result_set = $result_events->get_result(); // Get the result set

$eventos = [];

while($row_events = $result_set->fetch_assoc()){

    extract($row_events);

    $eventos[] = [
        'id' => $id,
        'title' => $title,
        'color' => $color,
        'start' => $start,
        'end' => $end,
    ];

}

echo json_encode($eventos);

?>