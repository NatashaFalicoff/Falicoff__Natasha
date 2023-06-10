//ingresamos un texto a traves de una variable
let texto = "Hola MUNDO";

//funcion para determinar como esta formado el texto analizando la cadena de caracteres
function analizarCadena(cadena) {
  if (cadena === cadena.toUpperCase()) {
    return "El texto esta formado solo por mayusculas.";
  } else if (cadena === cadena.toLowerCase()) {
    return "El texto esta formado solo por minusculas.";
  } else {
    return "El texto esta formado por una mezcla de mayusculas y minusculas.";
  }
}

//variable para cargar el resultado
let resultado = analizarCadena(texto);

//muestra por consola como esta formado el texto ingresado
console.log(resultado);
