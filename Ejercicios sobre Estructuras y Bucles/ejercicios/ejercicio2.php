<!DOCTYPE html>
<html>
<head>
    <title>Calculadora de cambio</title>
</head>

<body>
<p>Calcular el cambio en una Maquinita</p> 


    <form action="" method="post">
        <label>Ingrese el numero del producto a comprar</label>
        <input type="number" name="producto" required>
        <input type="submit" value="Comprar">
        <link rel="stylesheet" href="style2.css">
    </form>
    <ul> 
                <li>1-Soda Lata $0.75</li> 
                <li>2-Galletas  $1.00</li> 
                <li>3-Chicles $0.90</li> 
                <li>4-Churros $0.25</li> 
                <li>5-Te de lata $0.75</li> 
                <li>6-Soda de Botella $0.50</li> 
                <li>7-Pañuelitos $0.90</li> 
                <li>8-Dulces $0.25</li> 
                <li>9-Barritas $0.80</li> 
                <li>10-Jugos $1.25</li> 
         </ul>
    <?php
    if ($_SERVER["REQUEST_METHOD"] === "POST") {
   
        $producto = floatval($_POST["producto"]);
        
        if($producto>0 && $producto<=10){
           echo "<form action='' method='post'>
           <label>Ingrese el dinero aqui</label>
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
                $cambio=$dinero-0.75;
                echo "<p>Su producto es Soda de Lata y su cambio es: $cambio</p>";
                break;
                case '2':
                    $cambio=$dinero-1;
                    echo "<p>Su producto es Galletas y su cambio es: $cambio</p>";
                    break;
                    case '3':
                        $cambio=$dinero-0.9;
                        echo "<p>Su producto es Chicles y su cambio es: $cambio</p>";
                        break;
                        case '4':
                            $cambio=$dinero-0.25;
                            echo "<p>Su producto es Churros y su cambio es: $cambio</p>";
                            break;
                            case '5':
                                $cambio=$dinero-0.75;
                                echo "<p>Su producto es Te de lata y su cambio es: $cambio</p>";
                                break;
                                case '6':
                                    $cambio=$dinero-0.50;
                                    echo "<p>Su producto es Soda de Botella y su cambio es: $cambio</p>";
                                    break;
                                    case '7':
                                        $cambio=$dinero-0.9;
                                        echo "<p>Su producto es Pañuelitos y su cambio es: $cambio</p>";
                                        break;
                                        case '8':
                                            $cambio=$dinero-0.25;
                                            echo "<p>Su producto es Dulces y su cambio es: $cambio</p>";
                                            break;
                                            case '9':
                                                $cambio=$dinero-0.8;
                                                echo "<p>Su producto es Barritas y su cambio es: $cambio</p>";
                                                break;
                                                case '10':
                                                    $cambio=$dinero-1.25;
                                                    echo "<p>Su producto es Jugos y su cambio es: $cambio</p>";
                                                    break;
            default:
               
                break;

        }
    }
    ?>
    
</body>
</html>

