<?php

$hostname = 'localhost';
$username = 'root';
$password = '';
$database = 'calendariodb';

$conexao = new mysqli($hostname, $username, $password, $database);
    if ($conexao->connect_errno) {
        echo "Falha ao conectar: (" .$conexao->connect_errno . ") " . $conexao->connect_error;

}

$query_events = "SELECT id, title, color, start, end FROM events";

$result_events = $conexao->prepare($query_events);

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
