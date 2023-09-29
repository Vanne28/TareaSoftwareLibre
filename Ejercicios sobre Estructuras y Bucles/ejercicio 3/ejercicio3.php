<!DOCTYPE html>
<html>
<head>
    <title>Ejercicio 3</title>
</head>
<body style="background-color: pink;">
    <h2>Pokemon gif.</h2>
    <form action="" method="post">
        <label>Ingrese la cantidad de pokemon => </label>
        <input type="number" name="cantidad"  required>
        <input type="submit" value="Crear">
    </form>

    <?php
    if ($_SERVER["REQUEST_METHOD"] === "POST") {
   
        $cantidad = floatval($_POST["cantidad"]);
        echo"<div style='display:flex'>";
        for ($i=0; $i <$cantidad ; $i++) { 
            echo "<div style='width: 70px; height: 70px; margin: 4px; display: flex; align-items: center; justify-content: center;'>";
            echo"<img style='max-width: 100%; max-height: 100%;'  src='pokemon.gif'>";
            echo "</div>";
        }
        echo "</div>";
        
    }
    ?>
</body>
</html>
