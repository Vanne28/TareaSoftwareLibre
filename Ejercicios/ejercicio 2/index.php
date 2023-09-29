<!DOCTYPE html>
<html>
<head>
    <title>Calculadora de Descuento de Crédito Bancario</title>
</head>

<body>
<p>Mi maquina estafadora 3000</p> 
<ul> 
   	<li>1. Churritos $0.50</li> 
   	<li>2. Cerveza Modelo $1.00</li> 
   	<li>3. Chicles $0.90</li> 
</ul>

    <form action="" method="post">
        <label>Ingrese el producto a comprar</label>
        <input type="number" name="producto" required>
        <input type="submit" value="Comprar">
    </form>
    <?php
    if ($_SERVER["REQUEST_METHOD"] === "POST") {
   
        $producto = floatval($_POST["producto"]);
        
        if($producto>0 && $producto<=3){
           echo "<form action='' method='post'>
           <label>Ingrese la  feria</label>
           <input type='number' name='dinero' required>";

            echo"<input type='hidden' name='producto' value='$producto'>";

           echo "<input type='submit' value='Terminar Compra...'>
       </form>";


            

        }

       
        
    }
    if ($_SERVER["REQUEST_METHOD"] === "POST" && isset($_POST["dinero"])){
        $producto = floatval($_POST["producto"]);
        $dinero = floatval($_POST["dinero"]);
        switch ($producto) {
            case '1':
                $cambio=$dinero-0.5;
                echo "<p>Su producto es churro y su cambio es: $cambio</p>";
                break;
                case '2':
                    $cambio=$dinero-1;
                    echo "<p>Su producto es cerveza Modelo y su cambio es: $cambio</p>";
                    break;
                    case '3':
                        $cambio=$dinero-0.9;
                        echo "<p>Su producto es churro y su cambio es: $cambio</p>";
                        break;
            default:
               
                break;
        }
    }

    ?>
    
 
</body>
</html>

