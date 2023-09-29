
// Solicitamos al usuario que operacion quiere hacer
var operacion = prompt("Bienvenido!!!\nSelecciona la operación que deseas realizar:\n1. Suma\n2. Resta\n3. Multiplicación\n4. División");
// cambiamos la entrada a numeros enteros
operacion = parseInt(operacion);
//confirmamos que la entrada es valida
if (operacion >= 1 && operacion <= 4) {
    // pedimos al usuario los dos numeros para realizar la operacion que selecciono arriba
    var num1 = parseFloat(prompt("Ingresa el primer número:"));
    var num2 = parseFloat(prompt("Ingresa el segundo número:"));

    var resultado;
    // realizamos la operación seleccionada
    if (operacion === 1) {
        resultado = num1 + num2;
        document.write("El resultado de la suma es de: " + resultado);
    } else if (operacion === 2) {
        resultado = num1 - num2;
        document.write("El resultado de la resta es de: " + resultado);
    } else if (operacion === 3) {
        resultado = num1 * num2;
        document.write("El resultado de la multiplicación es de: " + resultado);
    } else {
        //por si el segundo número ingresado es cero y asi evitar la división por cero
        if (num2 === 0) {
            document.write("Error: No se efectuar la division porque el numero que ingreso fue cero.");
        } else {
            resultado = num1 / num2;
            document.write("El resultado de la división es de: " + resultado);
        }
    }
    //agregamos un mensaje para que si el usuario ingresa un numero mayor a 4 o menor a 1 le diga que ingrese uno valido
} else {
    document.write("Operación no válida. Por favor, selecciona una operación del 1 al 4.");
}

