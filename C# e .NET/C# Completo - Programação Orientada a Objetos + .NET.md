# 📌 C# Programação Orientada a Objetos .NET 

🔗 Disponível em: [Udemy](https://www.udemy.com/course/programacao-orientada-a-objetos-csharp/)





## Introdução ao C# .NET



C# : uma linguagem de programação (regras sintáticas)

.NET (2002): uma plataforma de desenvolvimento para se criar diversos tipos de aplicações, podendo usar várias linguagens de programação

<a href="https://imgur.com/VuEUhD2"><img src="https://i.imgur.com/VuEUhD2.png" title="source: imgur.com" /></a>







<a href="https://imgur.com/UdgNlTH"><img src="https://i.imgur.com/UdgNlTH.png" title="source: imgur.com" /></a>



### Compilação e interpretação

- Linguagens compiladas: C, C++ 

- Linguagens interpretadas: PHP, JavaScript 

- Linguagens pré-compiladas + máquina virtual: Java, C#



<a href="https://imgur.com/Tye0bN5"><img src="https://i.imgur.com/Tye0bN5.png" title="source: imgur.com" /></a>

<a href="https://imgur.com/edpbOQR"><img src="https://i.imgur.com/edpbOQR.png" title="source: imgur.com" /></a>

<a href="https://imgur.com/rjw3Hbg"><img src="https://i.imgur.com/rjw3Hbg.png" title="source: imgur.com" /></a>

<a href="https://imgur.com/9v5VxMN"><img src="https://i.imgur.com/9v5VxMN.png" title="source: imgur.com" /></a>





### Estrutura padrão de um código c#

~~~~~c#
using System; //namespace padrão do .NET que importa funções básicas

namespace ConsoleApp1 //nome do projeto. Não é obrigatório, mas por questão de boa prática, é essencial por um nome à classe.
{
    class Program //Todo código fonte deve ser atribuído a uma classe e escrito dentro do bloco
    {
        static void Main(string[] args) //Ponto de entrada da execução do código. Tudo que estiver dentro desta chave será executado inicialmente no programa.
        {
            Console.WriteLine("Hello World!");//Forma de saída de mensagens
        }
    }
}

~~~~~





## Lógica de Programação com C#



### Tipos de dados

~~~~c#
bool completo = false;
char genero = 'F';
char letra = '\u0041';
byte n1 = 126;
int n2 = 1000;
int n3 = 2147483647;
long n4 = 2147483648L;
float n5 = 4.5f;
double n6 = 4.5;
String nome = "Maria Green"; //Uma cadeia de caracteres Unicode IMUTÁVEL (segurança, simplicidade, thread safe)
Object obj1 = "Alex Brown"; //Um objeto genérico (toda classe em C# é subclasse de object)
Object obj2 = 4.5f;

~~~~



### Convenções

- Camel Case: lastName (parâmetros de métodos, variáveis dentro de métodos)

- Pascal Case: LastName (namespaces, classe, properties e métodos)

- Padrão _lastName (atributos "internos" da classe)



### Saída de Dados



~~~~c#
Console.Write("Hello World"); //Imprime em uma única linha
Console.WriteLine("Boa tarde!");//Imprime pulando uma linha
~~~~

Imprimindo variáveis

~~~~c#
using System;
using System.Globalization; //Importação da formação de caracteres globais
namespace ConsoleApp1{
    class Program{
        static void Main(string[] args){
            char genero = 'F';
            int idade = 32;
            double saldo = 10.35784;
            string nome = "Maria";

            Console.WriteLine(genero);
            Console.WriteLine(idade);
            Console.WriteLine(nome);
            Console.WriteLine(genero);
            Console.WriteLine(saldo);
            Console.WriteLine(saldo.ToString("F2")); //Delimitando o número após a vírgula
            Console.WriteLine(saldo.ToString("F4"));
            Console.WriteLine(saldo.ToString("F1", CultureInfo.InvariantCulture));//Transformando a vírgula do decimal em ponto


        }
    }
}

~~~~



#### Placeholders, concatenação e interpolação

~~~~c#
int idade = 32;
double saldo = 10.35784;
String nome = "Maria";

Console.WriteLine("{0} tem {1} anos e tem saldo igual a {2:F2} reais", nome, idade, saldo); //Placeholdere diminindo casa decimal

Console.WriteLine($"{nome} tem {idade} anos e tem saldo igual a {saldo:F2} reais");//Interpolação 

Console.WriteLine(nome + " tem " + idade + " anos e tem saldo igual a "
+ saldo.ToString("F2", CultureInfo.InvariantCulture) + " reais");//Concatenação
~~~~



### Operadores de Atribuição



| Operador | Significado      |
| -------- | ---------------- |
| +        | Adição           |
| -        | Subtração        |
| *        | Multiplicação    |
| /        | Divisão          |
| %        | Resto da divisão |



~~~~c#
int n1 = 3 + 4 * 2;
int n2 = (3 + 4) * 2;
int n3 = 17 % 3;
double n4 = 10.0 / 8.0; //Atentar-se a sempre inserir as casas decimais em operaçoes com números reais

double a = 1.0, b = -3.0, c = -4.0;
double delta = Math.Pow(b, 2.0) - 4.0 * a * c;
double x1 = (-b + Math.Sqrt(delta)) / (2.0 * a);
double x2 = (-b - Math.Sqrt(delta)) / (2.0 * a);

Console.WriteLine(n1);
Console.WriteLine(n2);
Console.WriteLine(n3);
Console.WriteLine(n4);
Console.WriteLine(delta);
Console.WriteLine(x1);
Console.WriteLine(x2);
~~~~



~~~~c#
int a = 10;
Console.WriteLine(a);

a += 2;
Console.WriteLine(a);

a *= 3;
Console.WriteLine(a);

string s = "ABC";
Console.WriteLine(s);

s += "DEF"; //Concatenação comulativa de strings
Console.WriteLine(s);
~~~~



### Operador aritmético / atribuição

~~~~c#
int a = 10;
a++;
Console.WriteLine(a);
---
SAÍDA:
11
~~~~



~~~~c#
int a = 10;
int b = a++; //Neste caso, primeiro B será atribuído (10) e, sem seguida, o a será incrementado (+1)
Console.WriteLine(a);
Console.WriteLine(b);
---
SAÍDA:
11
10
~~~~



~~~~c#
int a = 10;
int b = ++a; //neste caso, a será incrementado antes de atribuir o valor a b
Console.WriteLine(a);
Console.WriteLine(b);
---
SAÍDA:
11
11
~~~~





### Conversão implícita e casting

Usado para passar o valor de uma variável de um tipo, para uma variável de outro tipo.

No exemplo a seguir, é possível transferir valores para as variáveis sem o uso do casting, já que double comporta mais bits que float.

~~~~c#
using System;
using System.Globalization; 
namespace ConsoleApp1{
    class Program{
        static void Main(string[] args){
            float x = 4.5f;
            double y = x;
            Console.WriteLine(y);
        }
    }
}

~~~~

Entretanto, para fazer a conversão ao contrário, é necessário utilizar o casting. **Porém, haverá perda de informação.**

~~~~c#
using System;
using System.Globalization; 
namespace ConsoleApp1{
    class Program{
        static void Main(string[] args){
            double a =5.1;
            float b = (float)a;
           
            Console.WriteLine(b);
        }
    }
}
~~~~

Fazendo a conversão de double para int

~~~~c#
double a = 5.1;
int b = (int)a;    
Console.WriteLine(b);
---
SAÍDA: 5
~~~~



Para divisões de números inteiros cujo resultado será real, as casas decimais serão descartadas a menos que seja utilizado o casting:

~~~~c#
int a = 5;
int b = 2;
double resultado = (double) a/b;
Console.WriteLine(resultado);
~~~~

É necessário ficar sempre atento ao resultado.



### Operadores Comparativos

| Operador | Significado    |
| -------- | -------------- |
| >        | Maior          |
| <        | Menor          |
| >=       | Maior ou igual |
| <=       | Menor ou igual |
| ==       | Igual          |
| !=       | Diferente      |



### Operadores Lógicos

| Operador | Significado |
| -------- | ----------- |
| &&       | E           |
| \|\|     | Ou          |
| !        | Não         |

Ordem de precedência: ! > && > ||

~~~~c#
2>3 || 4 != 5 -> True
!(2>3)&&4!=5 -> True
~~~~



~~~~c#
bool c1 = 2 > 3 || 4 != 5; // true
bool c2 = !(2 > 3) && 4 != 5; // true
Console.WriteLine(c1);
Console.WriteLine(c2);
Console.WriteLine("--------------");
bool c3 = 10 < 5; // false
bool c4 = c1 || c2 && c3; // true
Console.WriteLine(c3);
Console.WriteLine(c4);
~~~~





### Entrada de Dados em C#

~~~~c#
string <variavel> = Console.ReadLine();
~~~~

- Lê da entrada padrão **até a quebra de linha**.

- Retorna os dados lidos **na forma de String**.



**Utilizando o Split**

~~~~c#
string texto = Console.ReadLine();

string[] palavra = texto.Split(' '); //Separa o texto pelos espaços e joga em um array
string p1 = palavra[0];
string p2 = palavra[1];
string p3 = palavra[2];
~~~~



Para ler valores diferentes de strings, deve-se converter a string para o tipo desejado utilizando o Parse

~~~~c#
int n1 = int.Parse(Console.ReadLine()); 
char ch = char.Parse(Console.ReadLine());
double n2 = double.Parse(Console.ReadLine(), CultureInfo.InvariantCulture);

string[] vet = Console.ReadLine().Split(' ');
string nome = vet[0];
char sexo = char.Parse(vet[1]);
int idade = int.Parse(vet[2]);
double altura = double.Parse(vet[3], CultureInfo.InvariantCulture);
~~~~



### Estrutura condicional (if-else)



**Simples**

~~~~c#
if ( condição ) {
    comando 1
    comando 2
}
~~~~



**Composta**

~~~~c#
if ( condição ) {
    comando 1
    comando 2
}
else {
    comando 3
    comando 4
}
~~~~



**Encadeamentos**

~~~~c#
if ( condição 1 ) {
    comando 1
    comando 2
}
else if ( condição 2 ) {
    comando 3
    comando 4
}
else if ( condição 3 ) {
    comando 5
    comando 6
}
else {
    comando 7
    comando 8
}
~~~~

**Observação:** se o bloco de comandos possuir apenas um comando, as chaves são opcionais.



Exemplo:

~~~~c#
class Program {
        static void Main(string[] args) {
            Console.WriteLine("Qual a hora atual?");
            int hora = int.Parse(Console.ReadLine());
            if (hora < 12) {
                Console.WriteLine("Bom dia!");
            }
            else if (hora < 18) {
                Console.WriteLine("Boa tarde!");
            }
            else {
                Console.WriteLine("Boa noite!");
            }
        }
    }
~~~~



### Escopo e inicialização

- Escopo de uma variável: é a região do programa onde a variável é válida, ou seja, onde ela pode ser referenciada.
- Uma variável não pode ser usada se não for iniciada.

~~~~c#
double preco = double.Parse(Console.ReadLine());
if (preco > 100.0) {
double desconto = preco * 0.1;
}
Console.WriteLine(desconto);
~~~~



### Funções (sintaxe)

Representam um processamento que possui um significado

- Math.Sqrt(double)
- Console.WriteLine(string)



Principais vantagens

- Modularização

- Delegação

- Reaproveitamento

  

Dados de entrada e saída

- Funções podem receber dados de entrada (parâmetros ou argumentos)
- Funções podem ou não retornar uma saída



**Em orientação a objetos, funções em classes recebem o nome de "métodos**



Exemplo: Fazer um programa para ler três números inteiros e mostrar na tela o maior deles.

~~~~c#
using System;
using System.Globalization; 
namespace ConsoleApp1{
    class Program{
        static void Main(string[] args) {
            Console.WriteLine("Digite três números:");
            int n1 = int.Parse(Console.ReadLine());
            int n2 = int.Parse(Console.ReadLine());
            int n3 = int.Parse(Console.ReadLine());
            double resultado = Maior(n1, n2, n3);
            Console.WriteLine("Maior = " + resultado);
        }
        static int Maior(int a, int b, int c) {
            int m;
            if (a > b && a > c) {
                m = a;
            }
            else if (b > c) {
                m = b;
            }
            else {
                m = c;
            }
            return m;
        }
    }
}

~~~~



### Debugging com Visual Studio

Teclas

- F9 - marcar/desmarcar breakpoint
- F5 - iniciar/continuar o debug
- F10 - executar um passo (pula função)
- F11 - executar um passo (entra na função)
- SHIFT+F11 - sair do método em execução
- SHIFT+F5 - parar debug

Janelas

- Watch (expressões personalizadas)
- Autos (expressões "interessantes" detectadas pelo Visual Studio)
- Locals (variáveis locais)



### Estrutura de repetição while

~~~~c#
while ( condição ) {
    comando 1
    comando 2
}
~~~~

Regra: 

- V: executa e volta 
- F: pula fora



### Estrutura de repetição For

~~~~c#
for ( início ; condição ; incremento) {
    comando 1
    comando 2
}
~~~~

Exemplo:

~~~~c#
using System;
using System.Globalization; 
namespace ConsoleApp1{
    class Program{
        static void Main(string[] args) {
            Console.Write("Quantos números inteiros você vai digitar? ");
            int N = int.Parse(Console.ReadLine());
            int soma = 0;
            for (int i = 1; i <= N; i++) {
                Console.Write("Valor #{0}: ", i);
                int valor = int.Parse(Console.ReadLine());
                soma += valor;
            }
            Console.WriteLine("Soma = " + soma);
        }
    }
}

~~~~



## Classes, atributos, métodos, membros estáticos



### Construtor

É uma operação especial da classe, que executa no momento da instanciação do objeto

Usos comuns:

- Iniciar valores dos atributos
- Permitir ou obrigar que o objeto receba dados / dependências no momento de sua instanciação (injeção de dependência)

Se um construtor customizado não for especificado, a classe disponibiliza o construtor padrão:

- Produto p = new Produto();

A partir do momento em que um construtor é declarado, o padrão deixará de ser aceito.

É possível especificar mais de um construtor na mesma classe (sobrecarga)



**Na prática:**

A nomenclatura do construtor deve ser a mesma da classe

~~~~c#
//Classe produto

namespace Course {
    class Produto {
        public string Nome;
        public double Preco;
        public int Quantidade;
        
        
        public Produto(string nome, double preco, int quantidade) { //esses parâmetros obrigam a recepção dos dados
                //  variável do construtor / variável do parâmetro
                    Nome = nome;
                    Preco = preco;
                    Quantidade = quantidade;
            
            (...)
        }
    }
}

~~~~

Após a criação do construtor na classe produto, fica obrigatória a passagem de parâmetros.

Para isso, criaremos variáveis auxiliares nome, preco e quantidade para receberem os dados do usuário e servir de parâmetros.

~~~~c#
//Programa principal
class Program {
        static void Main(string[] args) {
            Console.WriteLine("Entre os dados do produto:");

            Console.Write("Nome: ");
            string nome = Console.ReadLine();

            Console.Write("Preço: ");
            double preco = double.Parse(Console.ReadLine(), CultureInfo.InvariantCulture);

            Console.Write("Quantidade no estoque: ");
            int quantidade = int.Parse(Console.ReadLine());

            Produto p = new Produto(nome, preco, quantidade);

            Console.WriteLine("---------------------------------------");
            Console.WriteLine("Dados do produto: " + p);
            Console.WriteLine();
            Console.Write("Digite o número de produtos a ser adicionado ao estoque: ");
            int qte = int.Parse(Console.ReadLine());
            p.AdicionarProdutos(qte);
            Console.WriteLine();
            Console.WriteLine("Dados atualizados: " + p);
            Console.WriteLine();
            Console.Write("Digite o número de produtos a ser removido do estoque: ");
            qte = int.Parse(Console.ReadLine());
            p.RemoverProdutos(qte);
            Console.WriteLine();
            Console.WriteLine("Dados atualizados: " + p);
        
        }
    }
~~~~



### Sobrecarga

É um recurso que uma classe possui de oferecer mais de uma operação com o mesmo nome, porém com diferentes listas de parâmetros. 

Por exemplo: uma vez adicionar nome e preço do produto e, na outra, adicionar nome, preço e data.

Vamos criar um construtor opcional, o qual recebe apenas nome e preço do produto. A quantidade em estoque deste novo produto, por padrão, deverá então ser iniciada com o valor zero.

Nota: é possível também incluir um construtor padrão (sem parâmetros).



Criando um segundo construtor

~~~~c#
//Classe Produto

public Produto(string nome, double preco) {
            Nome = nome;
            Preco = preco;
            Quantidade = 0; //valor padrão. Linha dispensável, pois o valor padrão automaticamente será 0.
        }
~~~~

Para utilizar o segundo construtor, basta utilizar o que tem dois argumentos

~~~~c#
Produto p = new Produto(nome, preco);
~~~~

Para utilizar um construtor "padrão", basta criar uma sobrecarga sem argumentos.

~~~~c#
public Produto(){
    
}
~~~~



### Sintaxe alternativa para inicializar valores (construtor)

Essa sintaxe funciona mesmo que a classe não tenha construtores.

~~~~c#
Produto p4 = new Produto {
                Nome = "TV",
                Preco = 500.00,
                Quantidade = 20
            };
~~~~

Caso a classe possua somente um construtor, com argumentos diferentes dos criados pela sintaxe alternativa, a instanciação não será aceita. Dessa forma, é obrigatório ter o construtor padrão ou sem argumentos.





~~~~c#

~~~~



~~~~c#

~~~~



~~~~c#

~~~~



~~~~c#

~~~~



~~~~c#

~~~~



~~~~c#

~~~~



~~~~c#

~~~~



~~~~c#

~~~~



~~~~c#

~~~~



~~~~c#

~~~~



~~~~c#

~~~~



~~~~c#

~~~~





