<!DOCTYPE html>
<html>
<head>
    <title>Premios por Puntos</title>
    <script src="premio.js" ></script>
</head>
<body style="background-color: pink;">
    <h1>Premios por Puntos</h1>
     <label id= "mensaje"for=""></label>
     <button id="puntos2" >Presiona para jugar</button>
     <ul>
     <li> 100pts gana $40.00</li>
     <li>200pts gana $60.00</li>
     <li>400pts gana $80.00</li>
     <li>500pts gana $100.00</li>
     
     </ul>
     <form action="" method="post">
        <label>Canjee los puntos </label>
        <input type="number" id="puntos" name="premios" >
        <input type="submit" value="Canjear">
        
    </form>
    <?php
     if ($_SERVER["REQUEST_METHOD"] === "POST") {
   
        $puntos = floatval($_POST["premios"]);
        
        if($puntos==100){
           echo "<p>Gano 50 dolares</p>";

        }
  
    }
    
    ?>


</body>
</html>
