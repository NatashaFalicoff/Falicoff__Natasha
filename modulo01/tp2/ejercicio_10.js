//solicita al usuario un numero y parsea el prompt
let mes = parseInt(prompt("Ingrese el número del mes:"));
  
let cantidadDias = obtenerCantidadDias(mes);

function obtenerCantidadDias(mes) {
    let cantidadDias;

  //evalua el mes y determinar la cantidad de días que contiene y los clasifica
    switch (mes) {
      case 1:  // Enero
      case 3:  // Marzo
      case 5:  // Mayo
      case 7:  // Julio
      case 8:  // Agosto
      case 10: // Octubre
      case 12: // Diciembre
        cantidadDias = 31;
        break;
      case 4:  // Abril
      case 6:  // Junio
      case 9:  // Septiembre
      case 11: // Noviembre
        cantidadDias = 30;
        break;
      case 2:  // Febrero
        cantidadDias = 28;
        break;
      default:
        cantidadDias = -1;  // Valor inválido
        break;
    }
  
    return cantidadDias;
  }
  

  
  if (cantidadDias === -1) {
    document.write("Mes inválido");
  } else {
    document.write("El mes tiene " + cantidadDias + " dias");
  }
  
