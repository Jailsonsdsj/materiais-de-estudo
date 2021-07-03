function objetoParaArray(objeto){
    const chaves = Object.keys(objeto)
   
    const resultado = chaves.map(chave => [chave, objeto[chave]])
    console.log(resultado) 
}

const dados = {
    nome: "joana",
    cargo: "desenvolvedora",
    salario: 3.562
}

objetoParaArray(dados)