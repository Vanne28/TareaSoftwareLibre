
$(document).ready(function () {
    cargarPersonas();
});

function mostrarFormulario() {
    
    $("#formularioPersona")[0].reset();
    $("#modalTitulo").text("Agregar Persona");
    $("#modalPersona").modal("show");
}

function cerrarFormulario() {

    $("#modalPersona").modal("hide");
}

function guardarPersona() {
    var id = $("#personaId").val();
    var nombre = $("#nombre").val();
    var telefono = $("#telefono").val();
    var dui = $("#dui").val();

    $.ajax({
        type: "POST",
        url: id ? "update.php" : "create.php",
        data: { id: id, nombre: nombre, telefono: telefono, dui: dui },
        success: function (response) {
            if (response) {
                alert(response);
                cargarPersonas();
                cerrarFormulario();
            }
        },
        error: function (error) {
            console.error("Error al guardar la persona:", error);
        }
    });
}

function editarPersona(id) {
    $.ajax({
        type: "GET",
        url: "read.php",
        data: { id: id },
        dataType: "json",
        success: function (data) {
            $("#personaId").val(data.id);
            $("#nombre").val(data.nombre);
            $("#telefono").val(data.telefono);
            $("#dui").val(data.dui);


            $("#modalTitulo").text("Editar Persona");
            $("#modalPersona").modal("show");
        },
        error: function (error) {
            console.error("Error al obtener los datos de la persona:", error);
        }
    });
}

function eliminarPersona(id) {
    var confirmacion = confirm("¿Estás seguro de que deseas eliminar esta persona?");
    if (confirmacion) {
        $.ajax({
            type: "POST",
            url: "delete.php",
            data: { id: id },
            success: function (response) {
                alert(response);
                cargarPersonas();
            },
            error: function (error) {
                console.error("Error al eliminar persona:", error);
            }
        });
    }
}

function cargarPersonas() {
    $.ajax({
        type: "GET",
        url: "read_all.php",
        dataType: "json",
        success: function (data) {
            $("#tablaPersonas tbody").empty();
            data.forEach(function (persona) {
                var fila = `
                    <tr>
                        <td>${persona.id}</td>
                        <td>${persona.nombre}</td>
                        <td>${persona.telefono}</td>
                        <td>${persona.dui}</td>
                        <td>
                            <button class="btn btn-outline-warning" onclick="editarPersona(${persona.id})">Editar</button>
                            <button class="btn btn-outline-danger" onclick="eliminarPersona(${persona.id})">Eliminar</button>
                        </td>
                    </tr>`;
                $("#tablaPersonas tbody").append(fila);
            });
        },
        error: function (error) {
            console.error("Error al obtener datos de personas:", error);
        }
    });
}
