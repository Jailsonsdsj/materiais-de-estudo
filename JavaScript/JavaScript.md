# JavaScript 📒



Introdução

Resumo das aulas do curso [Web Moderno Completo](https://www.udemy.com/course/curso-web/) entre outras fontes.





## Estrutura de dados

[INSERIR RESUMO SOBRE OS TIPOS DE ESTRUTURAS DE DADOS]







## Tipos em JavaScritp



### Number

~~~~javascript
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
~~~~



#### Alguns cuidados

~~~~javascript
console.log(7/0)
Infinity

console.log("10"/2)
5

console.log("Show!"*2)
NaN

console.log(0.1+0.7) 
0.7999999999999999
~~~~



#### Usando o Math

~~~~javascript
const raio = 5.6
const area = Math.PI * Math.pow(raio,2)

console.log(area)
console.log(typeof Math)
~~~~

Mais informações sobre funções de Number: https://developer.mozilla.org/pt-BR/docs/Web/JavaScript/Reference/Global_Objects/Number





### String



Exibindo as posições dos caracteres

~~~~javascript
const escola = "Cod3r"

console.log(escola.charAt(4)) //Exibindo o caractere na posição  4
console.log(escola.charAt(5)) //Exibindo um caractere que não existe
console.log(escola.charCodeAt(3)) //Valor na dabela ASC
console.log(escola.indexOf('3')) //índice associado ao caractere 3


~~~~



Exibindo caracteres em posições específicas

~~~~javascript
console.log(escola.substring(1))//Imprime a partir do índice 1 até o final
console.log(escola.substring(0,3))//Imprime do índice 0 até o 3


~~~~



Concatenação

~~~~javascript
console.log('Escola '.concat(escola).concat("!"))//Primeiro tipo de concatenação
console.log('Escola' + escola + "!")//Segunto tipo de concatenação
console.log (`Escola ${escola}!`)//Terceiro tipo de concatenação ES6

//A CONCATENAÇÃO COM CRASE TAMBÉM CONSIDERA AS QUEBRAS DE LINHAS

~~~~



A Concatenação com crase também considera as quebras de linhas

~~~~javascript
const template = `
	Escola
	${nome}!`

console.log(template)




~~~~



Funções de substituição

~~~~javascript
console.log(escola.replace(3,'e'))//função de substituição
console.log(escola.replace(/\d/,'e'))//substitui todos os digitos (3) pela letra e
console.log(escola.replace(/\w/g,'e'))//substitui todas as letras pela letra e
~~~~



Transformando String em array

~~~~javascript
console.log("Ana,Maria,Pedro".split(',')) //Transforma em array dividindo a partir da vírgula
~~~~



Expressões

~~~~javascript
console.log(`1+1 = ${1 + 1}`)
~~~~



Função toUpperCase

~~~~javascript
const up = texto => texto.toUpperCase()
console.log(`Ei... ${up('Cuidado')}!`)
~~~~



Mais informações sobre funções de String: https://developer.mozilla.org/pt-BR/docs/Web/JavaScript/Reference/Global_Objects/String



### Boolean

Representados por true, false, 1 ou 0.

~~~~javascript
let isAtivo = false
isAtivo = true
isAtivo = 1
~~~~



Boolean com negação

~~~~javascript
console.log(!isAtivo) //Inverte o valor
console.log(!!isAtivo) //Força uma conversão para verdadeiro ou falso
~~~~



Atribuições verdadeiras

~~~~javascript
console.log(!!3)
console.log(!!-1)
console.log(!!' ')
console.log(!![])
console.log(!!{})
console.log(!!Infinity)
console.log(!!(isAtivo = Infinity))
~~~~



Atribuições falsas

~~~~javascript
console.log(!!0)
console.log(!!'')
console.log(!!null)
console.log(!!NaN)
console.log(!!undefined)
console.log(!!(isAtivo = false))
~~~~



Com a condição OU

~~~~javascript
console.log(!!(''||null||0||' '))
let nome = 'Lucas'
console.log(nome || "Desconhecido")
~~~~



Mais informações sobre boolean: https://developer.mozilla.org/pt-BR/docs/Web/JavaScript/Reference/Global_Objects/Boolean



### Array



Os array são do tipo objeto em javascritp

~~~~javascript
const valores = [7.7,8.9,6.3,9,2]
console.log(typeof valores)
~~~~



~~~~javascript
console.log(valores[0], valores[3]) //Exibindo valores em índices específicos
console.log(valores[4]) //Índice com valor inexistente
~~~~



Adicionando valores ao array

~~~~javascript
valores.push({id:3},false,null,'teste') //Diferentes tipos de valores podem ser adicionados ao array
~~~~



Removendo valores

~~~~javascript
console.log(valores.pop()) //remove o ultimo valor do arry
delete valores[0] //remove valores conforme indice
~~~~



Mais informações sobre Array: https://developer.mozilla.org/pt-BR/docs/Web/JavaScript/Reference/Global_Objects/Array



### Objetct

Em JavaScript, um objeto é considerado uma relação entre chave e valor.

~~~~javascript
const prod1 = {}
prod1.nome = "celular Ultra Mega"
prod1.preco = 4998.90
prod1['Desconto'] = 0.40

console.log(prod1)
---
{nome: 'celular Ultra Mega', preco: 4998.9, Desconto: 0.4}  
~~~~



Outra forma de declarar um objeto

~~~~javascript
const prod2 = {
    nome: "camisa Polo",
    preco: 79.90,
    obj: {
        codigo:25 //um objeto único dentro de outro objeto
    }

}

console.log(prod2)
~~~~

Obs: não confundir com JSON.



Mais informações sobre Object: https://developer.mozilla.org/pt-BR/docs/Web/JavaScript/Reference/Global_Objects/Object



~~~~javascript

~~~~



~~~~javascript

~~~~



~~~~javascript

~~~~



~~~~javascript

~~~~



~~~~javascript

~~~~



~~~~javascript

~~~~



~~~~javascript

~~~~



~~~~javascript

~~~~



~~~~javascript

~~~~



~~~~javascript

~~~~



~~~~javascript

~~~~

