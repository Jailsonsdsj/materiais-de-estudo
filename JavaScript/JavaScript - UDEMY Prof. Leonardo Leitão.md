# JavaScript 📒

Introdução

Resumo das aulas do curso [Web Moderno Completo](https://www.udemy.com/course/curso-web/) entre outras fontes.



## 📌Estrutura de dados

Estruturas de dados são objetos que armazenam dados de forma eficiente, oferecendo certos “serviços” para o usuário (ordenação eficiente dos dados, busca por meio de palavras chave etc).

Uma estrutura de dados abstrai as características principais de uma atividade que envolve armazenamento de informações.



### **Registro**

- Nos permite armazenar dados de diferentes tipos (inteiro, real, caractere etc.)

- Para acessar o registro, basta informar o nome . dado. Exemplo: para buscar um livro específico, teríamos livro.nome 



### Listas ligadas (Tuple)

- Índice imutável

- Não é possível modificar um conteúdo sem substituir a variável que a representa



### Listas duplamente ligadas (List)

- Índice mutável

- Possui vários métodos que alteram a sua estrutura



### Pilhas

- Permite acesso aos itens apenas uma vez

- Só pode ser lido ou removido um por vez



### Pilha LIFO ou UEPS

- O primeiro elemento a ser retirado é o último que tiver sido inserido

- Em uma pilha com dados 1, 2 e 3, o primeiro elemento que deve ser removido é o 3



### Pilha FIFO ou PEPS

- O primeiro elemento a ser retirado é o primeiro que foi inserido na lista

- Em uma pilha com dados 1,2 e 3, o primeiro elemento que deve ser removido é o 1



### Filas

- Assim como a estrutura FIFO, o primeiro elemento a ser removido é o primeiro da fila

- Em uma fila de 1,2 e 3 elementos, o primeiro elemento a ser removido é o 1





## 📌Fundamentos



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
console.log(media.toString(2)) //Retornar o valor em binário

console.log(typeof media)
console.log(typeof number)
~~~~



**Alguns cuidados**

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



**Usando o Math**

Para exponenciação:

~~~~javascript
const raio = 5.6
const area = Math.PI * Math.pow(raio,2)

console.log(area)
console.log(typeof Math)
~~~~

Para raiz quadrada:

~~~~javascript

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

Os array são do tipo objeto em javascript

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



#### **Atribuição por referência**

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



#### **Atribuição por valor**

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

O retorno de saudação será primeiramente da constante local e, caso esta não exista, será a segunda.



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



### Notação Ponto

A notação ponto é uma forma de declarar o atributo de um objeto através de um ponto

~~~~javascript

const obj1 = {}
obj1.nome = 'bola'  //declarando o nome com notação ponto
//obj1['nome'] = 'cadeira' //forma alternativa de declarar um atributo de um objeto
console.log(obj1.nome)

function Obj(nome){
    this.nome = nome //o this indica que a varíavel nome é a do parâmetro da função, e não a do objeto.
    //o this também deixa o atributo visível, isto é, publico para que outros objetos possam utiliar
    this.exec = function(){
        console.log("Exerc...")
    }
}

const obj2 = new Obj('cadeira')//cadeira será atribuída ao objeto nome da funçao obj
const obj3 = new Obj('Mesa')
console.log(obj2.nome)
console.log(obj3.nome)
obj3.exec()
~~~~



### Operadores de atribuição

| Nome                                                       | Operador encurtado | Significado   |
| :--------------------------------------------------------- | :----------------- | :------------ |
| Atribuição                                                 | x = y              | x = y         |
| Atribuição de adição                                       | `x += y`           | `x = x + y`   |
| Atribuição de subtração                                    | `x -= y`           | `x = x - y`   |
| Atribuição de multiplicação                                | `x *= y`           | `x = x * y`   |
| Atribuição de divisão                                      | `x /= y`           | `x = x / y`   |
| Atribuição de resto                                        | `x %= y`           | `x = x % y`   |
| Atribuição exponencial                                     | x **= y            | x = x ** y    |
| Atribuição bit-a-bit por deslocamento á esquerda           | `x <<= y`          | `x = x << y`  |
| Atribuição bit-a-bit por deslocamento á direita            | `x >>= y`          | `x = x >> y`  |
| Atribuiçãode bit-a-bit deslocamento á direita não assinado | `x >>>= y`         | `x = x >>> y` |
| Atribuição AND bit-a-bit                                   | `x &= y`           | `x = x & y`   |
| Atribuição XOR bit-a-bit                                   | `x ^= y`           | `x = x ^ y`   |
| Atribuição OR bit-a-bit                                    | `x |= y`           | `x = x | y`   |



~~~~javascript
const a = 7
let b = 3

b += a // b = b+a
b -= a // b = b-a
b *= 4 // b = b*4
b /= 2 // b = b/2
b %= 2 // b = b%2 (b rececebe o resto da divisão por 2)

~~~~



### Operador Destructuring

Novo recurso do ES6

~~~~javascript
const pessoa = {
    nome: 'Ana',
    idade: 5,
    endereco: {
        logradouro: 'Rua ABC',
        numero: 1000
    }
}
~~~~



Acessando o atributo de um objeto através do operador

~~~~javascript
const {nome,idade} = pessoa //O nome e a idade serão extraídas do objeto pessoa
console.log(nome, idade)
~~~~



Alterando o nome do atributo / variável

~~~~javascript
const {nome: n , idade: i} = pessoa
console.log(n,i)
~~~~



Tentando extrair valores inexistentes

~~~~javascript
const {sobrenome, sexo = true} = pessoa //caso não haja a variável sexo, será retornado true
console.log(sobrenome,sexo)
~~~~



Acessando atributos em bloco

~~~~javascript
const {endereco: {logradouro,numero,cep } } = pessoa
console.log(logradouro, numero, cep)
~~~~



Criando arrays com o Destructuring

~~~~javascript
const [a] = [10]
console.log(a)
~~~~



Múltiplos elementos em uma única atribuição

~~~~javascript
const [n1, ,n3, ,n5,n6=0] = [10,7,9,8]
console.log(n1,n3,n5,n6)

~~~~



Primeiro elemento ignorado e o segundo declarado um array

~~~~javascript
const [, [, nota]] = [[,8,8], [9,6,8]]
console.log(nota)
~~~~



### Operadores de comparação

| Operador                       | Exemplos que retornam verdadeiro   |
| :----------------------------- | :--------------------------------- |
| Igual (`==`)                   | `3 == var1``"3" == var1``3 == '3'` |
| Não igual (`!=`)               | `var1 != 4var2 != "3"`             |
| Estritamente igual (`===`)     | `3 === var1`                       |
| Estritamente não igual (`!==`) | `var1 !== "3"3 !== '3'`            |
| Maior que (`>`)                | `var2 > var1"12" > 2`              |
| Maior que ou igual (`>=`)      | `var2 >= var1var1 >= 3`            |
| Menor que (`<`)                | `var1 < var2"12" < "2"`            |
| Menor que ou igual (`<=`)      | `var1 <= var2var2 <= 5`            |



### Operadores aritméticos

| Operador                       | Descrição                                                    | Exemplo                                                      |
| :----------------------------- | :----------------------------------------------------------- | :----------------------------------------------------------- |
| Módulo (%)                     | Operador binário. Retorna o inteiro restante da divisão dos dois operandos. | 12 % 5 retorna 2.                                            |
| Incremento (++)                | Operador unário. Adiciona um ao seu operando. Se usado como operador prefixado (`++x`), retorna o valor de seu operando após a adição. Se usado como operador pósfixado (`x++`), retorna o valor de seu operando antes da adição. | Se `x` é 3, então `++x` define `x` como 4 e retorna 4, enquanto `x++` retorna 3 e, somente então, define `x` como 4. |
| Decremento (--)                | Operador unário. Subtrai um de seu operando. O valor de retorno é análogo àquele do operador de incremento. | Se `x` é 3, então `--x` define `x` como 2 e retorna 2, enquanto `x--` retorna 3 e, somente então, define `x` como 2. |
| Negação (-)                    | Operador unário. Retorna a negação de seu operando.          | Se `x` é 3, então `-x` retorna -3.                           |
| Adição (+)                     | Operador unário. Tenta converter o operando em um número, sempre que possível. | +"3" retorna 3.+true retorna 1.                              |
| Operador de exponenciação (**) | Calcula a base elevada á potência do expoente, que é, base`expoente` | 2 ** 3 retorna 8.10 ** -1 retorna 0.1                        |

Exemplo de operador de exponenciação:

~~~~javascript
//Forma antiga
let exp = Math.pow(2,3) //O primeiro parãmetro é a base e o segundo o expoente.
console.log(exp) 

//ES7
let exp = 2**3

//Outro exemplo
let base = 2
base **=3 //Eleva o valor da base à terceira potência.
~~~~



### Operadores bit a bit

| Operador                                       | Expressão | Descrição                                                    |
| :--------------------------------------------- | :-------- | :----------------------------------------------------------- |
| AND                                            | `a & b`   | Retorna um 1 para cada posição em que os bits da posição correspondente de ambos operandos sejam uns. |
| OR                                             | `a | b`   | Retorna um 0 para cada posição em que os bits da posição correspondente de ambos os operandos sejam zeros. |
| XOR                                            | `a ^ b`   | Retorna um 0 para cada posição em que os bits da posição correspondente são os mesmos.  [Retorna um 1 para cada posição em que os bits da posição correspondente sejam diferentes.] |
| NOT                                            | `~ a`     | Inverte os bits do operando.                                 |
| Deslocamento à esquerda                        | `a << b`  | Desloca `a` em representação binária `b` bits à esquerda, preenchendo com zeros à direita. |
| Deslocamento à direita com propagação de sinal | `a >> b`  | Desloca `a` em representação binária `b` bits à direita, descartando bits excedentes. |
| Deslocamento à direita com preenchimento zero  | `a >>> b` | Desloca `a` em representação binária `b` bits à direita, descartando bits excedentes e preenchendo com zeros à esquerda. |



### Operadores lógico

| Operador          | Utilização       | Descrição                                                    |
| :---------------- | :--------------- | :----------------------------------------------------------- |
| `AND lógico (&&)` | `expr1 && expr2` | (E lógico) - Retorna `expr1` caso possa ser convertido para falso; senão, retorna `expr2`. Assim, quando utilizado com valores booleanos, `&&` retorna verdadeiro caso ambos operandos sejam verdadeiros; caso contrário, retorna falso. |
| `OU lógico (||)`  | `expr1 || expr2` | (OU lógico) - Retorna `expr1` caso possa ser convertido para verdadeiro; senão, retorna `expr2`. Assim, quando utilizado com valores booleanos, `||` retorna verdadeiro caso ambos os operandos sejam verdadeiro; se ambos forem falsos, retorna falso. |
| `NOT lógico (!)`  | `!expr`          | (Negação lógica) Retorna falso caso o único operando possa ser convertido para verdadeiro; senão, retorna verdadeiro. |



Tabela verdade AND

~~~~javascript
var a1 =  true && true;     // t && t retorna true
var a2 =  true && false;    // t && f retorna false
var a3 = false && true;     // f && t retorna false
var a4 = false && (3 == 4); // f && f retorna false
var a5 = "Gato" && "Cão";   // t && t retorna Cão
var a6 = false && "Gato";   // f && t retorna false
var a7 = "Gato" && false;   // t && f retorna false

~~~~



Tabela verdade OR

~~~~javascript
var o1 =  true || true;     // t || t retorna true
var o2 = false || true;     // f || t retorna true
var o3 =  true || false;    // t || f retorna true
var o4 = false || (3 == 4); // f || f retorna false
var o5 = "Gato" || "Cão";   // t || t retorna Gato
var o6 = false || "Gato";   // f || t retorna Gato
var o7 = "Gato" || false;   // t || f retorna Gato
~~~~



Tabela verdade NOT

~~~~javascript
var n1 = !true;   // !t retorna false
var n2 = !false;  // !f retorna true
var n3 = !"Gato"; // !t retorna false
~~~~



Mais informações sobre operadores: https://developer.mozilla.org/pt-BR/docs/Web/JavaScript/Guide/Expressions_and_operators



Exemplo:

~~~~javascript
function compras(trabalho1,trabalho2){
    const comprarSorvete = trabalho1 || trabalho2
    const comprarTv = trabalho1 && trabalho2
// const comprarPc = !(trabalho1 ^ trabalho2) //bitwise XOR
    const comprarPC = trabalho1 != trabalho2 
    const manterSaudavel = !comprarSorvete //operador unitário

    return {comprarSorvete, comprarTv, comprarPC, manterSaudavel}
}

console.log(compras(true,true))
console.log(compras(true,false))
console.log(compras(false,true))
console.log(compras(false,false))

~~~~

 

### Operador Ternário

Estrutura condicional IF ELSE na forma resumida

~~~~javascript
const resultado = nota => nota >= 7 ? 'Aprovado' : 'Reprovado'
// Se a nota for maior ou igual a 7 retornará Aprovado. Caso contrário, reprovado
console.log(resultado(7.1))
console.log(resultado(4))
console.log(resultado(9))
~~~~



### Tratamento de erro (Try / Catch / Throw)

A declaração `try` consiste  em um bloco `try`, que contém uma ou mais declarações, e ao menos uma cláusula `catch` ou uma cláusula `finally`,  ou ambas. Ou seja, há 3 formas de declarações `try` :

1. `try...catch`
2. `try...finally`
3. `try...catch...finally`

Exemplo:

~~~~javascript
function imprimirNomeMaiusculo(obj){
    try{
        console.log(obj.name.toUpperCase()) + "!" //caso ocorra esse erro, comando catch será executado
    }catch(e){//Após capturar o erro com o catch, o throw irá retornar alguma linha de código
        throw new Error('MENSAGEM DE ERRO')
        //OU
        throw {
            nome: erro.name,
            msg: erro.message,
            date: new Date
        }
    }
}

const obj = {nome: 'Roberto'}
imprimirNomeMaiusculo(obj)
~~~~



## 📌Estruturas de Controle



### If, else, elseif

~~~~javascript
if (x > 5) {
	console.log("X é maior que 5")
} else if (x > 50) {
	console.log("X é maior que 50")
} else {
	("X é menor que 5 e 50")
}
~~~~



### If... Else ES6

~~~~javascript
condition ? expr1 : expr2 
~~~~

Se `condition` é `true`, o operador retornará o valor de `expr1`; se não, ele retorna o valor de `exp2`



~~~~javascript
let elvisLives = Math.PI > 4 ? "Yep" : "Nope";
~~~~



Também são possíveis múltiplas avaliações ternárias (nota: o operador condicional é associativo a direita):

~~~~javascript
let firstCheck = false,
    secondCheck = false,
    access = firstCheck ? "Access denied" : secondCheck ? "Access denied" : "Access granted";

console.log( access ); // logs "Access granted"
~~~~



A estrutura condicional pode ser traduzida da seguinte forma:

~~~~javascript
if (firstCheck){
    acess="Access denied"
}else if(secondCheck){
    acess="Access dineid"
}else{
    acess="Access granted";
}

console.log(acess);
~~~~



### Switch Case

~~~~javascript
const expr = "Laranjas"

switch (expr) {
    case "Laranjas":
      console.log("As laranjas custam $0.59 o quilo.");
      break;
    case "Maçãs":
      console.log("Maçãs custam $0.32 o quilo.");
      break;
    case "Bananas":
      console.log("Bananas custam $0.48 o quilo.");
      break;
    case "Cerejas":
      console.log("Cerejas custam $3.00 o quilo.");
      break;
    case "Mangas":
    case "Mamões":
      console.log("Mangas e mamões custam $2.79 o quilo.");
      break;
    default:
      console.log("Desculpe, estamos sem nenhuma " + expr + ".");
  }
  
  
~~~~

Se você não utilizar o break, o script irá rodar a partir do caso onde o critério foi correspondido e irá rodar também o caso seguinte independentemente do critério ter sido correspondido ou não.



### While

~~~~javascript
let n = 0;
let x = 0;

while (n < 3) {
  n++;
  x += n;
}

console.log(x)
~~~~



### Do While

Exemplo com HTML

~~~~html
<div id="exemplo"></div>
~~~~



~~~~javascript
let resultado = '';
let i = 0;
do {
   i += 1;
   resultado += i + ' ';
} while (i < 5);

document.getElementById('exemplo').innerHTML = resultado;
~~~~



### For

Sintaxe:

~~~~javascript
for ([inicialização]; [condição]; [expressão final])
   declaração
~~~~

Exemplo:

~~~~javascript
for (let i = 0; i < 9; i++) {
   console.log(i);
   // more statements
}
~~~~



### For In

O laço for...in somente interage sobre propriedades enumeradas. É uma relação para enumerar chave e produto.



Sintaxe:

~~~~javascript
for (variavel in objeto) {
    ...
}
~~~~

Exemplo:

~~~~javascript
//Objeto
var obj = {a:1, b:2, c:3};

//Para chave (propriedade) in obj (objeto) faça
for (let chave in obj) {
  console.log("obj." + chave + " = " + obj[chave]);
}

//A saída (output) deverá ser:
// "obj.a = 1"
// "obj.b = 2"
// "obj.c = 3"
~~~~



### Continue

Diferentemente do [`break`](https://developer.mozilla.org/pt-BR/docs/Web/JavaScript/Reference/Statements/break), o `continue` não termina a execução do laço completamente, em vez disso ele:

- Volta à condição, em um laço do tipo [`while`](https://developer.mozilla.org/pt-BR/docs/Web/JavaScript/Reference/Statements/while).
- Volta à expressão, atualizando-a, em um laço do tipo [`for`](https://developer.mozilla.org/pt-BR/docs/Web/JavaScript/Reference/Statements/for).

~~~~javascript
var i = 0;
var n = 0;

while (i < 5) {
  i++;

  if (i === 3) { //quando o valor de i for igual a 3, ele encerará o terceiro laço e pulará para o 4. Logo, a variável n não será incrementada neste laço.
    continue;
  }

  n += i;
}

console.log(n)
~~~~





## 📌Funções

Cidadão de primeira linha

- Função em JS é First-Class Object

- Higher-order function



Criar de forma literal

~~~~javascript
function fun1(){}
~~~~



Armazenar em uma variável

~~~~javascript
const fun1 = function(){}
~~~~



Armazenar em um array

~~~~javascript
const array = [function(a,b){return a+b}, fun1, fun2]
console.log(array[0](5,3))
~~~~



Armazenar emum atributo de objeto

~~~~javascript
const obj = {}
obj.falar = function(){return 'Hello,World!'}
console.log(obj.falar())
~~~~



Passar uma função como parâmetro	

~~~~javascript
function run(fun){
    fun()
}

run(function(){console.log("Executando...")})
~~~~



Uma função pode retornar/conter uma função	

~~~~javascript
function soma(a,b){
    return function(){
        console.lot(a+b+c)
    }
}
//chamando a função
soma(2,3)(4)

//outra forma
const cincoMais = soma(2,3)
cincoMais(4)
~~~~



Parâmetros e Retorno São Opcionais

~~~~javascript
function area(largura,altura){
    const area= largura*altura
    if (area>20){
        console.log(`Valor acima do permitido: ${area}m2. `)
    }else{
        return area
    }
}

console.log(area(2,2)) //4
console.log(area(2))//NaN
console.log(area())//NaN
console.log(area(2,3,17,22,44))//6
console.log(area(5,5))//valor acima do permitido: 25m2

~~~~

 

### Parâmetro Padrão

~~~~javascript
function soma1(a=1,b=1,c=1){
    return a + b + c
}

console.log(soma1());
~~~~



### A palavra THIS

- Refere-se ao dono da função ou do objeto em que está sendo utilizado.

- Pode variar dependendo do lugar da função em que foi inserido

- Não varia em arrows functions

~~~~javascript
const pessoa = {
    saudacao: 'Bom dia!',
    falar(){
        console.log(this.saudacao); //this referencia o objeto da função, ou seja, pessoa. É o mesmo que pessoa.saudacao
    }
}

pessoa.falar(); //bom dia!
const falar = pessoa.falar
falar()//undefined
 //conflito entre paradigmas de funcional e Orientação a objeto

const falarDePessoa = pessoa.falar.bind(pessoa) // 
falarDePessoa(); //Bom dia!
~~~~

O é um bind método responsável por "amarrar" um determinado objeto.



#### Exemplo

Neste caso, a função não irá exibir a idade, pois o this está se referindo a outro objeto

~~~~javascript
function Pessoa(){
    this.idade= 0

    setInterval(function(){ //Ativa outra função a partir de um intervalo de tempo
        this.idade++
        console.log(this.idade)
    },1000)
}

new Pessoa
~~~~



Para solucionar o problema, faremos da seguinte maneira

~~~~javascript
function Pessoa(){
    this.idade= 0

    setInterval(function(){ 
        this.idade++
        console.log(this.idade)
    },bind(this),1000); //A partir de agora, o This irá apontar para pessoa
}

new Pessoa
~~~~



#### Outra forma

~~~~javascript
function Pessoa(){
    this.idade= 0

    const self=this //Após "salvar" a posição do this numa constante, não será necessário utilizar o bind
    setInterval(function(){ 
        self.idade++
        console.log(self.idade)
    },1000); 
}

new Pessoa
~~~~



### Funções Arrow 

~~~~javascript
let dobro = function(a){
    return 2*a
}

dobro = (a) => {
    return 2*a
}

dobro = a => 2*a //usado apenas para funções de uma única linha

~~~~

Sem parâmetro

~~~~javascript
ola = () => "olá, mundo";
ola = _ => "olá, mundo";
~~~~



### Funções Anônimas

São funções sem nomes que, geralmente, são salvas em uma variável ou constante.

~~~~javascript
const soma = function (x,y){
    return x+y
}


const imprimirResultado = function(a,b, operacao = soma){
    console.log(operacao(a,b))
}

imprimirResultado(3,4)
imprimirResultado(3,4, soma)

//Passando uma função anônima para outra função anônima
imprimirResultado(3,4, function(x,y){
    return x-y
});

//Passando uma arrow function para uma função anônima
imprimirResultado(3,4,(x,y) => x*y);
~~~~



### Funções CallBack

*Pesquisar: padrão de projeto observer*

Consiste em passar uma função para outra função e, caso algum evento ocorra, a função passada será chamada de volta.

~~~~javascript
const fabricantes = ["Mercedes","Audi","BMw"];


//essa função será utilizada como callback, pois será chamada pelo forEach a cada índice que encontrar. 
function imprimir(nome, indice){ 
    console.log(`${indice + 1}.${nome}`);
}

fabricantes.forEach(imprimir) 

fabricantes.forEach(function(fabricante){
    console.log(fabricante);
})

~~~~



Exemplo sem callback

~~~~javascript
const notas = [7.7,6.5,5.2,8.9,3.6,7.1,9.0]

let notasBaixas = []
for (let i in notas) {
    if (notas[i] < 7){
        notasBaixas.push(notas[i]);
    }
}

console.log(notasBaixas);
~~~~



#### Exemplo com callback

~~~~javascript
const notas = [7.7,6.5,5.2,8.9,3.6,7.1,9.0]
let notasBaixas = []
notasBaixas = notas.filter(function(nota){
    return nota < 7
});

console.log(notasBaixas)

~~~~



#### Exemplo com callback e arrow function

~~~~javascript
const notas = [7.7,6.5,5.2,8.9,3.6,7.1,9.0]
const notasBaixas = notas.filter(nota => nota < 7);
console.log(notasBaixas)
~~~~



#### Exemplo com callback e arrow function em uma constante

~~~~javascript
const notas = [7.7,6.5,5.2,8.9,3.6,7.1,9.0]

const calcularNota = nota => nota < 7

const notasBaixas = notas.filter(calcularNota);
console.log(notasBaixas)
~~~~



### Funções Construtoras

~~~~javascript
function Carro(velocidadeMaxima = 200, delta = 5){
    //atributo privado
    let velocidadeAtual = 0

    //metodo publico
    this.acelerar = function (){
        if (vecolidadeAtual + delta <= velocidadeMaxima){
            velocidadeAtual += delta
        }else{
            velocidadeAtual = velocidadeMaxima
        }
    }

    //método público 
    this.getVelocidadeAtual = function(){
        return velocidadeAtual;
    }
}

const uno = new carro
uno.acelerar()
console.log(uno.getVelocidadeAtual())
s
const ferrari =  new carro(350, 20)
ferrari.acelerar()
console.log(ferrari.getVelocidadeAtual);
~~~~



### Closures

É o escopo criado quando uma função é declarada que permite que a função acesse e manipule variáveis externas a ela. Em outras palavras, é uma função que se "lembra" do ambiente — ou escopo léxico — em que ela foi criada.

~~~~javascript

const x = "Global";

function fora(){
    const x = "local" //
    function dentro(){ //função aninhada (um closure) que terá a constante "local" como prioridade
        return x
     }
    return dentro();
}

const minhaFunaco = fora()
console.log(minhaFunaco);
---
Local
~~~~

Mais informações sobre Closures: https://developer.mozilla.org/pt-BR/docs/Web/JavaScript/Closures



### Função Factory

É uma função que retornar um objeto

Exemplo sem parâmetro

~~~~javascript
function criarProduto(){
    return{
        nome:"Macarrão",
        preco: 7
    }
}

console.log(criarProduto());
~~~~

Sempre que a função for chamada, será possível criar um novo produto



Exemplo com parâmetro

~~~~javascript
function criarProduto(nome,preco = 0){
    return{
        nome: nome,
        preco: preco
    }
}

console.log(criarProduto("Arroz",10));
---
{nome: 'Arroz', preco: 10}
~~~~



Se os nomes dos atributos forem iguais aos dos parâmetros, não será necessário abribui-los:

~~~~javascript
function criarProduto(nome,preco = 0,desconto = 0){
    return{
        nome,
        preco,
        desconto
    }
}

console.log(criarProduto("Notebook", 5.000,0.1));
console.log(criarProduto("TV", 7.000,0.1));
---
{nome: 'Notebook', preco: 5, desconto: 0.1}
{nome: 'TV', preco: 7, desconto: 0.1}
~~~~



#### Classe vs Função factory

Criando objetos a partir de uma classe

~~~~javascript
class Pessoa{
    constructor(nome){
        this.nome = nome;
    }

    falar(){
        console.log(`Meu nome é ${this.nome}`);
    }
}

const p1 = new Pessoa("João")
p1.falar();
~~~~



Criando objetos a partir de uma função construtora

~~~~javascript
function Pessoa(nome){
    this.nome = nome;
        

    this.falar = function(){
        console.log(`Meu nome é ${this.nome}`);
    }
}

const p1 = new Pessoa("João")
p1.falar();
~~~~



Criando objetos a partir de uma função factory

~~~~javascript
const criarPessoa = nome => {
    return{
        falar: () => console.log(`Meu nome é ${nome}`) //não é necessário o this
    }
}
const p2 = criarPessoa("ana")
p2.falar();
~~~~



### IIFE

**IIFE** (Immediately Invoked Function Expression) é uma função em [JavaScript](https://developer.mozilla.org/en-US/docs/Glossary/JavaScript) que é executada assim que definida.

É um [Design Pattern](https://developer.mozilla.org/en-US/docs/Glossary/Design_Pattern) também conhecido como [Self-Executing Anonymous Function](https://developer.mozilla.org/en-US/docs/Glossary/Self-Executing_Anonymous_Function) e contém duas partes principais. A primeira é a função anônima cujo escopo léxico é encapsulado entre parênteses. Isso previne o acesso externo às variáveis declaradas na IIFE, bem como evita que estas variáveis locais poluam o escopo global.

A segunda parte corresponde à criação da expressão `()`, por meio da qual o interpretador JavaScript avaliará e executará a função.



**Exemplo**:

A função se torna uma expressão que é imediatamente executada. A variável definida dentro da expressão não pode ser acessada fora de seu escopo.

~~~~javascript
(function () {
    var nome = "Felipe";
})();
// A variável nome não é acessível fora do escopo da expressão 
nome // gerará o erro "Uncaught ReferenceError: nome is not defined"
~~~~

Atribuir uma IIFE a uma variável não armazenará a função em si, mas o **resultado da função.**

~~~~javascript
var result = (function () {
    var nome = "Felipe";
    return nome;
})();
// Imediatamente gera a saída: 
result; // "Felipe"
~~~~



### Callback and Apply

São mais dois métodos diferente para executar uma função (tipo) em JavaScript

Observe o código e os exemplos a seguir:

~~~~javascript
function getPreco(imposto = 0, moeda = 'R$ '){
    return `${moeda} ${this.preco * (1 - this.desc) * (1 + imposto)}`
}

const produto = {
    nome: 'Notebook',
    preco: 4589,
    desc: 0.15,
    getPreco
}
const carro = { 
    preco: 49990, 
    desc: 0.20
}
~~~~

Método tradicional

~~~~~javascript
console.log(produto.getPreco());
~~~~~

Utilizando o método Call e Apply

~~~~javascript
console.log(getPreco.call(carro, 0.17, '$'))
~~~~

No Call, o primeiro parâmetro a ser passado é o contexto (objeto) e os demais são os parâmetros propriamente dito.



Já no método Apply, os parâmetros são passados por meio de um Array

~~~~javascript
console.log(getPreco.apply(carro, [0.17],'$'));
~~~~



## 📌Objetos

Um objeto é uma coleção dinâmica de pares chave/valor

~~~~javascript
//Criando objeto
const produto = new Object

//Adicionando atributo
produto.nome = 'Chocolate';
produto.preco = 4.50

//Adicionando atributo (método não tradicional)
produto['marca'] = "Lacta";


//Deletando atributo
delete produto.preco
delete produto['marca']

//Another way
const carro = {
    modelo: 'A4',
    valor: 89000,
    proprietario: {//objeto dentro de um objeto
        nome: "Cláudia",
        idade: 29,
        endereco: {
            logradouro: 'Rua ABC',
            numero: 25
        }
    }
}

//Acessando atributos por notação ponto
carro.proprietario.endereco.numero = 25

//Acessando por chaves
carro['proprietario']['endereco']['logradouro'] = "Rua ABC"

//Imprimindo objeto
console.log(carro)
console.log(carro.proprietario)
console.log(carro.proprietario.endereco)



~~~~



### Criando objetos

**Notação literal (não é JSON)**

~~~~javascript
const dado = {
    ladoA: 6,
    ladoB: 5,
    Ladoc: 4,
    ladoD: 3,
    LadoE: 2,
    LadoG: 1
}
~~~~



**Object** **em** **JS**

~~~~javascript
const obj2 = new Object
~~~~



**Funções construtoras**

~~~~javascript
function Produto(nome,preco,desc){
  //nome é público enquanto preço e descontos são privados, já que estão dentro de uma função
    this.nome = nome
    this.getPrecoComDesconto = () => {
        return preco * (1 - desc)
    }
}
const p1 = new Produto('Caneta', 7.99, 0.15)
const p2 = new Produto('Notebook', 7000, 0.10)


//Acesso o objeto com construtor
console.log(p1.getPrecoComDesconto())
console.log(p2.getPrecoComDesconto())
~~~~

Objetos em JS e Funções construtoras praticamente são as mesmas coisas



**Função Factory**

~~~~javascript
function criarFuncionario(nome,salarioBase,faltas){
    return{
        nome,
        salarioBase,
        faltas,
        getSalario(){
            return (salarioBase / 30) * (30 - faltas)
        }
    }
}
const funcionario1 = criarFuncionario('Márcio', 7980, 4)
console.log(funcionario1.getSalario())

const funcionario2 = criarFuncionario('Ana', 11200, 1)
console.log(funcionario2.getSalario())
~~~~



**Object.create**

~~~~javascript
const filha = Object.create(null)
filha.nome="ana"
console.log(filha)
~~~~



**JSON.parse**

Transforma um arquivo JSON em um objeto

~~~~javascript
const fromJSON = JSON.parse('{"info": "Arquivo JSON"}')//geralmente é utilizado o endereçamento do arquivo JSON
console.log(fromJSON)
console.log(fromJSON.info)
~~~~



### Objetos const

No exemplo a baixo, o objeto pessoa aponta para um endereço de memória x

~~~~javascript
const pessoa  = { nome: 'Joao' } 
~~~~

Não é possível adicionar um novo objeto à constante, pois é uma tentativa de apontamento para outro endereço de memória

~~~~javascript
pessoa = {nome : 'Pedro'}
~~~~

Porém, é possível alterar o atributo do objeto

~~~javascript
pessoa.nome = 'Pedro'
console.log(pessoa)
~~~



### Getters/Setters

~~~~javascript
const sequencia = {
    _valor: 1,
    get valor(){
        return this._valor++
    },
    set valor(valor){
        this._valor = valor
    }
}
~~~~

~~~javascript
console.log(teste)
~~~



### Funções importantes de objects



~~~~javascript
const pessoas = {
    nome: 'Rebeca',
    idade: 2,
    peso: 13,
    dataNascimento: '01/01/2019'
}
~~~~



**Todas as chaves do objeto**

~~~~javascript
console.log(Object.keys(pessoas))
~~~~



**Todos os valores**

~~~~javascript
console.log(Object.values(pessoas))
~~~~



**Todos os pares de chaves e valores**

~~~~javascript
console.log(Object.entries(pessoas))
~~~~

~~~~javascript
Object.entries(pessoas).forEach (([chave,valor]) => {
    console.log(`${chave}: ${valor}`)
})
~~~~



**Definindo a propriedade dos atributos de um objeto**

~~~~javascript
Object.defineProperty(pessoas, 'dataNascimento',{//objeto , 'atributo'
    // definindo propriedades
    enumerable: true, //permissão para ser listada
    writable: false, //permissão para ser sobreescrita
    value: '01/01/2019' //definição padrão
})
~~~~

A partir de agora a data de nascimento passará a ter uma data padrão e não poderá ser alterada



**Object.assign**

Concatena atributos de diferentes objetos para um único objeto

~~~~javascript
const dest = {a: 1}
const o2 = {b: 2}
const o3 = { c: 3, a:4}
const obj = Object.assign(dest,o2,o3)
console.log(obj)
~~~~



### Herança

[Sessão adiada]

~~~~javascript

~~~~



### Evitando Modificações



**Object.preventextensions**

Previne que a quantidade de atributos do objeto seja estendida

~~~~javascript
const objeto = Object.preventExtensions({
    nome: 'Qualquer', preco: 1.99, tag: 'promoção'
})
~~~~

Ou:

~~~~javascript
Object.preventExtensions(objeto)
~~~~



**Object.seal**

Só será possível modificar os atributos existentes. Não será possível adicionar nem excluir

~~~~javascript
const objeto = Object.seal({
    nome: 'Qualquer', preco: 1.99, tag: 'promoção'
})
~~~~

ou:

~~~~javascript
Object.seal(objeto)
~~~~



**Congelando o objeto**

Após congelar o objeto, não será possível alterar o objeto e todos os atributos passará a ser uma constante

~~~~javascript
Object.freeze(pessoa)
~~~~

No caso abaixo, o objeto já é atribuído com os atributos sendo constante

~~~~javascript
const pessoaConstante = Object.freeze({nome:"João"})
~~~~





### JSON vs Object

**Passando o objeto para JSON**

~~~~javascript
const objt = { a:1, b:2, c:3, soma(){return a+b+c}}
console.log(JSON.stringify(objt))
~~~~

ou

~~~~javascript
const objt = JSON.stringify({ a:1, b:2, c:3, soma(){return a+b+c}})
~~~~



**Passando o JSON para objeto**

~~~~javascript
console.log(JSON.parse('{"info": "Arquivo JSON"}'))
~~~~



## 📌Classe

### Criando uma classe

Primeiramente deve declarar sua classe para só então acessa-la. As classes também podem possuir nomes ou não.

~~~~javascript
// sem nome
let Retangulo = class {
  constructor(altura, largura) {
    this.altura = altura;
    this.largura = largura;
  }
};

// nomeada
let Retangulo = class Retangulo {
  constructor(altura, largura) {
    this.altura = altura;
    this.largura = largura;
  }
};

const p = new Retangulo();
~~~~



### Corpo de uma classe e definições de métodos



**Métodos Protótipos**

A palavra-chave `static` define um método estático de uma classe. Métodos estáticos são chamados sem a instanciação da sua classe e não podem ser chamados quando a classe é instanciada. Métodos estáticos são geralmente usados para criar funções de utilidades por uma aplicação.

~~~~javascript
class Retangulo {
    constructor(altura, largura) {
      this.altura = altura; this.largura = largura;
    }
  	//Getter
    get area() {
        return this.calculaArea()
    }

    calculaArea() {
        return this.altura * this.largura;
    }
}

const quadrado = new Retangulo(10, 10);

console.log(quadrado.area);
~~~~



**Métodos estáticos**

~~~~javascript
class Ponto {
    constructor(x, y) {
        this.x = x;
        this.y = y;
    }

    static distancia(a, b) {
        const dx = a.x - b.x;
        const dy = a.y - b.y;

        return Math.hypot(dx, dy);
    }
}

const p1 = new Ponto(5, 5);
const p2 = new Ponto(10, 10);

p1.distancia; //undefined
p2.distancia; //undefined

console.log(Ponto.distancia(p1, p2));
~~~~



### Classes e Heranças por protótipos

~~~~javascript
class Avo{
    constructor(sobrenome){
        this.sobrenome = sobrenome;
    }
}


class Pai extends Avo{
    constructor(sobrenome,profissao ='Professor'){
        super(sobrenome)
        this.profissao = profissao
    }
}

class Filho extends Pai{
    constructor(){
        super('Silva')
    }
}

const filho = new Filho
console.log(filho)
~~~~



## 📌Array

### Funções de Array

**Criando um Array**

~~~~javascript
var frutas = ['Maçã', 'Banana'];

console.log(frutas.length);
// 2
~~~~



**Acessar um item (index) do Array**

~~~~javascript
var primeiro = frutas[0];
// Maçã

var ultimo = frutas[frutas.length - 1];
// Banana
~~~~



**Iterar um Array**

~~~~javascript
frutas.forEach(function (item, indice, array) {
  console.log(item, indice);
});
// Maçã 0
// Banana 1
~~~~



**Adicionar um item ao final do Array**

~~~~javascript
var adicionar = frutas.push('Laranja');
// ['Maçã', 'Banana', 'Laranja']

~~~~



**Remover um item do final do Array**

~~~~javascript
var ultimo = frutas.pop(); // remove Laranja (do final)
// ['Maçã', 'Banana'];
~~~~



**Remover do início do Array**

~~~~javascript
var primeiro = frutas.shift(); // remove Maçã do início
// ['Banana'];
~~~~



**Adicionar ao início do Array**

~~~~javascript
var adicionar = frutas.unshift('Morango') // adiciona ao início
// ['Morango', 'Banana'];
~~~~



**Procurar o índice de um item na** **Array**

~~~~javascript
frutas.push('Manga');
// ['Morango', 'Banana', 'Manga']

var pos = frutas.indexOf('Banana');
// 1

~~~~



**Remover um item pela posição do índice**

~~~~javascript
var removedItem = frutas.splice(pos, 1); // é assim que se remove um item
// ['Morango', 'Manga']

~~~~



**Remover itens a partir de uma posição de índice**

~~~~javascript
var vegetais = ['Repolho', 'Nabo', 'Rabanete', 'Cenoura'];
console.log(vegetais);
// ['Repolho', 'Nabo', 'Rabanete', 'Cenoura']

var pos = 1, n = 2;

var itensRemovidos = vegetais.splice(pos, n);
// Isso é como se faz para remover itens, n define o número de itens a se remover,
// a partir da posição (pos) em direção ao fim da array.

console.log(vegetais);
// ['Repolho', 'Cenoura'] (o array original é alterado)

console.log(itensRemovidos);
// ['Nabo', 'Rabanete']

~~~~



**Copiar um Array**

~~~~javascript
var copiar = frutas.slice(); // é assim que se copia
// ['Morango', 'Manga']

~~~~



Quando configurar uma propriedade num array Javascript em que a propriedade é um índice valido do array e este índice está fora do atual limite do array, o array irá crescer para um tamanho grande o suficiente para acomodar o elemento neste índice, e a engine irá atualizar a propriedade *length* do array de acordo com isto:

~~~~javascript
frutas[5] = 'manga';
console.log(frutas[5]); // 'manga'
console.log(Object.keys(frutas)); // ['0', '1', '2', '5']
console.log(frutas.length); // 6

~~~~



### ForEach

Exemplo 1

~~~~javascript
const aprovados = ['Júnior','Melo','Paulo','Ana','Rafaela','Valéria']

aprovados.forEach(function(nome,indice){
    console.log(`${indice} - ${nome}`)
})
~~~~



Exemplo 2

~~~~javascript
aprovados.forEach(nome => console.log(nome))
~~~~



Exemplo 3

~~~~javascript
const exibirAprovados = aprovado => console.log(aprovado)
aprovados.forEach(exibirAprovados)
~~~~



### Map

Função para percorrer o array. 

Exemplo 1

~~~~javascript
const nums = [1,2,3,4,5]

//Gerando o dobro dos elementos
let resultado = nums.map(function(e){
    return e * 2
})

console.log(resultado)

~~~~



Outros Exemplos

~~~~javascript
const soma10 = e => e + 10
const triplo = e => e * 3
const paraDinheiro = e => `R$ ${parseFloat(e).toFixed(2).replace('.',',')}`

resultado = nums.map(soma10).map(triplo).map(paraDinheiro)
console.log(resultado)
~~~~



**Exemplo**

Retorne apenas o preço do produto de um arquivo JSON

~~~~javascript
const carrinho  = [ 
    '{"nome":"Borracha", "Preco":3.45}',
    '{"nome":"caderno", "Preco":12.99}',
    '{"nome":"Caneta", "Preco":2.00}',
    '{"nome":"Borracha", "Preco":1.00}',
    '{"nome":"Lápis de Cor", "Preco":4.50}',
    '{"nome":"Piloto", "Preco":3.20}',
]

/Função para converter texto para objeto
const paraObjeto = json => JSON.parse(json)

//Função para retornar apenas o preço
const apenasPreco = produto => produto.preco


//Aplicando as funções ao JSON
const resultado = carrinho.map(paraObjeto).map(apenasPreco)
console.log(resultado)

~~~~



Entendendo o funcionamento do Map

~~~~javascript
Array.prototype.map2 = function(callback){
    const newArray = []
    for (let i=0; i < this.length; i++){
        newArray.push(callback(this[i], i,this))
    }
    return newArray
}
~~~~



### Filter

Serve para filtrar um array 

**Exemplo**

~~~~javascript
const produtos = [
    { nome: 'Notebook', preco: 2499, fragil: true },
    { nome: 'iPad Pro', preco: 4199, fragil: true },
    { nome: 'Copo de Vidro', preco: 4, fragil: true },
    { nome: 'TV', preco: 5000, fragil: true },
    { nome: 'Cadeira', preco: 400, fragil: false },
    { nome: 'Prato de plástico', preco: 2499, fragil: false },
]


//Função para retornar apenas valores maior ou igual a 500
const caro = produto => produto.preco >=500

//Função para retornar apenas os produtos frágeis
const fragil  = produto => produto.fragil

//Aplicando as funções ao array
const resultado = produtos.filter(caro).filter(fragil)
console.log(resultado)
~~~~



Entendendo o funcionamento do Filter

~~~~javascript
Array.prototype.filter2 = function(callback){
    const newArraty = []
    for (let i = 0; i < this.length; i++){
        if(callback(this[i], i, this)){
            newArraty.push(this[i])
        }
    }
}
~~~~



### Reduce

O método `**reduce()**` executa uma função **reducer** (fornecida por você) para cada elemento do array, resultando num único valor de retorno.

São necessários dois elementos, um para servir de índice e outro para o elemento atual do array. 

Pode ser utilizado, juntamente com o map, para substituir a estrutura de repetição FOR e deixar o código mais reduzido



**Exemplo**

~~~~javascript
const array1 = [1, 2, 3, 4];
const reducer = (accumulator, currentValue) => accumulator + currentValue;

// 1 + 2 + 3 + 4
console.log(array1.reduce(reducer));
// expected output: 10

// 5 + 1 + 2 + 3 + 4
console.log(array1.reduce(reducer, 5));
// expected output: 15

~~~~



**Somar todos os valores de um array:**

~~~~javascript
let total = [0, 1, 2, 3].reduce(function(acumulador, valorAtual) {
   return acumulador + valorAtual;
 }, 0)
// retorna 6
~~~~



**Soma de valores de um objeto de um array**

Para resumir os valores contidos em um array, você **deve** fornecer um valo Inicial, para que cada item passe por sua função.

~~~~javascript
var valorInicial = 0;
var soma = [{x: 1}, {x: 2}, {x: 3}].reduce(function (acumulador, valorAtual) {
    return acumulador + valorAtual.x;
}, valorInicial)

console.log(soma) // retorna 
~~~~



**Exemplo**

~~~~javascript
const alunos = [ 
    { nome: 'João', nota: 7.3, bolsista: true},
    { nome: 'Maria', nota: 4.5, bolsista: false},
    { nome: 'Pedro', nota: 10.0, bolsista: true},
    { nome: 'Roberto', nota: 8.0, bolsista: false},
    { nome: 'Ana', nota: 7.0, bolsista: false},
    { nome: 'Ricardo', nota: 6.0, bolsista: true},
]

~~~~



~~~~javascript
console.log(alunos.map(a => a.nota))

const resultado = alunos.map(a => a.nota). reduce(function(acumulador, atual){
    console.log(acumulador, atual)
    return acumulador + atual
},0)

console.log(resultado)
~~~~



Exemplo 2: Todos os alunos são bolsistas?

~~~~javascript
const bolsistas = (resultado, bolsista) => resultado && bolsista

//O map irá percorrer os elementos 'bolsistas' do array, e irá retornar apenas os que forem verdadeiros com a função reduce bolsista
console.log(alunos.map(a=>a.bolsista).reduce(bolsistas))
~~~~



Exemplo 3: Existe, pelo menos, um aluno bolsista?

~~~~javascript
const algumBolsita = (resultado, bolsista) => resultado || bolsista

console.log(alunos.map(a => a.bolsista).reduce(algumBolsista))
~~~~



Entendendo o funcionamento do Reduce

~~~~javascript
Array.prototype.reduce2 = function(callback){
    let acumulador = this[0]
    for (let i = 1; i < this.length; i++){
        acumulador = callack(acumulador,this[i], this)
    }

    return acumulador
}

const soma = (total, valor) => valor + total
const nums = [1,2,3,4,5,6,7,8,9,10]
console.log(nums.reduce2(soma))
~~~~



### Imperativo Vs Declarativo



**Imperativo**

Em uma abordagem imperativa, o método em que um algoritmo é feito é mais importante que o resultado dele

~~~~javascript
let total1 = 0
for (let i = 0; i < alunos.length; i++){
    total1 += alunos[i].nota
}
console.log(total1 / alunos.length)
~~~~



**Declarativo**

Em uma abordagem declarativa, o foco está atingir o resultado esperado do algoritmo, ao invés de como ele foi construído.

~~~~javascript
const getNota = aluno => aluno.nota
const soma = (total, atual) => total + atual 
const total2 = alunos.map(getNota).reduce(soma)
console.log(total2 / aluno.length)
~~~~



### Concat

Função que concatena dois arrays em um resultante

~~~~javascript
const mulheres = ['Bruna','Alice','Cláudia']
const homens = ['Pedro', 'Daniel', 'Ricardo']
const todos = mulheres.concat(homens)
console.log(todos)
~~~~





### FlatMap

O método **`flatMap()`** primeiro mapeia cada elemento usando uma função de mapeamento e, em seguida, nivela o resultado em um novo array. É idêntico a um `map` seguido por um `flat` de profundidade 1, mas **`flatMap`** é bastante útil e mescla ambos em um método um pouco mais eficiente



Exemplo: Extraindo as notas de todas as turmas

~~~~javascript
const escola = [{
    nome: 'Turma M1',
    alunos: [{
        nome: 'Ana Cristina',
        nota: 9.7
    },{
        nome: 'Cláudio Bezerra',
        nota: 10.0
    }],

    nome: 'Turma M2',
    alunos: [{
        nome: 'Flávio Alcantra',
        nota: 7.5
    },{
        nome: 'Daniel Tavares',
        nota: 6.5
    }],

    nome: 'Truma T1',
    alunos: [{
        nome: 'Vinicius de Castro',
        nota: 8.0
    },{
        nome: 'Verônica Santos',
        nota: 10.00
    }]
  
}]


//Extraíndo a nota de cada aluno
const getNotaDoAluno = aluno => aluno.nota

//Extraíndo todas as notas da turma
const getNotasDaTurma = turma => turma.alunos.map(getNotaDoAluno)

//Neste caso, será gerado um array dentro de um array. Ou seja,as notas ainda serão divididas por turmas
const notas1 = escola.map(getNotasDaTurma)

// Para retornar apenas as notas, independente da turma, basta utulizar a função flatmap
Array.prototype.flatMap = function(callback){
    return Array.prototype.concat.apply([],this.map(callback))
}

const notas2 = escola.flatMap(getNotasDaTurma)
console.log(notas2)
~~~~



## 📌Métodos além do curso



### Timeouts e intervalos

#### **setTimeout**

Executa um bloco específico uma vez depois de um determinado tempo

~~~~javascript
// With a named function
let myGreeting = setTimeout(function sayHi() {
  alert('Hello, Mr. Universe!');
}, 2000) //the function will run after 2 secounds

// With a function defined separately
function sayHi() {
  alert('Hello Mr. Universe!');
}

let myGreeting = setTimeout(sayHi, 2000);
~~~~



Passando parâmetros para a função setTimeout()

~~~~javascript
function sayHi(who) {
  alert(`Hello ${who}!`);
}
let myGreeting = setTimeout(sayHi, 2000, 'Mr. Universe');
~~~~



Cancelando timeouts

~~~~javascript
clearTimeout(myGreeting);
~~~~



#### setInterval

Executa um bloco específico repetidamente com um intervalo fixo entre cada chamada.

~~~~javascript
function displayTime() {
        let date = new Date();
        let time = date.toLocaleTimeString();
        document.querySelector('.clock').textContent = time;
      }

displayTime();
      const createClock = setInterval(displayTime, 1000);
~~~~



Cancelando Intervals

~~~~javascript
const myInterval = setInterval(myFunction, 2000);
clearInterval(myInterval);
~~~~



#### requestAnimationFrame

Uma versão moderna de `setInterval()`. Ela executa um bloc de código específico antes do navegador renderizar a tela novamento, permitindo que seja executada em uma taxa de quadros adequada, independentemente do ambiente em que está sendo executado. Não é possível definir o tempo e, por esse motivo, a função será executada de imediato.

~~~~javascript
function draw() {
   // Drawing code goes here
   requestAnimationFrame(draw);
}

draw();
~~~~



### Diferença entre This e e.target

O `this` se refere ao elemento ao qual foi anexado o evento. Já o `event.target` se refere ao elemento que disparou o evento.

Por exemplo, suponha que você esteja manipulando uma tabela e queira pegar o evento `click` em uma `td`.

~~~~html
<table>
    <tr>
        <td id="teste">
            <img src="testando.png" />
        </td>
    </tr>
</table>
<script>
	$("#teste").on("click", function(event) {
    console.log(this);
    console.log(event.target);
});
</script>
~~~~

O `this` se refere ao elemento ao qual foi anexado o evento. Já o `event.target` se refere ao elemento que disparou o evento.

Por exemplo, suponha que você esteja manipulando uma tabela e queira pegar o evento `click` em uma `td`.

```js
<table>
    <tr>
        <td id="teste">
            <img src="testando.png" />
        </td>
    </tr>
</table>

$("#teste").on("click", function(event) {
    console.log(this);
    console.log(event.target);
});
```

Neste exemplo, se o usuário clicar na **imagem**, o `event.target` se refere a imagem e o `this` se refere a `td#teste`.

Fonte: https://pt.stackoverflow.com/questions/51206/qual-a-diferen%C3%A7a-do-this-e-do-event-target



# Node➰

O Node executa códigos JavaScript tanto backend/servidor quanto no frontend/interface.



## **Sistema de Módulos**

Em Node, cada arquivo representa um módulo. Isto é, apenas uma parte do código geral.

A partir desse conceito, é possível importar e exportar códigos de um arquivo para o outro.



### Formas de importar e exportar módulo

**Exemplos 1**

Nome do arquivo: "moduloA"

~~~~javascript
this.ola = "Olá, mundo"
~~~~

~~~~javascript
exports.bemVindo = "Bem Vindo ao Node"
~~~~

~~~~javascript
module.exports.ateLogo = 'Até logo'
~~~~



**Exemplo 2 (modo clássico)**

Nome do arquivo: "moduloB"

~~~~javascript
module.exports = {
    bomDia: 'Bom dia',
    boaNoite(){
        return "Boa Noite"
    }
}
~~~~

Agora, os objetos criados estarão disponíveis para exportação



Importando os módulos em um novo arquivo

~~~~javascript
const moduloA = require('./moduloA')
const moduloB = require('./moduloB')

console.log(moduloA.ola)
console.log(moduloA.bemVindo)
console.log(moduloA.ateLogo)
console.log(moduloB.bomDia)
~~~~



#### Usando Módulos de Terceiros

~~~~javascript
npm //método responsável por baixar módulos, bibliotecas e afins
~~~~



No terminal do Node

~~~~javascript
npm i lodash
~~~~



**Exemplo 1** **- Instalando um módulo a partir de uma pasta**

Utilizaremos a função random que está contida no lodash

~~~~javascript
const _ = require('lodash') //A partir daí, o próprio node irá procurar os arquivos dentro da pasta de módulos

setInterval(() => console.log(_.random(1,1000)),2000)
~~~~



**Exemplo 2 - Instalando do módulo nodemon de forma global**

O nodemon é um utilitário que irá monitorar todas as alterações nos arquivos de sua aplicação e reiniciar automaticamente o servidor quando for necessário.

No terminal (no caso do windows, sem o sudo)

~~~~
sudo npm i -g nodemon
~~~~

Após isso, o comando nodemon estará disponível.



#### Sistemas de Módulo Require

**Exemplos**

~~~~javascript
const moduloA = require("../../moduloA") //os ..
console.log(moduloA.ola)
~~~~



[INSERIR CONTINUAÇÃO DO CONTEÚDO]





# Integrando HTML,CSS e JS 🌌



### DOM

O DOM (Document Object Model) representa o mesmo documento para que possa ser manipulado. O DOM é uma representação orientada a objetos da página da web, que pode ser modificada com uma linguagem de script como JavaScript.

<a href="https://imgur.com/cTKAZe3"><img src="https://i.imgur.com/cTKAZe3.png" title="source: imgur.com" /></a>



### Selecionando elementos com do documentElements



**Por ID**

~~~~javascript
document.getElementById('id')

//Adicionando uma classe
document.getElementById('id').classList.add('destague')

//Removendo uma classe
document.getElementById('id').classList.remove('destague')
~~~~



**Selecionando mais de um elemento**

~~~~javascript
const divs = document.getElementsByTagName('div')
Array.from(divs).forEach(e => e.classList.remove('destaque'))
~~~~

Todos os elementos div serão selecionados, jogados em um array e terão a classe destaque removida



**Outra forma de transformar os elementos em um array**

~~~~javascript
const divsArray = [...divs]
divsArray.forEach(e => e.classList.add('destaque'))
~~~~



**Selecionando por classe**

~~~~javascript
const ultimosElementos = document.getElementsByClassName('ultimo')
for (let e of ultimosElementos){
    e.classList.remove('destaque')
}
~~~~



### Selecionando elementos com o querySelector

O querySelector espera um seletor por CSS

~~~~javascript
document.querySelector("#id") //observe que neste caso utilizaremos o # ou .
~~~~



**Exemplo:**

~~~~javascript
document.querySelector("#primeiro").classList.add('destaque')
~~~~

~~~~javascript
const selecionar = selector =>
	document.querySelectorAll(selector).forEach(e => e.classList.add('destaque'))

selecionar('div')
selecionar('.terceiro.ultimo')
selecionar(':not(#primeiro)')
~~~~

O querySelectorAll seleciona todos os elementos e retorna no formato nodelist. Algumas funções como o forEach estão disponíveis. Para outras, será necessário utilizar um array.



~~~~javascript
const deselecionar = seletor = > 
      document.querySelectorAll(selector).forEach(e => e.classList.remove('destaque'))

deselecionar('*')

~~~~



### Selecionando forms com o document.forms

~~~~javascript
console.log(documnet.forms)
console.log(document.forms[0])
console.log(document.getElementsByName('pesquisa'))//Nome do formulário
console.log(document.pesquisa)

document.pesquisa.q.value = 'linux' //Altera o valor do input a partir do name
document.pesquisa.hl.
~~~~



### Acessando Atributos

~~~~javascript
const img = document.querySelector('img') //Seleciona o elemento
const img = document.querySelector('.img') //Seleciona uma classe
const img = document.querySelector('#img') //Seleciona um ID
const img = document.querySelector('[img]') //Seleciona uma propriedade
~~~~



Exemplo 1: acessando o src da imagem

~~~~javascript
//Método 1
console.log('getAttribute', img.getAttribute('src'))
//Método 2
console.log('src', img.src)
~~~~



Exemplo 2: alterando o valor de um link

~~~~javascript
//Método 1
const link = document.querySelector('a')
link.firstChild.nodeValue = "Novo Texto"
//Método 2
const link = document.querySelector('a')
link.innerHtml = "Texto 2"
~~~~



Exemplo 3: acessando as propriedades de um elemento

~~~~html
<body class='conteudo exercicio'>
    <div>
        <label for="compras">Compras</label>
        <ul id="compras" destino='escritório' data-urgencia="5">
            <li>Café</li>
            <li>Água</li>
            <li>Copo Descartável</li>
        </ul>
    </div>
</body>
 <script>
        const lista = document.querySelector('#compras')
        //Acessando as propriedades do elemento ul

        //Elementos filhos
        console.log("childNodes",lista.childNodes) 

        //valor de um elemento
        console.log('destino',lista.destino) //Como 'destino' não é uma propriedade reconhecida, será retornado undefield

        //valor de um elemento
        console.log('getAttribute',lista.getAttribute('destino'))
        
        //atribuindo um atributo
        lista.setAttribute('destino','empresa')

        //removendo um atributo
        lista.removeAttribute('destino')

    </script>
~~~~



Exemplo 4: acessando somente leitura

~~~~html
<body class='conteudo exercicio'>
    <div>
        <ul id="compras" destino='escritório' data-urgencia="5">
            <li>Café</li>
            <li>Água</li>
            <li>Copo Descartável</li>
        </ul>
    </div>
</body>
<script>
        const lista = document.querySelector('#compras')
        //Somente leitura
        console.log(lista.attributes)
        console.log(lista.attributes[0])
        console.log(lista.attributes[1])
        console.log(lista.attributes.id)
        console.log(lista.attributes.destino)
        console.log(lista.attributes['data-urgencia'])
        
    </script>
~~~~





### Acessando Classes

~~~~html
<body class='conteudo exercicio'>
    <div>
        Classes
    </div>
    
</body>
<script>
        //obtendo a lista de classes do elemento div
        const classes = document.querySelector('div').classList
        //adicionando classe
        classes.add('destaque')
        //removendo classe
        classs.remove('destaque')
        //verificando se uma classe está inserida no elemento
        console.log(classes.contains('destaque'))
        //quantidade de classes
        console.log(classes.length)
        

    </script>
~~~~



### Modificando o HTML



~~~~html
<body class='conteudo exercicio'>
    <script>
       const body = document.querySelector('body')

        //Criando uma div
       const div1 = document.createElement('div')
       //adicionando classe na div
       div1.classList.add('destaque')
       //adicionando texto na div
       div1.innerHTML = 'Primeiro'

       const div2 = document.createElement('div')
       div2.setAttribute('wm-atributo','valor')
       div2.innerHTML = 'Segundo'

       const p = document.createElement('p')
       p.innerHTML = 'Terceiro'

       const div3 = document.createElement('div')
       //enviando a div 3 para o último elemento do p
       div3.appendChild(p)

        //enviando a div criada para o body do HTML
       body.appendChild(div1)
       body.appendChild(div2)
       body.appendChild(div3)

        //clonando um elemento
        const div4 = div3.cloneNode(true)
        body.appendChild(div4)

  </script>
~~~~



~~~~html
<body class='conteudo exercicio'>
    <div>
        <p>Texto Inicial</p>
    </div>
    <script>
        //Substituíndo os elementos de dentro div
       const div = documnet.querySelector('div')
       div.innerHTML = 'Texto Alterado'
      
      //substituíndo o prório elemento
      div.outerHTML = "Texto Alterado"

      //Inserindo um elemento antes do refenciado
      div.insertAdjacentHTML('beforebegin','<p> Texto </p>')

      //Inserindo um elemento depois do início 
      div.insertAdjacentHTML('afterbegin','<p> Texto </p>')

      //Inserindo um elemento antes do fim 
      div.insertAdjacentHTML('beforeend','<p> Texto </p>')

      //Inserindo um elemento depois do fim 
      div.insertAdjacentHTML('afterend','<p> Texto </p>')

    </script>
</body>
~~~~

Obtendo apenas do texto de um elemento

~~~~javascript
console.log(div.innerText)
~~~~



### Eventos

Criando um evento de click

~~~~html
<div>
        <a href="https://google.com.br" onclick="navegarEm5s(event)">Google</a>
    </div>
    <script>
       function navegarEm5s(e){
           e.preventDefault()//previne que o comportamento pradão do site ocorra. Sem essa condição, o comportamento do tempo não será aceito.
            console.log("Saindo em 5 segundos...")
            
            setTimeout(() =>{
                const link = e.target //o target reponsável por ativar o evento em uma tag link. 
                window.location.href = link.href // substituíndo o link do endereçamento
                //isso fica como: e.target.href
            },5000)//Estabelecendo o tempo de execução da função
       }
    </script>
~~~~



Outro método: o onclick estará inserido dentro do próprio script

~~~~html

<div>
        <a href="https://google.com.br">Google</a>
    </div>
<script>
	function navegarEm5s(e){
          e.preventDefault();
          console.log('Saindo em 5s...');
          setTimeout(()=> {
              const link = e.target
              window.location.href = link.href 
          },5000)
       }
    
    const a = document.queryselector('a')
    a.onclick = navegarEm5s
</script>

~~~~



Criando um evento com atributo personalizado

~~~~html
<div>
        <a esperar-carregamento href="https://google.com.br" >Google</a>
    </div>
    <script>
        
       function navegarEm5s(e){
           e.preventDefault()
            console.log("Saindo em 5 segundos...")
            
            setTimeout(() =>{
                const link = e.target 
                window.location.href = link.href 
            },5000)

        const a = document.querySelector('[esperar-carregamento]')
        a.onclick = navegarEm5s
       }
    </script>
~~~~



Exemplo: Mover uma div com o mouse

~~~~html
<body class="conteudo exercicio">
    <div>Elemento</div>

    <script>
        const item = document.querySelector('div')
        //definindo a posição da div em absolute
        item.style.position = 'absolute'
        //Adicionando uma função para arrastar a div com o mouse
        item.onmousemove = e => {
            // e -> o [e]vento (parâmetro)
            // item -> div responsável por disparar o evento
            const item = e.target
            item.style.cursor = 'move'
            
            if (e.buttons){              
                // target.style.top -> div cujo position é top
                // e.clientY = cursor do mouse no eixo Y que será subtraído pela metade da altura
                item.style.top = `${e.clientY - (item.clientHeight / 2)}px`
                // e.clientX = cursor do mouse no eixo X que será subtraído pela metade da largura
                item.style.left = `${e.clientX - (item.clientWidth / 2)}px`
            }
        }

    </script>
</body>
~~~~



Exemplo: criando animações básicas

- [Move container](https://github.com/Jailsonsdsj/animations-js/blob/master/Move%20container.html)

- [Dropzone flex](https://github.com/Jailsonsdsj/animations-js/blob/master/dropzone%20-%20flex.html)

- [Dropzone solid](https://github.com/Jailsonsdsj/animations-js/blob/master/dropzone%20-%20solid.html)



#### Tratando as informações do formulário

Método I

~~~~html
<body class="conteudo exercicio">
    <h1>Formulário</h1>
    <form name="pesquisa" action="http://www.google.com.br/search">
        <input type="text" name="q" placeholder="Digite o termo...">
        <select name="hl">
                <option value="pt-br">Português (Brasil)</option>
                <option value="en-us">Inglês (Americano)</option>
            </select>
        <button wm-submit>Pesquisar</button>
    </form>
    <script>
       const submit = document.querySelector('[wm-submit]')
       submit.onclick = function(e){
           e.preventDefault()

           const form = e.target.parentNode//e.target está no botão de pesquisa e o parentNode é quem envolve esse botão, ou seja, o formulário

           const formData = new FormData(form)
           formData.append('ajax',true) //adicionando uma informação ao formulário
           console.log(formData.get('q')) //retorna os valores dentro do campo 'q' 
           console.log(formData.has('hl')) //retorna se um campo foi preenchido (boolean)

            //criando um for para exibir todos os dados do form
           for (let dado of formData){
               console.log(dado) 
           }
       }
    </script>
</body>
~~~~



Método II

~~~~html
<body class="conteudo exercicio">
    <h1>Formulário</h1>
    <form name="pesquisa" action="http://www.google.com.br/search">
        <input type="text" name="q" placeholder="Digite o termo...">
        <select name="hl">
                <option value="pt-br">Português (Brasil)</option>
                <option value="en-us">Inglês (Americano)</option>
            </select>
        <button wm-submit>Pesquisar</button>
    </form>
    <script>
       const form = document.forms[0] //considera o primeiro form do html
       form.onsubmit = function(e){
           e.preventDefault()

           const data = e.target //neste caso, o e.target já é o próprio form e não mais o botão

           const formData = new FormData(data)
           formData.append('ajax',true) 
           console.log(formData.get('q')) 
           console.log(formData.has('hl')) 
           
           for (let dado of formData){
               console.log(dado) 
           }
       }
    </script>
</body>
~~~~

observação: const form e const data tratam-se do mesmo objeto: o formulário. Nesse sentido, basta utilizar apenas o 