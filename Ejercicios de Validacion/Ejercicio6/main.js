const formulario =document.getElementById('informacion');
        
formulario.addEventListener('submit',validacion);

function validacion(){
    const numeroTelefono = document.getElementById('celular').value;
    const prefijo = numeroTelefono.substring(0, 2);

    let compania = '';

    switch (prefijo) {
        case '79':
        case '72':
            compania = 'Tigo';
            break;
        case '77':
        case '75':
            compania = 'Movistar';
            break;
        case '71':
        case '73':
            compania = 'Digicel';
            break;
        default:
            compania = 'Compañía no identificada';
            break;
    }

    alert(`El número ingresado pertenece a ${compania}.`);
}
