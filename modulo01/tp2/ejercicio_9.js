let notas = [];

// Solicita las notas al usuario
for (let i = 0; i < 5; i++) {
  let nota = parseInt(prompt("Ingrese la nota " + (i + 1) + ":"));
  //las notas ingresadas se van cargando en el array
  notas.push(nota);
}

let promedio = calcularPromedio(notas);

//funcion para calcular el promedio de las notas
function calcularPromedio(notas) {
  let suma = 0;

  for (let i = 0; i < notas.length; i++) {
    suma += notas[i];
  }

  return suma / notas.length;
}

let calificacion = obtenerCalificacion(promedio);

//funcion para calificar su aprobacion segun el promedio
function obtenerCalificacion(promedio) {
  if (promedio < 5) {
    return "Reprobado";
  } else if (promedio >= 6 && promedio <= 8) {
    return "Aprobado";
  } else {
    return "Sobresaliente";
  }
}



//imprime el promedio y luego la calificacion
document.write("Promedio: " + promedio + "<br>");
document.write("Calificacion: " + calificacion);
