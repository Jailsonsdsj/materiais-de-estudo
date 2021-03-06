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
const bhaskara = (a,b,c) => {
    resultado = []
    let del = (b**2)-4*a*c
    if (del > 0){
        let x1 = (-b + Math.sqrt(del))/(2*a)
        let x2 = (-b - Math.sqrt(del))/(2*a)
        resultado.push(`X1 = ${x1.toFixed(2)}`)
        resultado.push(`X2 = ${x2.toFixed(2)}`)
    }else{
        resultado.push("Valor inválido. O Delta precisa ser um valor positivo")
    }
    return resultado
}

console.log(bhaskara(1,12,-13))
console.log(bhaskara(3,-5,12))

~~~~~



08) Pedro joga N jogos de basquete por temporada. Para saber como está ele está progredindo, ele mantém registro de todos os as pontuações feitas por jogo. Após cada jogo ele anota no novo valor e confere se o mesmo é maior ou menor que seu melhor e pior desempenho. Dada uma lista string = “pontuação1 pontuação2 pontuação3 etc..”, escreva uma função que ao recebê-la irá comparar os valores um a um e irá retornar um vetor com o número de vezes que ele bateu seu recorde de maior número de pontos e quando fez seu pior jogo. (Número do pior jogo). Obs.: O primeiro jogo não conta como novo recorde do melhor. 

Exemplo: String: “10 20 20 8 25 3 0 30 1” Retorno: [3, 7] (Significa que ele bateu três vezes seu recorde de melhor pontuação e a pior pontuação aconteceu no sétimo jogo.)

~~~~~javascript

let dados = "10 20 20 8 25 3 0 30 1"

const calcularProgresso = a => {
    let recorde = -1;
    let vezes = 1;
    let numeros = a.split(" ").map(function(e){
        return parseInt(e)
    })

    let maior = numeros[0]
    let menor = numeros[0]

    for (let i= 1; i < numeros.length; i++){
        if (numeros[i] > maior){
            recorde++
        }else if(numeros[i] < menor){
            menor = numeros[i]
            vezes = i+1          
        }  
    }

    return [recorde,vezes]
}

console.log(calcularProgresso(dados))

~~~~~





09) Construa uma função para um sistema de notas de uma instituição que possui a seguinte política de classificação: Todo aluno recebe uma nota de 0 a 100. Alunos com nota abaixo de 40 são reprovados. As notas possuem a seguinte regra de arredondamento: Se a diferença entre a nota e o próximo múltiplo de 5 for menor que 3, arredondar a nota para esse próximo múltiplo de 5. Se a nota for abaixo de 38, não é feito nenhum arredondamento pois esta nota resulta na reprovação do aluno. Por exemplo, a nota 84 será arredondada para 85, mas a nota 29 não será arredondada por ser abaixo de 40 e não ser possível arredondamento eficiente, ou seja, que evite a reprovação do aluno. No caso de a nota ser 38, o arredondamento é possível pois atingirá 40 e o aluno será aprovado.

~~~~~javascript
function calcularNota(nota){
  let novaNota = arredondar(nota)
  let situacao =  novaNota >= 40 ?  "Aprovado" : "Reprovado"
    return situacao
}

function arredondar (nota){
    if (nota % 5 > 2) {
        return nota + ( 5 - (nota%5))
    }else{
        return nota
    }
}

console.log(calcularNota(100))
console.log(calcularNota(38))
console.log(calcularNota(20))
~~~~~



10) Crie uma função que verifica se um número inteiro passado como parâmetro é divisível por 3 e retorne true ou false.

~~~~~javascript
function verificarDivisor(numero){
   return numero % 3 == 0 ? true : false

}

console.log(verificarDivisor(9126))
console.log(verificarDivisor(12))
console.log(verificarDivisor(3))
console.log(verificarDivisor(5))
console.log(verificarDivisor(9))


~~~~~



11) As regras para o cálculo dos anos bissextos são as seguintes: De 4 em 4 anos é ano bissexto; De 100 em 100 anos não é ano bissexto; De 400 em 400 anos é ano bissexto; Prevalecem as últimas regras sobre as primeiras. Partindo daí, elabore uma função que recebe um ano e calcula se ele é ano bissexto, imprimindo no console a mensagem e retornando true ou false

~~~~~javascript
function anoBissexto(ano){
    if (ano%4 == 0 && ano%100 != 0){
        return true
    }else if(ano%4 != 0 && ano%4 != 0) {
        return false
    }else if(ano%4 != 0 && ano%400 == 0){
        return true
    }
}

console.log(anoBissexto(2021))
console.log(anoBissexto(2016))
~~~~~



12) Faça um algoritmo que calcule o fatorial de um número.

~~~~~javascript
function fatorial (numero) {
    if(numero == 0){
        return 1
    } else {
        return numero * fatorial(numero - 1)
    }
}

console.log(fatorial(5))
~~~~~



13) Crie um programa que exibe se um dia é dia útil, fim de semana ou dia inválido dado o número referente ao dia. Considere que domingo é o dia 1 e sábado é o dia 7. Utilize a estrutura Switch.

~~~~~javascript
function verificarDia(dia){
    switch (dia){
        case 1:
            return "Domingo"
        break;
        case 2:
            return "Segunda"
        break;
        case 3:
            return "Terça"
        break;
        case 4:
            return "Quarta"
        break;
        case 5:
            return "Quinta"
        break;
        case 6:
            return "Sexta"
        break;
        case 7:
            return "Sábado"
        break;
        default:
            return "Dia inválido"
        
    }
}

console.log(verificarDia(1))
console.log(verificarDia(2))
console.log(verificarDia(3))
console.log(verificarDia(4))
console.log(verificarDia(5))
console.log(verificarDia(6))
~~~~~



14) Crie uma estrutura condicional switch que receba uma string com o nome de uma fruta e que possua três casos: Caso maçã, retorne no console: “Não vendemos esta fruta aqui”. Caso kiwi, retorne: “Estamos com escassez de kiwis”. Caso melancia, retorne: “Aqui está, são 3 reais o quilo”. Teste com estas três opções .Crie também um default, que retornará uma mensagem de erro no console

~~~~~javascript

~~~~~



15) Um homem decidiu ir à uma revenda comprar um carro. Ele deseja comprar um carro hatch, e a revenda possui, além de carros hatch, sedans, motocicletas e caminhonetes. Utilizando uma estrutura switch, caso o comprador queira o hatch, retorne: “Compra efetuada com sucesso”. Nas outras opções, retorne: “Tem certeza que não prefere este modelo?”. Caso seja especificado um modelo que não está disponível, retorne no console: “Não trabalhamos com este tipo de automóvel aqui”.

~~~~~javascript

~~~~~



16) Utilizando a estrutura do Switch faça um programa que simule uma calculadora básica. O programa recebe como parâmetros dois valores numéricos e uma string referente à operação e a realize com os valores numéricos na ordem que foram inseridos. Por exemplo: calculadora (2, ‘+’, 3). A função efetuará a soma de 2 e 3. Dica: Os sinais das operações são: ‘+’. ‘-’, ‘*’ e ‘/’. Crie um caso default para operações inválidas.

~~~~~javascript

~~~~~



17) Um funcionário irá receber um aumento de acordo com o seu plano de trabalho, de acordo com a tabela abaixo:

| Plano | Aumento |
| ----- | ------- |
| A     | 10%     |
| B     | 15%     |
| C     | 20%     |

Faça uma função que leia o plano de trabalho e o salário atual de um funcionário e calcula e imprime o seu novo salário. Use a estrutura switch e faça um caso default que indique que o plano é inválido

~~~~javascript

~~~~



18) Faça um programa que leia um número entre 0 e 10, e escreva este número por extenso. Use o comando switch. Crie um case default que escreva ‘Número fora do intervalo.’

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

