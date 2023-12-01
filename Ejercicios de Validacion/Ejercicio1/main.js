
    //Digite un nombre y evalue si inicia con M, O, P ó S
function evaluarNombre(nombre) {
    // Obtener la primera letra del nombre y convertirla a mayúsculas
    var primeraLetra = nombre.charAt(0).toUpperCase();

    // Verificar si la primera letra es M, O, P o S
    if (primeraLetra === 'M' || primeraLetra === 'O' || primeraLetra === 'P' || primeraLetra === 'S') {
        console.log("El nombre comienza con M, O, P o S.");
    } else {
        console.log("El nombre no comienza con M, O, P o S.");
    }
}

// Ejemplo de uso
evaluarNombre("Marcos");   // Salida esperada: El nombre comienza con M, O, P o S.
evaluarNombre("Camila");  // Salida esperada: El nombre no comienza con M, O, P o S.

