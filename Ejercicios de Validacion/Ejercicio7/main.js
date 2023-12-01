const formulario =document.getElementById('informacion');
        
formulario.addEventListener('submit',validacion);

function validacion(){
    const patronGenero = document.getElementById('genero').value.toLowerCase();

    let resultado = '';

    switch (patronGenero) {
        case 'masculino':
        case '1':
            resultado = '1 (Masculino)';
            break;
        case 'femenino':
        case '2':
            resultado = '2 (Femenino)';
            break;
        default:
            resultado = 'Patrón de género no reconocido';
            break;
    }

    alert(`El patrón de género ingresado corresponde a: ${resultado}.`);
}