<?php
include("../claseModal/include/db.php");
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>CRUD Personas</title>
</head>

<body style="background-color: black; color:aliceblue; text-align:center;">
    <div class="container mt-4">
        <h1 class="mb-4">CRUD Personas</h1>
        <button class="btn btn-outline-info" onclick='mostrarFormulario()'>Agregar Persona</button>
        <br>
        <br>
        <table  class="table table-dark border-primary" id="tablaPersonas" style="color: aliceblue; text-align:center;">
            <thead class="table-light"  style="color:blueviolet; text-align:center;" >
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Teléfono</th>
                    <th>DUI</th>
                    <th>Acciones</th>
                </tr>
            </thead>

            <tbody>

            </tbody>
        </table>
    </div>


    <div class="modal" id="modalPersona" style="color:black;">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalTitulo"></h5>
                    <button type="button" class="close" data-dismiss="modal" onclick="cerrarFormulario()">&times;</button>
                </div>
                
                <div class="modal-body" >
                    <form id="formularioPersona">
                        <div class="form-group">
                            <input type="hidden" id="personaId">
                            <label for="nombre">Nombre:</label>
                            <input type="text" class="form-control" id="nombre" name="nombre" required>
                        </div>

                        <div class="form-group">
                            <label for="telefono">Teléfono:</label>
                            <input type="text" class="form-control" id="telefono" name="telefono" required>
                        </div>

                        <div class="form-group">
                            <label for="dui">DUI:</label>
                            <input type="text" class="form-control" id="dui" name="dui" required>
                        </div>
                    </form>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-success" onclick="guardarPersona()">Guardar</button>
                    <button type="button" class="btn btn-outline-secondary" data-dismiss="modal" onclick="cerrarFormulario()">Cerrar</button>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script src="assets/js/script.js"></script>
</body>

</html>