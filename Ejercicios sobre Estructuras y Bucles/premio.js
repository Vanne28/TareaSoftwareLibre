document.addEventListener("DOMContentLoaded", function () { 
let boton = document.getElementById("puntos2")
let label = document.getElementById("puntos")
let mensaje = document.getElementById("mensaje")
let puntos = 0

boton.addEventListener("click", function () {

if ( puntos <500 ){
    
    puntos += 50
    label.value = puntos;
    
}

})

})

