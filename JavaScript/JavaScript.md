# JavaScript 📒

Introdução

Resumo das aulas do curso [Web Moderno Completo](https://www.udemy.com/course/curso-web/) entre outras fontes.



## Estrutura de dados

[INSERIR RESUMO SOBRE OS TIPOS DE ESTRUTURAS DE DADOS]





## Fundamentos



### Tipos em JavaScript: number

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





### Tipos em JavaScript: String

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



### Tipos em JavaScript: Boolean

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



### Tipos em JavaScript: Array

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



### Tipos em JavaScript: Objetct

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



### **Atribuição por referência**

Quando o endereço de um objeto é passado de uma variável ou constante para outra.

Exemplo:

~~~~javascript
const a = {nome: 'Teste'}
const b = a

~~~~

No exemplo acima, b estará recendo a referência do objeto que estava contido em a.

Neste sentido, ao alterar a constante b, o a também terá impacto, pois ambas constantes possuem o mesmo endereço:

~~~~javascript
b.name = 'opa'
console.log(a)
---
"Opa"
~~~~



### **Atribuição por valor**

Acontece quando a cópia é feita através de um valor primitivo (diferente do objeto demostrado acima).

~~~~javascript
let c = 3
let d = c
d++
console.log(c)
condole.log(d)
---
3
4

~~~~



### Null & Undefield

- Undefield: uma variável ou constante que não foi inicializada

- Null: uma variável ou constante que não possui nenhum valor e que não aponta para nenhum endereço de memória. O null pode ser utilizado para quando desejar que uma variável deixe de apontar para algum endereço. Ou seja, é usado para "zerar" o valor de uma variável.



Evitar utilizar undefield ao zerar uma variável, constante ou objeto.



Comentário o Overflow

> #### **Diferença semântica**
>
> (...) Existe uma diferença semântica entre `null` e `undefined`: o valor `null` é utilizado para indicar a ausência de um *objeto*, enquanto `undefined` indica a ausência de um valor qualquer. A especificação explicita isso quando define os valores [`undefined`](http://www.ecma-international.org/ecma-262/5.1/#sec-4.3.9) e [`null`](http://www.ecma-international.org/ecma-262/5.1/#sec-4.3.11):
>
> **valor undefined**: valor primitivo utilizado quando uma variável não teve valor atribuído.
>
> **valor null**: valor primitivo que representa a ausência intencional de um valor de objeto.
>
> O valor retornado pelo operador [typeof](http://www.ecma-international.org/ecma-262/5.1/#sec-11.4.3) é consistente com isso: ele retorna `"object"` para `null`, e `"undefined"` para `undefined`. O uso de `null` na especificação também obedece a isso. Por exemplo, todo objeto possui uma propriedade interna [[Prototype]], cujo valor deve ser um objeto ou `null` – nunca `undefined`. (...) APIs do DOM também fazem uso consistente disso.
>
> #### Diferenças sintáticas
>
> Existem ainda diferenças sintáticas entre `null` e `undefined`. Ambos são os únicos valores de seus respectivos Tipos (`Null` e `Undefined`). Porém, `null` é também um termo reservado e um literal da gramática (como `true`, `0`, `""` e `/.*/`), o [*NullLiteral*](http://www.ecma-international.org/ecma-262/5.1/#sec-7.8), enquanto `undefined` é exposto como uma [propriedade do objeto global](http://www.ecma-international.org/ecma-262/5.1/#sec-15.1.1.3), assim como `NaN` e `Infinity`.
>
> Além disso, `undefined` não é um termo reservado da linguagem – o que significa, por exemplo, que `var undefined = "?"` é uma construção válida. Portanto, é sempre possível criar uma variável local chamada `undefined` cujo valor não seja o primitivo de mesmo nome. Isso não é possível com `null`, `var null = "?"` gera um erro de sintaxe. Em implementações antigas da linguagem também era possível sobrescrever o valor global `undefined`, mas isso deixou de ser permitido no ECMAScript 5, onde a propriedade `undefined` do objeto global é definida como [[Writable]]:false, o que significa que seu valor não pode ser substituído.



### Funções

Função sem retorno

~~~~javascript
function imprimirSoma(a,b){
    console.log(a+b)
}

imprimirSoma(2,3)
imprimirSoma(2)
imprimirSoma(2,3,9,12)
~~~~



Função com retorno

~~~~javascript
function soma(a,b = 0){ //zero representa o valor padrão de b, caso não receba parâmetros
    return a+b
}
console.log(soma(5,3))
console.log(soma(2))
~~~~



### Arrow Functions 

Armazenando uma função em uma variável

~~~~javascript
const imprimirSoma = function(a,b){
    console.log(a+b);
}

imprimirSoma(2,3);
~~~~



Armazenando uma função arrow em uma variável

~~~~javascript
const soma = (a,b) => {
    return a+b;
}

console.log(soma(2,3));
~~~~

O símbolo "=>" representa uma forma resumida de declarar uma função (arrow function)



Retorno implícito

~~~~javascript
const subtracao = (a,b) => a-b
console.log(subtracao(2,3))
~~~~

As funções implícitas, isto é, declaradas sem o uso de blocos devem conter apenas uma linha de código e automaticamente retornam um valor.



### VAR

Uma variável declarada por VAR só possui dois escopos: o local e o global.

Exceto esses dois escopos, o var não considera as estruturas de blocos, conforme exemplo abaixo:

~~~~javascript
{
    {
        {
            var teste = "Olá mundo"
        }
    }
}

console.log(teste)
~~~~



- **Variável Local**: uma variável definida dentro de uma função. Essa variável só pode ser utilizada dentro da própria função

- **Variável Global**: uma variável definida em qualquer lugar do código que não seja uma função. Pode ser utilizada em qualquer área do código. Evita-se utilizar variáveis globais para não correr o risco de sobrescrita



### Let

Uma variável declarada por Let considera o escopo de blocos

~~~~javascript
let numero = 1
{
    let numero = 2
    console.log("Dentro = ",numero)
}

console.log("Fora = ", numero)
--
Dentro = 2
Fora = 1
~~~~



Caso não tenha variável dentro do escopo, será considerada a de fora:

~~~~javascript
let numero = 1
{
    let numero2 = 2
    console.log("Dentro = ",numero)
}

console.log("Fora = ", numero)
---
Dentro = 1
Fora = 1
~~~~

Importante: use o let para variáveis em estruturas de repetições.



### Função VS Objeto

[inserir aqui o que é instância de objeto]

~~~~javascript
console.log(typeof Object)
console.log(typeof new Object) //Instanciando um objeto
---
object
function
~~~~



~~~~javascript
const Cliente = function(){}
console.log(typeof Cliente)
console.log(typeof new Cliente)
---
object
function
~~~~

O ES6 também permite declarar funções da seguinte forma:

~~~~javascript
class Produto {} 
console.log(typeof Produto)
console.log(typeof new Produto())
~~~~



### Par Chave/Valor

~~~~javascript
const saudacao = "Hello, World!"  // Conexto léxico 1

function exec(){
    const saudacao = 'Hi,Lorena!' //Contexto léxico 2
    return saudacao
}
~~~~

O retorno de saudacao será primeiramente da constante local e, caso esta não exista, será a segunda.



Objetos são  grupos aninhados de pares nome/valor.

~~~~javascript
cinst cliente = {
    nome: "Pedro",
    idade: 32,
    peso: 90,
    endereco: {
        logradouro: 'Rua 991'
        numero: 123
    }
}

console.log(saudacao)
console.log(exec())
console.log(cliente)
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

