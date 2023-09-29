<?php
include 'conf.php';
$opcion = $_POST['opcion'];
$nombre =$_POST ['nombre'];
$apellido =$_POST['apellido'];
$correo=$_POST['correo'];
$usuario = $_POST['usuario'];
$rol =$_POST['rol'];
$pwd=$_POST['pwd'];

if($opcion == 1){
    //insert
    $query = "INSERT INTO usuarios(id_usuario,nombre,apellido,correo,usuario,rol,contra)
    VALUES(NULL, '$nombre','$apellido','$correo','$usuario','$rol','$pwd')";
    $ejecutar = mysqli_query($conexion,$query);
    if($ejecutar){
        header("Location: view/home.php");
    }else
    {
        header("Location: view/agregar.php");
    }

}else if ($opcion==2){
    //update
    $id=$_POST['id'];
    $query = "UPDATE usuarios SET nombre='$nombre', apellido='$apellido' , correo='$correo' , usuario='$usuario' , rol='$rol' , contra='$pwd' where id_usuario='$id'";
    $ejecutar= mysqli_query($conexion, $query);
    if($ejecutar){
        header("Location: view/home.php");
    }else
    {
        header("Location: view/update.php");
    }
}else{
    //delate

}
?>