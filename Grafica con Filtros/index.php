<?php
include 'conexion.php';

$totales= isset($_POST['totales']) ? $_POST['totales']: "";

if (isset($_POST["anios"]) && !empty($_POST["anios"])) {
    $anios = $_POST['anios'];
    sort($anios);
    $aniosArray = $anios;
} else {
    $aniosArray = range(2014, 2022);  
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/series-label.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/modules/export-data.js"></script>
    <script src="https://code.highcharts.com/modules/accessibility.js"></script>
    <link rel="stylesheet" href="estilo.css">
    <title>Parcial 2</title>
</head>

<body>
    <form action="index.php" method="post" style="text-align: center;">
    <label for="">Ventas totales anuales mayor o igual que </label>
        <input type="text" name="totales" id="totales" value="<?php echo isset($_POST['totales']) ? $_POST['totales'] : '' ?>"><br><br>
        <label for="">Seleccione el año que desea observar en la grafica</label><br>
      
        <?php

        $anios = "SELECT DISTINCT year(fecha) as anio FROM encabezado_fac WHERE year(fecha) BETWEEN 2013 and 2022 order by (fecha)  ASC";
        $ejecucion = mysqli_query($conexion, $anios);

        while($seleccionAnios = mysqli_fetch_array($ejecucion)){
            $isChecked = in_array($seleccionAnios[0], $aniosArray) ? 'checked' : '';
          
            echo"<label>".$seleccionAnios[0]."</label>";  
            echo"<input type='checkbox' name='anios[]'  value='$seleccionAnios[0]' $isChecked id=''>" ;
           }
        ?>
        <br>
        <br>
        <br>
        <input type="submit" value="Graficar">
    </form>
    <figure class="highcharts-figure">
        <div id="container"></div>
    </figure>

    <script>

    <?php

if ($totales !== "") {
    $consulta = "SELECT DISTINCT YEAR(fecha) as year FROM detalle_fac
    INNER JOIN encabezado_fac ON detalle_fac.codigo=encabezado_fac.codigo
    GROUP BY YEAR(fecha)
    HAVING SUM(venta)  >= $totales
    ORDER BY year ASC";
    
} else {
    $consulta = "SELECT DISTINCT YEAR(fecha) as year FROM detalle_fac
        INNER JOIN encabezado_fac ON detalle_fac.codigo=encabezado_fac.codigo
        ORDER BY year ASC";
}
$ejecucion = mysqli_query($conexion, $consulta);

while ($seleccion= mysqli_fetch_assoc($ejecucion)) {

    if (isset($_POST['anios']) && is_array($_POST['anios'])) {
        $ventaAnio = $_POST['anios'];
        foreach ($ventaAnio as $anio) {
            if($anio===$seleccion['year']){
                echo "'" . $seleccion['year'] . "',";
            }
        }
    } else {
        echo "'" . $seleccion['year'] . "',";
    }
}
?>
  
    Highcharts.chart('container', {
        title: {
            text: 'Empresa XYZ',
            align: 'center'
        },
        subtitle: {
            text: 'Total de ventas anuales de los últimos 10 años',
            align: 'center'
        },
        yAxis: {
            title: {
                text: 'Ventas en dolares'
            }
        },
        xAxis: {
            categories: <?php echo json_encode($aniosArray); ?>,
            accessibility: {
                rangeDescription: 'Desde 2013 al 2022'
            }
        },
        legend: {
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'middle'
        },
        plotOptions: {
            series: {
                label: {
                    connectorAllowed: false
                }
            }
        },
        series: [{
                name: 'Ventas anuales',
                data: [
                    <?php
                
                  $ventaAnio = isset($_POST['anios']) ? $_POST['anios'] : array();
                if($totales ===""){
                    if (!empty($ventaAnio)) {
                        $ventasAnios = implode(',', $ventaAnio);
                        $consulta = "SELECT SUM(venta) as venta, YEAR(fecha) as year FROM detalle_fac
                            INNER JOIN encabezado_fac ON detalle_fac.codigo = encabezado_fac.codigo
                            WHERE YEAR(fecha) IN ($ventasAnios)
                            GROUP BY YEAR(fecha)";
                    } else {
                        $consulta = "SELECT SUM(venta) as venta, YEAR(fecha) as year FROM detalle_fac
                            INNER JOIN encabezado_fac ON detalle_fac.codigo = encabezado_fac.codigo
                            GROUP BY YEAR(fecha)";
                    }
                               $ejecucion = mysqli_query($conexion, $consulta);
                               while ($dato = mysqli_fetch_array($executar)) {
                                   $d=number_format($dato[0],2,'.','');
                                   echo $d.",";
                 }
                }
                else {
                    if (!empty($ventaAnio)) {
                        $ventasAnios = implode(',', $ventaAnio);
                        $consulta = "SELECT SUM(venta) as venta, YEAR(fecha) as year FROM detalle_fac
                            INNER JOIN encabezado_fac ON detalle_fac.codigo = encabezado_fac.codigo
                            WHERE YEAR(fecha) IN ($ventasAnios)
                            GROUP BY YEAR(fecha)
                    HAVING sum(venta) >=$totales";
                    } else {
                        $consulta = "SELECT SUM(venta) as venta, YEAR(fecha) as year FROM detalle_fac
                            INNER JOIN encabezado_fac ON detalle_fac.codigo = encabezado_fac.codigo
                            GROUP BY YEAR(fecha) 
                    HAVING sum(venta) >=$totales";
                    }
                               $ejecucion = mysqli_query($conexion, $consulta);
                               while ($dato = mysqli_fetch_array($ejecucion)) {
                                   $d=number_format($dato[0],2,'.','');
                                   echo $d.",";
                 }
                }
                ?>
                ]
            }],
    });
</script>

</body>

</html>