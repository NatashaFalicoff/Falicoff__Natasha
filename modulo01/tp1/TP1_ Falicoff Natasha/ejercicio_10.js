let meses = [
  "0",
  "Enero",
  "Febrero",
  "Marzo",
  "Abril",
  "Mayo",
  "Junio",
  "Julio",
  "Agosto",
  "Septiembre",
  "Octubre",
  "Noviembre",
  "Diciembre",
];

let mes = window.prompt(
  "Ingrese un numero del 1 al 12 para saber cual es el mes"
);

switch (mes) {
  case "1":
    document.write("El mes ingresado es ", meses[1]);
    break;

  case "2":
    document.write("El mes ingresado es ", meses[2]);
    break;
  case "3":
    document.write("El mes ingresado es ", meses[3]);
    break;
  case "4":
    document.write("El mes ingresado es ", meses[4]);
    break;
  case "5":
    document.write("El mes ingresado es ", meses[5]);
    break;
  case "6":
    document.write("El mes ingresado es ", meses[6]);
    break;
  case "7":
    document.write("El mes ingresado es ", meses[7]);
    break;
  case "8":
    document.write("El mes ingresado es ", meses[8]);
    break;
  case "9":
    document.write("El mes ingresado es ", meses[9]);
    break;
  case "10":
    document.write("El mes ingresado es ", meses[10]);
    break;
  case "11":
    document.write("El mes ingresado es ", meses[11]);
    break;
  case "12":
    document.write("El mes ingresado es ", meses[12]);
    break;

  default:
    alert("Ingrese un numero valido del 1 al 12"), location.reload();
}
//ingresé location.reload para que se reinicie el programa en caso de ingresar un número invalido.