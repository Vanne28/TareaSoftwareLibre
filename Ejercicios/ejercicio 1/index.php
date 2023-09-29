<!DOCTYPE html>
<html>
<head>
    <title>Calculadora de Descuento de salario</title>
</head>
<body>
    <h2>Calculadora para solicitar Descuento de Crédito Bancario</h2>
    <form action="" method="post">
        <label>Ingrese su salario mensual:</label>
        <input type="number" name="salario" step="0.01" required>
        <input type="submit" value="Calcular Descuento">
    </form>

    <?php
    if ($_SERVER["REQUEST_METHOD"] === "POST") {
        // Obtenemos el salario ingresado por el usuario
        $salario = floatval($_POST["salario"]);

        // Función para calcular el descuento en función del salario
        function calcularDescuento($salario) {
            if ($salario <= 450) {
                return $salario * 0.08;
            } elseif ($salario <= 600) {
                return $salario * 0.15;
            } elseif ($salario <= 800) {
                return $salario * 0.18;
            } else {
                return $salario * 0.20;
            }
        }

        // Calculamos el descuento llamando a la función
        $descuento = calcularDescuento($salario);

        // Mostramos el resultado al usuario
        echo "<p>Descuento mensual: $" . number_format($descuento, 2) . "</p>";
    }
    ?>
</body>
</html>
