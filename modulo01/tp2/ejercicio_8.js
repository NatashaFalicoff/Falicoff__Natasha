generarNumerosAleatorios();

function generarNumerosAleatorios() {
  //genera una matriz vacia para ir cargando.
  let numeros = [];

  //utiliza un bucle while para generar numeros aleatorios hasta que la matriz numeros tenga una longitud de 100.
  while (numeros.length < 100) {
    //en cada vuelta se genera un número aleatorio entre 1 y 100 usando Math.random()
    let numeroAleatorio = Math.floor(Math.random() * 100) + 1;
    //Se verifica si el número generado ya existe en el arreglo numeros usando includes()
    //y si no esta, se lo agrega al array
    if (!numeros.includes(numeroAleatorio)) {
      numeros.push(numeroAleatorio);
    }
  }
//recorre la matriz e imprime el resultado
  for (let i = 0; i < numeros.length; i++) {
    document.write(numeros[i] + " ");
  }
}
