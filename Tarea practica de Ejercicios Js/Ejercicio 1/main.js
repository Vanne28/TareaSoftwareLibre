

function guardar() {
    var nombre = document.getElementById("nombre").value;
    var edad = document.getElementById("edad").value;
    var email = document.getElementById("email").value;
    var telefono = document.getElementById("telefono").value;
    var ciudad = document.getElementById("ciudad").value;

    console.log("Hola mi nombre es " + nombre + " tengo " + edad + " años" );
    console.log("Mi correo es " + email + ", mi numero de telefono es " + telefono + " y soy de la ciudad de " + ciudad);

}