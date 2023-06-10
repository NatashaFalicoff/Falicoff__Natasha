let dato, resultado;
val1 = window.prompt("Introduce tu nombre", "...");
//el programa te pide que introduzcas un dato (tu nombre) para rellenar el val1
val2 = window.prompt("Introduce tu apellido", "...");
//el programa te pide que introduzcas otro dato (tu apellido) para rellenar el val2
resultado = `Concatenado tu nombre y apellido es: ${val1} ${val2} `;
//el programa concatena los datos introducidos en val1 y val2
document.write(resultado);
//el programa muestra el resultado de concatenar ambos datos