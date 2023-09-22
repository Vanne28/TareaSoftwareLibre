<?php

require '../conf/_con.php';
if (isset($_POST["nombre"])) {

    $nombre = $_POST["nombre"];
    $existencia = $_POST["existencia"];
    $precio = $_POST["precio"];
    $fecha = $_POST["fecharegistro"];

    //Crear la ruta/directorio donde se guardara la imagen
    $carpeta = '../imgServer/';
    //Separar la extension
    $infoExtension = explode(".", $_FILES["imagen"]["name"]);
    //Extension de la imagen
    $extension = $infoExtension[1];
    $permitted_chars = '0123456789abcdefghijklmnopqrstuvwxyz';
    //Generar nombre aleatorio de imagen
    $aleatorio = substr(str_shuffle($permitted_chars), 0, 10);

    $nombreImagen = $aleatorio . "." . $extension;

    $imagen = $carpeta . $aleatorio . "." . $extension;

    //Instancia de subida de imagen
    $tmp = $_FILES["imagen"]["tmp_name"];

    move_uploaded_file($tmp, $imagen);

    $query = "INSERT INTO medicamentos(`nombre`, `existencia`, `fecharegistro`, `imagen`, `precio`) 
    VALUES (:nombre,:existencia,:fecharegistro,:imagen,:precio)";

    $ejecutar = $pdo->prepare($query);
    $ejecutar->bindParam(":nombre", $nombre);
    $ejecutar->bindParam(":existencia", $existencia);
    $ejecutar->bindParam(":fecharegistro", $fecha);
    $ejecutar->bindParam(":imagen", $nombreImagen);
    $ejecutar->bindParam(":precio", $precio);
    $ejecutar->execute();
    header('Location: ../index.php');
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <title>Agregar</title>
</head>

<body style="background-color: #333;">
    <div class="container mt-5" style="color: aliceblue;">
        <h2>Agregar Medicamento</h2>
        <br>
        <form action="agregar.php" method="POST" enctype="multipart/form-data">
            <div class="form-group">
                <label for="nombre">Nombre Medicamento:</label>
                <input type="text" class="form-control" id="nombre" name="nombre" required>
            </div>
            <div class="form-group">
                <label for="existencia">Existencia:</label>
                <input type="number" class="form-control" id="existencia" name="existencia" required>
            </div>
            <div class="form-group">
                <label for="fecharegistro">Fecha de Registro:</label>
                <input type="date" class="form-control" id="fecharegistro" name="fecharegistro" required>
            </div>
            <div class="form-group">
                <label for="imagen">Imagen:</label>
                <input type="file" class="form-control-file" id="imagen" name="imagen" accept="image/*" required>
            </div>
            <div class="form-group">
                <label for="precio">Precio:</label>
                <input type="number" step="0.01" class="form-control" id="precio" name="precio" required>
            </div>

            <input type="submit" class="btn btn-primary" value="Agregar">

            <a type="submit" class="btn btn-danger" href="./../index.php">Salir</a>

            <p id="result"></p>

        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <script>
        // Obtén una referencia al botón por su ID
        let button = document.getElementById("agregar");
        // Agrega un evento de clic al botón
        button.addEventListener("click", function() {

            document.getElementById("result").innerHTML = "¡Medicamento agregado con exito!";
        });
    </script>

</body>

</html>