//solicita un texto al usuario
let texto = prompt("Ingrese un texto")

//funcion para que devuelva el texto en reversa
function textoAlReves(texto) {

  //cargamos una variable vacia para poder rellenarla con el siguiente for
    let textoReverso = "";
   
  
    //recorre de atras para adelante el texto
    for (let i = texto.length - 1; i >= 0; i--) {
      textoReverso += texto[i];
    }
    
    return textoReverso;
  }
  
  //imprime el resultado
  let resultado = textoAlReves(texto);
 document.write(resultado);
