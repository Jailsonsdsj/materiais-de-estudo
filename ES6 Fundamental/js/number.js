const myNumber = 12.4032;

// Transformar número para String
const numberAsString = myNumber.toString();
console.log("Número transformado em string: ", typeof numberAsString);

//Retorna número com número de casas decimais
const fixedTwoDecimals = myNumber.toFixed(2);
console.log("\nNúmero com duas casas decimais: ", fixedTwoDecimals);

// Transforma uma String em float
console.log("\nString passada para float:", typeof parseFloat("13.22")); //pesquisar função do typeof

// Transforma uma String em int
console.log("\nString parseada para int: ", typeof parseInt("13.20"));

