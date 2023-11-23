<?php
include("../claseModal/include/db.php");
 
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $nombre = $_POST['nombre'];
    $telefono = $_POST['telefono'];
    $dui = $_POST['dui'];

    $query = "INSERT INTO `personas`(`nombre`, `telefono`, `dui`) VALUES ('$nombre','$telefono','$dui')";
    $exec = mysqli_query($conn, $query);

    if($exec){
        echo "Agregado con exito";
    }
}
?>
