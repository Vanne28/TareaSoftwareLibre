<?php
include "../claseModal/include/db.php";

$sql = "SELECT * FROM personas";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $personas = array();

    while ($row = $result->fetch_assoc()) { 
        $personas[] = array(
            'id' => $row['id'],
            'nombre' => $row['nombre'],
            'telefono' => $row['telefono'],
            'dui' => $row['dui']
        );
    }
    echo json_encode($personas);
} else {
    echo json_encode(array());
}

$conn->close();
?>
