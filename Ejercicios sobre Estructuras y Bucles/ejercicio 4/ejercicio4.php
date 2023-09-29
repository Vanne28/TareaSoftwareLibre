<!DOCTYPE html>
<html>
<head>
    <title>Ejercicio 4</title>
</head>

<body style="background-color: pink;">
   
    <?php
   $restante =0;
    if ($_SERVER["REQUEST_METHOD"] === "POST") {
        $jugada = floatval($_POST["jugada"]);
       if($jugada>0){
        
        $restante=$jugada-1;

        if($restante==0){
           echo "<p>Su saldo es insuficiente, deposita directamente</p>";
        }else{
            echo"<p>Sigue Jugando...</p>";

        }
        }
        
    }
    ?>
     <form action="" method="post">
        <label>Bienvenidos a la maquina piola de SF,cuesta $1 cada jugada ingrese el dinero si desea jugar</label>
        <input type="number" name="jugada" value="<?php echo $restante ?>">
        <input type="submit" value="Jugar">
    </form>
    
</body>
</html>