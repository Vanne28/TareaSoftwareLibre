<?php
include("../claseModal/include/db.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $id = $_POST['id'];
    $nombre = $_POST['nombre'];
    $telefono = $_POST['telefono'];
    $dui = $_POST['dui'];

    $query = "UPDATE `personas` SET `nombre`='$nombre',`telefono`='$telefono',`dui` = '$dui' WHERE id = '$id'";
    $exec = mysqli_query($conn, $query);

    if($exec){
        echo "Editado con exito";
    }
}
?>
