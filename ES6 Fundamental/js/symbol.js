//Obs: comentar as estruturas à medida que for testando

const symbol1 = Symbol();
const symbol2 = Symbol();

// Symbols são únicos
console.log("symbol1 é igual a symbol2: ", symbol1 === symbol2);

//Previnir conflito entre nomes de propriedades
const nameSymbol = Symbol("name");
const nameSymbo2 = Symbol("name");

const user={
    [nameSymbo1]: 'Júnior',
    [nameSymbo2]: 'Outro nome',
    lastName: 'da Silva Júnior'
}

console.log(user);

// Symbols criam propriedades que não são enuberales
for (const key in user){
    if (user.hsaOwnProperty(key)){
        console.log(`\nValor da chave ${key}: ${user[hey]}`);
        
    }
}