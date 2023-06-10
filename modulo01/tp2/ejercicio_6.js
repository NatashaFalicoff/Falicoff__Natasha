//solicita un texto al usuario
let texto = prompt("Ingrese un texto");

//funcion para obtener la primera vocal del texto ingresado, las mismas estan dentro de un array
function obtenerPosicionPrimeraVocal(texto) {
  let vocales = ["a", "e", "i", "o", "u"];

  //for para recorrer el texto
  for (let i = 0; i < texto.length; i++) {
    let letra = texto[i];
//se verifica si tiene vocales incluidas en el texto y en que posicion esta
    if (vocales.includes(letra)) {
      return `La primera vocal "${letra}" se encuentra en la posicion numero ${i + 1}.`;
    }
  }

  return "No se encontraron vocales en el texto.";
}

//imprime los resultados obtenidos 
let resultado = obtenerPosicionPrimeraVocal(texto);
document.write(resultado);
