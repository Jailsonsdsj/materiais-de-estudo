//permite registrarmos pripriedades e atribudos por meio de chaves e valores

let user ={
    name:'Júnior'
}
console.log(user);

//Alterando a propriedade de um objeto
user.nome = "outro nome 1";
console.log(user);

user['name'] = "Outro nome 2";
console.log(user);

const prop = "name";
user[prop] = "Outro nome 3";
console.log(user);

// Outra forma de chamar um objeto
function getProp(prop){
    return user[prop];
}

// Criando uma propriedade
user.lastName = "Soares da Silva Júnior";

//Deletando uma propriedade
delete user.nome;
