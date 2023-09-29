<?php

session_start();
if($_SESSION['ok'] === null) {
    header("Location: index.php");
}
include "conf.php";

    $id=$_GET['id'];
    $query = "DELETE FROM usuarios WHERE id_usuario='$id'";
    $ejecutar= mysqli_query($conexion,$query);
    if($ejecutar){
        header("Location: view/home.php");
    }else
    {
        header("Location: view/home.php");
    }
?>