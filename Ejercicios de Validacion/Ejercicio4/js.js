const formulario =document.getElementById('informacion');
        
formulario.addEventListener('submit',validacion);

function validacion(){
    const texto = document.getElementById('texto').value;
    const palabras = texto.split(/\s+/);
    const expresionRegular = /as\b/gi;

    let contador = 0;
    palabras.forEach(palabra => {
        if (expresionRegular.test(palabra)) {
            contador++;
        }
    });

    alert(`El texto contiene ${contador} palabra(s) que terminan con "as".`);
}