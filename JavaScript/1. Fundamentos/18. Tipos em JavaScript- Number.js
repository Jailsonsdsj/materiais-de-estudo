const peso1 = 1.0
const peso2 = Number('2.0')

console.log(peso1,peso2)
console.log(Number.isIntegrer(peso1)) //Função para verificar se a variável é Inteira
console.log(Number.isIntegrer(peso2))

//Exemplo

const av1 = 9.8
const av2 = 7.8

const total = av1 * peso1 + av2 * peso2
const media = total / (peso1 + peso2)


console.log(media.toFixed(2)) //Vai exibir a média com duas casas decimais
console.log(media,toString(2)) //Retornar o valor em binário

console.log(typeof media)
console.log(typeof number)