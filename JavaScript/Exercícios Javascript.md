# Exercícios Javascript



01) Crie uma função que dado dois valores (passados como parâmetros) mostre no console a soma, subtração, multiplicação e divisão desses valores.

~~~~~javascript
let calculo = (x,y) => {
   console.log(`Soma = ${x+y}`)
   console.log(`Subtração = ${x-y}`)
   console.log(`Multiplicação = ${x*y}`)
   console.log(`Divisão = ${x/y}`)
}

console.log(calculo(10,2))
~~~~~



02) Os triângulos podem ser classificados em 3 tipos quanto ao tamanho de seus lados: 

Equilátero: Os três lados são iguais.

Isósceles: Dois lados iguais. 

Escaleno: Todos os lados são diferentes.

Crie uma função que recebe os comprimentos dos três lados de um triângulo e retorne sua classificação quanto ao tamanho de seus lados. 

(Neste exemplo deve-se abstrair as condições matemáticas de existência de um triângulo).

~~~~~javascript
function triangulo(a,b,c){
    let result = (a==b && a==c && c==b) ? "Triângulo Equilátero" : (a==b || a==c || b==c) ? "Triângulo Isóceles" : (a!==b || a!==c || b!==c) ? "Triângulo Escaleno" : "NaN";
    return result
   
}

console.log(triangulo(5,5,5))
console.log(triangulo(10,5,5))
console.log(triangulo(10,8,5))
~~~~~



03) Crie uma função que recebe dois parâmetros, base e expoente, e retorne a base elevada ao expoente.

~~~~~javascript
const exp = (a,b) => {return a**b}
console.log(exp(2,2))
~~~~~



04) Crie uma função que irá receber dois valores, o dividendo e o divisor. A função deverá imprimir o resultado e o resto da divisão destes dois valores.

~~~~~javascript
const div = (a,b) => {
    result = (b != 0 && a != 0) ? `Result: ${a/b} \nRest: ${a%b}` : "Invalid Input";
    return result
}
console.log(div(2,2))

~~~~~



05) Lidar com números em JavaScript pode dar muita dor de cabeça. Você já viu o que acontece quando faz o seguinte comando no console: console.log(0.1 + 0.2)? O resultado será: 0.30000000000000004. Outra coisa importante de observar é o fato que o ponto é utilizado no lugar da vírgula e vice versa. Com isso, vamos fazer um exercício simples para mostrar dinheiro sempre da forma correta. Desenvolva uma função JavaScript para que ela receba um valor como 0.30000000000000004 e retorne R$0,30 (observe a vírgula e o ponto).

~~~~~javascript
const operation = (a) => {
    let money = a.toFixed(2).toString();
    money = money.replace(".",",");
    return `R$ ${money}`
}
console.log(operation(0.3000000004))
~~~~~



06) Elabore duas funções que recebem três parâmetros: capital inicial, taxa de juros e tempo de aplicação. A primeira função retornará o montante da aplicação financeira sob o regime de juros simples e a segunda retornará o valor da aplicação sob o regime de juros compostos.

~~~~~javascript
let simpleInterest = (p,n,i) => {
    return `simple Interest: ${p*(1+n*i)}`
}

let compoundInterest = (p,n,i) => {
    return `Compound Interest = ${(p*((1+i)**n)).toFixed(2)}`
}

console.log(simpleInterest(100,2,0.02))
console.log(compoundInterest(100,2,0.02))
~~~~~



07) Uma das vantagens da programação é a automatização de tarefas que não gostamos de realizar. Dito isto, elabore uma função cujo objetivo é resolver a fórmula de Bhaskara. Para isso, sua função deve receber três parâmetros, “ax2”, “bx” e “c”, de tal modo que na equação: 3x² - 5x + 12 os valores seriam respectivamente: 3, -5, 12. Como retorno deve ser passado um vetor que tem 2 valores um para cada possível resultado, mesmo que os resultados sejam iguais. Caso o delta seja negativo, retorne, ao invés do vetor, um string com a frase: “Delta é negativo”.

~~~~~javascript

~~~~~



08) Pedro joga N jogos de basquete por temporada. Para saber como está ele está progredindo, ele mantém registro de todos os as pontuações feitas por jogo. Após cada jogo ele anota no novo valor e confere se o mesmo é maior ou menor que seu melhor e pior desempenho. Dada uma lista string = “pontuação1 pontuação2 pontuação3 etc..”, escreva uma função que ao recebê-la irá comparar os valores um a um e irá retornar um vetor com o número de vezes que ele bateu seu recorde de maior número de pontos e quando fez seu pior jogo. (Número do pior jogo). Obs.: O primeiro jogo não conta como novo recorde do melhor. Exemplo: String: “10 20 20 8 25 3 0 30 1” Retorno: [3, 7] (Significa que ele bateu três vezes seu recorde de melhor pontuação e a pior pontuação aconteceu no sétimo jogo.)

~~~~~javascript

~~~~~



08) Pedro joga N jogos de basquete por temporada. Para saber como está ele está progredindo, ele mantém registro de todos os as pontuações feitas por jogo. Após cada jogo ele anota no novo valor e confere se o mesmo é maior ou menor que seu melhor e pior desempenho. Dada uma lista string = “pontuação1 pontuação2 pontuação3 etc..”, escreva uma função que ao recebê-la irá comparar os valores um a um e irá retornar um vetor com o número de vezes que ele bateu seu recorde de maior número de pontos e quando fez seu pior jogo. (Número do pior jogo). Obs.: O primeiro jogo não conta como novo recorde do melhor. Exemplo: String: “10 20 20 8 25 3 0 30 1” Retorno: [3, 7] (Significa que ele bateu três vezes seu recorde de melhor pontuação e a pior pontuação aconteceu no sétimo jogo.)

~~~~~javascript

~~~~~



09) Construa uma função para um sistema de notas de uma instituição que possui a seguinte política de classificação: Todo aluno recebe uma nota de 0 a 100. Alunos com nota abaixo de 40 são reprovados. As notas possuem a seguinte regra de arredondamento: Se a diferença entre a nota e o próximo múltiplo de 5 for menor que 3, arredondar a nota para esse próximo múltiplo de 5. Se a nota for abaixo de 38, não é feito nenhum arredondamento pois esta nota resulta na reprovação do aluno. Por exemplo, a nota 84 será arredondada para 85, mas a nota 29 não será arredondada por ser abaixo de 40 e não ser possível arredondamento eficiente, ou seja, que evite a reprovação do aluno. No caso de a nota ser 38, o arredondamento é possível pois atingirá 40 e o aluno será aprovado.

~~~~~javascript

~~~~~



10) Crie uma função que verifica se um número inteiro passado como parêmetro é divisível por 3 e retorne true ou false.

~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~



~~~~~javascript

~~~~~

