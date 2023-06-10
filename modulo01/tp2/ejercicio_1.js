var valores = [true, false, 2, "hola", "mundo", 3, "char"];

let mayor = "";

//Filtra los valores de tipo string y rellena la variable mayor con el dato de mayor longuitud
for (dato of valores) {
  if (dato.length > mayor.length) {
    mayor = dato;
  }
}

//Imprime el string mas largo
document.write(`El valor de tipo string de mayor longuitud es: ${mayor}<br>`);
document.write(
  `Los valores de tipo string ordenados de menor a mayor longuitud son: `
);

var stringValues = [];

// Filtra los valores de tipo string
for (var i = 0; i < valores.length; i++) {
  if (typeof valores[i] === "string") {
    stringValues.push(valores[i]);
  }
}

// Ordena los valores de tipo string de menor a mayor
stringValues.sort();

// Imprime los valores de tipo string de menor a mayor
for (var i = 0; i < stringValues.length; i++) {
  //Este if es para separar con coma y que no imprima primero una coma
  if (i !== 0) {
    document.write(", ");
  }

  document.write(stringValues[i]);
  ("<br>");
}

//calculos matematicos

document.write("<br>El resultado de la suma de los valores numericos es:");
document.write(valores[2] + valores[5]);
document.write("<br>El resultado de la resta de los valores numericos es:");
document.write(valores[2] - valores[5]);
document.write(
  "<br>El resultado de la multiplicacion de los valores numericos es:"
);
document.write(valores[2] * valores[5]);
document.write("<br>El resultado de la division de los valores numericos es:");
document.write(valores[2] / valores[5]);
