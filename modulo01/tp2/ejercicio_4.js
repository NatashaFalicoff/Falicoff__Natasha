//solicita un numero al usuario y parsea el prompt 
let numero = parseInt(prompt("Ingrese un número"));

//funcion para determinar si el numero es par o impar
function parOImpar(numero) {
  if (numero % 2 === 0) {
    return "El numero es par";
  } else return "El numero es impar";
}

//variable para guardar el resultado
let resultado = parOImpar(numero);

//imprime el resultado
document.write(resultado);
