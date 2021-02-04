const user = {
    name: "Jailson",
    lastName: "Sorares da Silva Júnior"
}

//Recupera as chaves do objeto
console.log("Propriedades do objeto user: ", Object.keys(user));

//Recupera os valores das chaves do objeto
console.log("\nValores das propriedades do objeto user: ", Object.values(user));

//Retorna um array de arrays contento [nome_prop, valor_prop]
console.log("\nLista de propriedades e valores: ", Objetc.entries(user));

//Mergear propriedades de objetos
Object.assign(user, {fullName: 'Jailson Soares da Silva Júnior'});

console.log("\nAdiciona a propriedade fullName no objeto user",user);
console.log("\nRetorna um novo objeto mergeando dois ou mais objetos",Object.assign({},user,{age:26}));

//Previne todas as alterações em um objeto
const newObj = { foo: 'bar'};
Object.freeze(newObj);

newObj.foo = "changes"; //Exemplificação de alterações que não irão acontecer
delete newObj.foo; //Exemplificação de alterações que não irão acontecer
newObj.bar = 'foo'; //Exemplificação de alterações que não irão acontecer

console.log("\nVariável newObj após as alterações: ", newObj);
Object.seal(person);