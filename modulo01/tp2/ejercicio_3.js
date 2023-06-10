//solicita un numero al usuario
let numero = prompt("ingrese su numero entero");

//parsea el prompt para poder recibir un dato numerico 
let ingreso = parseInt(numero);

//inicializa el factorial en 1
let factorial = 1;


//mediante el for calcula el factorial
for (let i = ingreso; i >= 1; i--) {
  factorial = factorial * i;
}

//imprime el factorial
document.write(`El factorial de ${ingreso} es `);
document.write(factorial);
