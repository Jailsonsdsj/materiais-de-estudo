# C# Programação Orientada a Objetos .NET 







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



### Operadores de atribuição

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



### Entrada de Dados em C#

~~~~c#
string <variavel> = Console.ReadLine();
~~~~

- Lê da entrada padrão **até a quebra de linha**.

- Retorna os dados lidos **na forma de String**.



Utilizando o Split

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



~~~~c#

~~~~



~~~~c#

~~~~



~~~~c#

~~~~



~~~~c#

~~~~





