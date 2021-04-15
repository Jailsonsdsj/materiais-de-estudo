# JavaScript 📒

Introdução

Resumo das aulas do curso [Web Moderno Completo](https://www.udemy.com/course/curso-web/) entre outras fontes.



## Estrutura de dados

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
console.log(media.toString(2)) //Retornar o valor em binário

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



## Estruturas de Controle



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

Também são possíveis múltiplas avaliaçãoes ternárias (nota: o operador condicional é associativo a direita):

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



## Funções

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



Exemplo com callback

~~~~javascript
const notas = [7.7,6.5,5.2,8.9,3.6,7.1,9.0]
let notasBaixas = []
notasBaixas = notas.filter(function(nota){
    return nota < 7
});

console.log(notasBaixas)

~~~~



Exemplo com callback e arrow function

~~~~javascript
const notas = [7.7,6.5,5.2,8.9,3.6,7.1,9.0]
const notasBaixas = notas.filter(nota => nota < 7);
console.log(notasBaixas)
~~~~



Exemplo com callback e arrow function em uma constante

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

