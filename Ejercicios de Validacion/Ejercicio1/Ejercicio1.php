<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--CND BOOTSTRAP-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <title>Ejrecicio 1</title>
</head>

<body>

    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a type="button" class="btn btn-outline-warning" href="../index.php">Regresar</a>
        </nav>
        <form action="" id="informacion" class="form-group">
            <label for="">Digite un nombre y evalue si inicia con M, O, P ó S</label> <br>
            <input type="text" class="form-control" id="nombre" pattern="[MOPS].*" required><br>
            <input type="submit" class="btn btn-outline-success" value="Enviar">
            <a type="button" class="btn btn-outline-danger" href="../index.php">Cancelar</a>
        </form>
    </div>
</body>
<script src="main.js"></script>
</html>