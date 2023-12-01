const formulario =document.getElementById('informacion');
        
formulario.addEventListener('submit',validacion);

function validacion(){
    const numeroTelefono = document.getElementById('telefono').value;
    const expresionTelefonoCasa = /^2\d{7}$/;
    const expresionTelefonoCelular = /^7\d{7}$/;

    if (expresionTelefonoCasa.test(numeroTelefono)) {
        alert('El número es de casa.');
    } else if (expresionTelefonoCelular.test(numeroTelefono)) {
        alert('El número es de celular.');
    } else {
        alert('El número no corresponde a un teléfono válido.');
    }
}