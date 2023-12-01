<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--CND BOOTSTRAP-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <title>Ejercicio 3</title>
</head>

<body>
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a type="button" class="btn btn-outline-warning" href="../index.php">Regresar</a>
        </nav>
        
        <form action="" id="informacion" class="form-group">
        <label for="">Identifique al final de la cadena si el correo escrito es gmail.com</label> <br>
            <input type="email" class="form-control" pattern=".*@gmail\.com$" required> <br>
            <input type="submit" class="btn btn-outline-success" value="Enviar">
            <a type="button" class="btn btn-outline-danger" href="../index.php">Cancelar</a>
        </form>
    </div>
</body>
</html>