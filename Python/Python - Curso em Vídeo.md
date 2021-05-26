# Python - Curso em Vídeo 🐍

Criado por: Jailson Júnior

GitHub | Linkedin



Uma associação de todos os conhecimentos adquiridos na linguagem Python 3 através do curso em vídeo, produzido por Gustavo Guanabara, e demais fontes de referências.





## Módulo 1



### **Comandos Iniciais**

Escrever mensagem na tela 

~~~~python
print("A mensagem que deseja exibir")
~~~~

Toda mensagem deve estar entre aspas. As aspas podem ser simples ou duplas.



Formas de Print no Python

~~~~python
nome = "Júnior"
idade = 20
 
print('O %s tem %d anos.' %(nome,idade)) #python2
print('O {} tem {} anos.'.format(nome,idade)) #python3
print(f'O {nome} tem {idade} anos.')#python 3.6+
~~~~



### **Variáveis**

Toda variável é um objeto no python.

~~~~python
nome="júnior"
idade=20
peso=83
print (nome, idade, peso)
~~~~

Inserindo dados nas variáveis com o input:

~~~~python
nome=input("Qual é o seu nome?")
idade=input("Qual é a sua idade?")
peso=input("Qual é o seu peso?")
~~~~



### **Tipos Primitivos**

~~~~python
Int: 7 ; -4 ; 0  ; 9875
Float: 4.5 ; 0.076 ; -15.223 ; 7.0
Bool: True ; False
Str: "Olá, mundo” ; "7.5”

Print("A soma vale”, s)
Print("A soma vale {}”, .format(s))
~~~~



### **A função IS**

A função .isnumeric pergunta à variável se o valor da variável é numérico. As respostas serão 'true' e 'false'

~~~~python
n = float(input("Digite um valor: "))
print(n)

n1 = bool(input("Digite um valor: "))
print(n1)

n2 = input("Digite algo: ")
print(n2.isnumeric())

n3 = input("Digite algo: ")
print(n3.isalnum())
~~~~



### **Operadores Aritméticos**

| Operação         | Operador |
| ---------------- | -------- |
| Soma             | +        |
| Subtração        | -        |
| Multiplicação    | *        |
| Divisão          | /        |
| Divisão inteira  | //       |
| Resto da divisão | %        |
| Igual            | ==       |
| Potência         | **/pow   |



Ordem de Precedência

1. ()
2. **
3. *;/;//;%
4. +;-



**Exemplo**

~~~~python
nome=input('Qual é o seu nome?')
print("Prazer, em te conhecer {:=^20}!".format(nome))

n1 = int(input("Um valor: "))
n2 = int(input("Outro valor: "))
s =  n1 + n2
m =  n1 * n2
ss =  n1 - n2
d = n1 // n2
di =  n1 / n2
p = n1 ** n2
print("A soma é {}, \n o produto é {}, \n e a divisão é {:.3f}").format(s, m, d), end=' ') 
#o end não quebra a linha entre o print e outro
#já o \n quebra a linha
print("Divisão inteira {} e pontência {}".format(di.p))
~~~~



### **Quebra de linhas**

\n quebra a linha

End="" não quebra a linha entre um print e outro



### **Módulos**

Os módulos são bibliotecas, com funções pré-definidas, que podem ser exportadas da comunidade para o seu algoritmo.

A sintaxe para a importação dessas bibliotecas está no algoritmo abaixo:

~~~~python
import math #importação de toda a biblioteca de números

num = int(input("Digite um número: "))
raiz = math.sqrt(num) #math.srqt é a função de raiz quadrada da biblioteca de números

print("A raiz de {} é igual a {}".format(num,math.ceil(raiz))) 

#ceil é uma função que arredonda o número para o sucessor mais próximo
~~~~

~~~~python
from math import sqrt,floor  #importação apenas da função de raiz quadrada da biblioteca de números

num = int(input("Digite um número: "))
raiz = sqrt(num) #math.srqt é a função de raiz quadrada da biblioteca de números

print("A raiz de {} é igual a {}".format(num,floor(raiz))) #floor é uma função que arredonda o número para seu antecessor mais próximo (no caso, 2)

~~~~

~~~~python
import random
num = random.randint(1, 10) #essa função permite digitar, automaticamente, um número aleatório entre 1 e 10
print(num)
~~~~

É possível importar bibliotecas da comunidade através deste link: https://docs.python.org/3.7/



### **Para ver a quantidade de módulos instalado no Pycharm:**

File> settings > Project:seu_projeto> project interpreter

<a href="https://imgur.com/HNBIzT3"><img src="https://i.imgur.com/HNBIzT3.png" title="source: imgur.com" /></a>



### **Manipulando Texto**

~~~~python
frase="CURSO EM VÍDEO PYTHON"
print(frase[9]) #Vai exibir o caractere 9
print(frase[9:12]) #vai exibir os caracteres entre 9 e 12
print(frase[9:21]) #vai exibir os caracteres entre 9 e 20, pois 20 é o último caractere da string
print(frase[9:21:2]) #vai exibir os caracteres de 9 a 21, saltando de dois em dois

(frase[:5]) #Vai do início, até o caractere 5
(frase [15:]) #Exibe os caracteres do 15 até o final
(frase[9::3]) #Começa do 9, vai até o final, pulando de 3 em 3

#ANÁLISE DE STRING

len(frase) #Conta a quantidade de caracteres dentro da variável
(frase.count('O')) #Conta quantas vezes o caractere 'O' se repete
frase.count('O,0,13') #Conta quantas vezes o caractere 'O' se repete entre a posição 0 e 13
frase.find('deo')#Exibe e aposição em que o 'deo' está localizada
frase.find('Android') #Quando o caractere inserido não existe na variável, ele exibe o resultado -1
'curso' in frase #Existe ‘curso’ em frase? A resposta é sim!

#TRANSFORMAÇÃO

frase.replace('PYTHON','ANDOID') #A palavra python será substituída por andoid
frase.upper() #Deixa todos os caracteres em CAIXA ALTA
frase.lower() #Deixa todos os caracteres em caixa baixa
frase.capitalize() #Deixa a primeira letra em maiúscula e o restante em minúscula
frase.title() #Deixa a primeira letra de cada palavra em maiúscula

frase="   Aprenda Python  "

frase.strip() #Remove os espaços da variável
frase.rstrip() #O ‘R’ remove apenas os espaços da direita (Right)
frase.lstrip() #O ‘L’ remove apenas os espaços da esquerda (Left)

#DIVISÃO
frase="Curso em Vídeo"
frase.split() #Cria uma divisão entre os espaços, ou seja, a frase é transformada em várias palavras

#JUNÇÃO
frase="Curso em Vídeo"
'-'.join(frase) #Junta a string através de -
' '.join(frase) #Junta a string através de espaços em branco

#EXIBINDO TEXTOS
print(""" TEXTO """) #Basta inserir três aspas e o texto será exibido

#COMBINANDO AS COISAS
frase="Curso em Vídeo"
print(frase.upper().count('o')) #Conta a quantidade de 'o' apenas nos caracteres jogados para o upper

#Uma string é imutável, ou seja, uma vez que ela é inserida na variável, não é possível alterá la sem ser inserida novamente na mesma variável ou em outra.
~~~~



### **Funções Condicionais**

~~~~python
tempo=int(input("Quantos anos tem o seu carro?"))
if tempo <=3:
	print("O seu carro é novo")
else:
	print("O seu carro é velho")
~~~~



### **Forma Reduzida do If Else**

~~~~python
tempo=int(input("Quantos anos tem o seu carro?"))
print("Carro novo" if tempo <=3 else "Carro velho")

~~~~



**Exemplos:**

~~~~python
nome=str(input('Qual é o seu nome?'))
if nome == 'Júnior':
	print('Que nome lindo você tem!')
print('Bom dia, {}!'.format(nome))
~~~~

~~~~python
n1=float(input('Digite a primeira nota: '))
n2=float(input('Digite a segunda nota: '))
m=(n1+n2)/2
if m>=6:
  print('Sua média foi boa! PARABÉNS!')
else:
  print('Se eu pudesse dar outra nota seria dó, mas na verdade a nota é: ',m)
~~~~



## **MÓDULO 2**



### **Estruturas de repetição For**

Sintaxes:

Repetindo o mesmo nome 5 vezes

~~~~python
for n in range(0,5):
   print("Meu nome é Júlia")
~~~~

Exibindo o índice:

~~~~python
for n in range(0,5):
   print(n)
~~~~

Exibindo listas:

~~~~python
nomes = ['Pedro', 'João', ‘Ana’]
for n in nomes:
   print(n)
~~~~



Definindo o limite do for através de um input:

~~~~python
n = int(input("Informe um número: "))
for c in range(0,n): #vai executar o contador até o comando digitado pelo usuário
   print(c)
print("Fim")
~~~~



Definindo o início, o fim e o passo através do input

~~~~python
i=int(input("Início: "))
f=int(input("Fim: "))
p=int(input("Passo: "))
for c in range(i, f+1, p):
   print(c)
print("Fim")
~~~~



A última repetição da estrutura FOR não conta. A estrutura abaixo, por exemplo, irá se repetir de 1 até 4. Para que ela faça a repetição de número 5, foi necessário adicionar um +1. Outro método seria substituir o 5+1 por 6.

~~~~python
for i in range(1,5+1):
   n=int(input("Informe o {} valor: ".format(i)))
~~~~

Para mais informações: https://curso-intro-python.readthedocs.io/repeticao.html



### **Estruturas de repetição While**



O comando while faz com que um conjunto de instruções seja executado enquanto uma condição é atendida. 

Quando o resultado dessa condição passa a ser falso, a execução do loop é interrompida, como mostra o exemplo a seguir:

~~~~python
contador = 0
while (contador <= 5):
      print(contador)
      contador   = contador + 1
~~~~



### **While-Else**

Ao final do while podemos utilizar a instrução else. O propósito disso é executar alguma instrução ou bloco de código ao final do loop, como podemos ver no exemplo a seguir:

~~~~python
contador = 0
while (contador < 5):
     print(contador)
     contador = contador + 1
else:
     print("O loop while foi encerrado com sucesso!")
~~~~

~~~~python
x = 0
while x < 10:
   print(x)
   x += 1
else:
   print("fim while")
~~~~

Se dentro da repetição for executado um break, o loop será encerrado sem executar o conjunto da cláusula else.

~~~~python
x = 0
while x < 10:
   print(x)
   x += 1
   if x == 6:
       print("x é igual a 6")
       break
else:
   print("fim while")
~~~~



### **Comando break**

~~~~python
print('TABUADA')
while True:
   n = int(input('digite um número: '))
   if n < 0:
       break
   d = 1
   while d <= 10:
       print(f'{n} x {d} = {n*d}')
       d += 1
print('FIM')
~~~~

Fonte: https://www.devmedia.com.br/python-estrutura-de-repeticao-while/38546



## **MÓDULO 3**



### **Variáveis compostas: Tuplas**

Tupla é uma Lista imutável. O que diferencia a Estrutura de Dados Lista da Estrutura de Dados Tupla é que a primeira pode ter elementos adicionados a qualquer momento, enquanto que a segunda estrutura, após definida, não permite a adição ou remoção de elementos.

[...] em uma lista, as informações, geralmente são de um mesmo tipo, por exemplo, uma lista de e-mails. Enquanto que numa tupla, os elementos são de tipos distintos, por exemplo, uma Tupla que contém dia da semana, mês e ano.

~~~~python
t = ["10", "segunda-feita", "Fevereiro", 2022]
---
>>> t
("x", "y", 10, 20, "c")
>>> t[0]
"x"
>>> t[-1]
"c"
>>> t[1:3]
('y', 10, 20)
~~~~



1. Uma Tupla é definida da mesma forma que uma lista, o que as diferenciam são os caracteres que as delimitam. Uma Lista, tem seus elementos delimitados por colchetes, enquanto que a Tupla, tem seus elementos delimitados por parênteses.
2. A ordem dos elementos numa Tupla será a ordem na qual estes foram definidos, ou seja, não é possível ordenar em tempo de execução os elementos.
3. O primeiro elemento de uma Tupla também possui índice igual a 0 e o último índice igual a -1. Assim o acesso a elementos, bem como o fatiamentos funciona da mesma forma como já estudado no fatiamento de Listas.



~~~~python
#tupla declarada sem o uso de parêntesis
t1 = 1, 2, 3
#tupla declarada com o uso de parêntesis
t2 = (1, 2, 3)
 
#tupla com um único elemento
t3 = 1,
 
#tupla vazia
t4 = ()
~~~~



Observe que é a vírgula que é realmente define uma tupla, não os parênteses. Os parênteses são opcionais, exceto no caso da tupla vazia, ou quando são necessários para evitar a ambigüidade sintática. Por exemplo, :code:`f(a, b, c)` é uma chamada de função com três argumentos, enquanto :code:`f((a, b, c))` é uma chamada de função com uma tupla-3 como único argumento.



### **Declaração de Tuplas**

~~~~python
>>> dias_da_semana = ("domingo", "segunda", "terça", "quarta", )
>>> dias_da_semana
("domingo", "segunda", "terça", "quarta")
~~~~



Declaração Explícita

~~~~python
>>> t1 = tuple("abc")
>>> t1
('a', 'b', 'c')
 
#declaração implícita
>>> t2 = ("a", "b", "c")
>>> t2
('a', 'b', 'c')
~~~~



Declaração implícita igual a declaração anterior

~~~~python
>>> t3
('a', 'b', 'c')
~~~~



### **Formas de exibir as tuplas**

~~~~python
lanche=("Pizza","Coxinha","Guaraná","Bolo")
print(lanche[0])
print(lanche[0:2])
print(lanche[-1])
print(lanche[-4])
print(lanche[-3:])
~~~~



~~~~python
for i in lanche:
   print(i)
~~~~

~~~~python
for comida in lanche:
   print(f'Vou comer {comida}')
~~~~

~~~~python
for count in range(0, len(lanche)): #conta de 0 até a quantidade (len) de itens na tupla
   print(count)
~~~~



### **Estrutura de repetição com tuplas**

~~~~python
lanche=("Pizza","Coxinha","Guaraná","Bolo")
for i in lanche:
   print(i)#a variável i armazena uma comida e exibe na tela
 
 
for i in lanche:
   print(i)
 
for comida in lanche:
   print(f'Vou comer {comida}')
 
for count in range(0, len(lanche)): #conta de 0 até a quantidade (len) de itens na tupla
   print(count)
~~~~



### **Exibindo o dado e a posição da tupla**

Método 1

~~~~python
for count in range(0, len(lanche)):
   print(f'Eu vou comer {lanche[count]} na posição {count}')
~~~~



Método 2

~~~~python
for pos, comida in enumerate(lanche):
   print(f'Eu vou comer {comida} na posição {pos}')
~~~~



### **Exibindo a tupla em ordem**

Exibindo a tupla em ordem

~~~~python
print(sorted(lanche))
~~~~



### **Juntando tuplas**

~~~~python
a = (1,2,3)
b = (4,5,6,7)
c = a + b
d = b + a
print(a)
print(b)
print(c)
print(d)
print(c.count(5)) #quandas vezes o 5 se repete na tupla c
print(c.index(4)) #posição do elemento 4 na tupla c
~~~~



### **Deletando tupla**

~~~~python
b = (4,5,6,7)
del(b)
~~~~

Para mais informações, acesse: http://excript.com/python/tuplas-python.html





### **Variáveis compostas: Listas**

~~~~python
num = [3,5,4,2,1] #declarando uma lista
print(num)
 
num[2]=0 #substituíndo valores
print(num)
 
num.append(6) #adicionando valor
print(num)
 
num.sort() #ordenando a lista
print(num)
 
num.sort(reverse=True) #ordenando ao contrário
print(num)
 
print(len(num)) #contando os elementos
print(num)
 
num.pop(0) #removendo elementos
print(num)
 
num.insert(2, 10) #adicionando o valor 10 no índice 2
print(num)
 
num.remove(2) #removendo o valor 2
print(num)
 
if 4 in num:
   num.remove(4) #removendo um elemento específico
else:
   print("Essa lista não contém o número 4")
 
print(num)
print(f'Essa lista tem {len(num)} elementos') #contanto os lementos de uma lista

~~~~



### **Formatando a exibição da lista**

~~~~python
valores = [1]
valores.append(5)
valores.append(9)
valores.append(4)
valores.append(3)
 
for i in valores:
   print(f' {i}|', end='')
print("")
for i in valores:
   print(f' {i} -', end='')
print("")
for i in valores:
   print(f'({i})', end='')
print("")
~~~~



### **Inserindo e exibindo valores na lista através do input**

~~~~python
for i in range (1,5+1):
   valores.append(int(input(f'Digite o {i}º valor:')))
 
for c, v in enumerate(valores):
   print(f'Na posição {c} encontrei o valor {v}!')
 
print("Fim da lista")
~~~~



### **Ligações entre listas**

~~~~python
a = [4,5,6,8,2,10]
b = a #nesse momento é criado uma ligação entre as listas A e B
b[2]=8 #Ao realizar a alteração na lista B, automaticamente a lista A também será alterada
print(f'Lista A: {a}')
print(f'Lista B: {b}')
~~~~



### **Cópia entre listas**

~~~~python
a = [4,5,6,8,2,10]
b = a[:] #neste momento há uma cópia de A para B, devido ao fatiamento da lista :
b[2]=3
print(f'Lista A: {a}')
print(f'Lista B: {b}')
~~~~



### **Invertendo os valores de uma lista**

~~~~python
>>> L = [0,10,20,40]
>>> L[::-1]
[40, 20, 10, 0]
~~~~



### **Listas compostas ou SubListas**

<a href="https://imgur.com/Jnjtk2U"><img src="https://i.imgur.com/Jnjtk2U.png" title="source: imgur.com" /></a>



Declarando uma lista composta - Método 1

~~~~python
teste = list()
teste.append('Júnior')
teste.append('20')
galera = list()
galera.append(teste[:])
teste[0] = 'Maria'
teste[1] = 22
galera.append(teste[:])
print(galera)
 

~~~~



Declarando uma lista composta - Método 2

~~~~python
galera = [['Alberto',19],['Gabriel',23],['Anderson',23],['Aline',23]]
print(galera[0]) #exibindo o primeiro item
print(galera[0][0]) #exibindo o primeiro sub item do primeiro item
 


~~~~



Utilizando o for com lista composta

~~~~python
for i in galera:
   print(f'{i[0]} tem {i[1]} anos de idade')
~~~~



Exemplo de algoritmo

~~~~python
galera = list() #declarando a primeira lista
dado = list() #declarando a segunda lista
for i in range(0,5+1): #lendo cinco nomes e cinco idades
   dado.append(str(input('Nome: ')))
   dado.append(str(input('Idade: ')))
   galera.append(dado[:]) #jogando todos os dados a lista dado na lista galera. Após isso, o índice desses elementos da lista dado, na lista galera, será [0]
   dado.clear() #limpando a lista dado, já que os elementos foram copiados para a lista galera (índice 0)
    #no restante, o algorítmo irá contar quantos maiores e quantos menores no índice 0 da lista galera
for i in galera:
   if p[1] >= 21:
       print(f'{p[0]} é maior de idade')
       totalmaior +=1
   else:
       print(f'{p[0]} é maior de idade')
       totalmenor +=1
  
print(f'Temos {totalmaior} maiores e {totalmenor} menores de idade')
~~~~



### **Variáveis compostas: Dicionários**



### **Declarando dicionários**

~~~~python
#Declaração padrão
pessoas = {}
 
#Declaração com incremento
pessoas = {'nome':'Caxibleuris', 'sexo':'Masculynoh','idade':22}

~~~~



### **Inserindo dados nos dicionários através do input**

~~~~python
cadastro={}
dados={}
for i in range(0,3):
   cadastro['Nome:'] = str(input("Informe seu nome: "))
   cadastro['Idade: '] = str(input("Infomre a sua idade: "))
~~~~



### **Modificando dicionários**

~~~~python
pessoas = {'nome':'Caxibleuris', 'sexo':'Masculynoh','idade':22}
 
#Substituíndo
pessoas['nome'] = 'Júnior'
 
#Adicionando elemento
pessoas['cpf'] = '846511515'
 
 
#Removendo chaves
pessoas.pop('nome')
 
#removendo itens
pessoas.popitem() #remove o último item
 
 
#Limpando o dicionário
pessoas.clear()

~~~~

**Importante**: Ao remover uma chave, o valor também será removido.



### **Exibindo dicionários**

~~~~python
pessoas = {'nome':'Caxibleuris', 'sexo':'Masculynoh','idade':22}
 
print(f"O {pessoas['nome']} tem {pessoas['idade']} anos e é do sexo {pessoas['sexo']}")
 
#Exibindo as chaves
print(pessoas.keys())
 
#Exibindo os valores
print(pessoas.values())
 
#Exibindo itens
print(pessoas.items())
 
#Utilizando o for com dicionário
 
for k in pessoas.keys(): #para cada chave em pessoas.keys()
   print(k)
 
for v in pessoas.values(): #para cada valor em pessoas.keys()
   print(v)
 
for i in pessoas.items(): #para cada item em pessoas.keys()
   print(i)
 
#Juntando tudo
for k, v in pessoas.items():
   print(f'{k} = {v}')#Exibindo o nome (chave) e o dado (valor)
~~~~



### **Criando um dicionário dentro de uma lista**

~~~~python
brasil = []
estado1 = {'uf':'Rio de Janeiro', 'sigla':'RJ'}
estado2 = {'uf':'Pernambuco', 'sigla':'PE'}
brasil.append(estado1)
brasil.append(estado2)
 
print(estado1)
print(estado2)
 
print(brasil)#uma lista com os dicionários
print(brasil[0]['uf'])
print(brasil[1]['sigla'])

~~~~



### **Inserindo dados e fazendo o fatiamento da forma errada**

~~~~python
estado = dict()
brasil = list()
for c in range(0,3):
   estado['uf'] = str(input("Unidade Federativa: "))
   estado['sigla'] = str(input("Sigla do Estado: "))
   brasil.append(estado[:]) #NÃO É POSSÍVEL FAZER FATIAMENTO COM DICIONÁRIOS
print(brasil)
~~~~



### **Inserindo dados e fazendo o fatiamento da forma correta**

~~~~python
estado = dict()
brasil = list()
for c in range(0,3):
   estado['uf'] = str(input("Unidade Federativa: "))
   estado['sigla'] = str(input("Sigla do Estado: "))
       brasil.append(estado.copy()) #COPY É UMA FUNÇÃO EXCLUSIVA DO PYTHON QUE SUBSTITUI O [:] DAS LISTAS
print(brasil)
~~~~

**Importante:** O método copy não realizada cópias, mas apenas referências para os mesmos valores. Dessa forma, ao fazer alterações em um dicionário Y cujos dados vieram do dicionário X, ambos os dicionários serão alterados.





### **Exemplo de algoritmo com dicionário**

~~~~python
estado = dict()
brasil = list()
for c in range(0,3):
   estado['uf'] = str(input("Unidade Federativa: "))
   estado['sigla'] = str(input("Sigla do Estado: "))
   brasil.append(estado.copy()) #COPY É UMA FUNÇÃO EXCLUSIVA DO PYTHON
print(brasil)
 
#Exibindo de forma organizada
for e in brasil:
   print(e)
 
#Exibindo apenas os valores
for e in brasil:
   print("-" * 15)
   for v in e.values():
       print(f'{v}')
 
#Exibindo as chaves e os valores
for e in brasil:
   print("-" * 15)
   for k, v in e.items():
       print(f'{k}:{v}')
~~~~



**Método get**



* Obtém o conteúdo de chave

* Não causa erro caso chave não exista: retorna valor

* Se valor não for especificado chaves inexistentes retornam None

  

~~~~python
dic = { "Joao":"a", "Maria":"b" }
 
resultado= dic.get("Pedro")
print(resultado) #falso
 
resultado= dic.get("Maria")
print(resultado) #b
~~~~



### **Método Update**



* Atualiza um dicionário com os elementos de outro
* Os itens em dic são adicionados um a um ao dicionário original

~~~~python
x = {"a": 1, "b": 2, "c": 3}
y = {"z": 9, "b": 7}
x.update(y)
print(x)
 
x.update(a=7,c="xxx")
print(x)
~~~~



### **Funções**

Sintaxe geral

~~~~python
def menu():
   print("Meu nome é Júlia")
 
menu()
~~~~



### **Função com passagem de parâmetro**

~~~~python
def mensagem(msg):#parâmetro
   print("--------------------------")
   print(msg)#variável de parâmetro na função
   print("--------------------------")
 
mensagem('SISTEMA DE ALUNOS')#Texto que será enviado ao parâmetro
~~~~



Exemplo 1:

~~~~python
def title(txt):
 
   print('-' * len(txt))#deixa o tamanho da linha igual ao do nome
   print(txt)
   print('-' * len(txt))
   print("")
#Programa princial
 
title("Curso de Python")
title("Exemplo de função")
title("Meu nome é Júlia")
~~~~



Exemplo 2:

~~~~python
def soma(a,b):
   print(a+b)
 
 
#main
a=int(input("Digite o valor de A:"))
b=int(input("Digite o valor de B:"))
soma(a,b)
~~~~



Exemplo 3:

~~~~python
def soma(a,b):
   print(f'A soma entre {a} e {b} é: {a+b}')
 
 
#main
a=int(input("Digite o valor de A:"))
b=int(input("Digite o valor de B:"))
soma(a,b)
soma(2,4)
soma(a=10,b=30)
~~~~



### **Empacotando parâmetro**

~~~~python
def contador(*num): #*num significa que serão N parâmetros
   print(num) #será criado uma tupla
contador(2,1,7)
contador(8,0)
contador(5,5,8,2,0,1)
~~~~

~~~~python
def contador(*num): #*num significa que serão N parâmetros
   for valor in num:
       print(f'{valor} ', end='')#junta todos os valores
   print("\n")
 
contador(2,1,7)
contador(8,0)
contador(5,5,8,2,0,1)
~~~~



Criando uma função para dobrar os valores de uma lista:

~~~~python
def dobra(lista):
   i = 0
   while i <len(lista):
       lista[i] *= 2
       i +=1
 
 
valores = [6,3,8,0,9,2]
dobra(valores)
print(valores)

~~~~



### **Docstrings - String de documentação**

~~~~python
from time import sleep
 
def contador(i,f,p):
   for c in range(i,f+1,p):
       print(c)
       sleep(1)
   print("END")
 
#verificando o manual da função criada acima
help(contador)
~~~~



Com a documentação definida

~~~~python
from time import sleep

def contador(i,f,p):
   # aspas duplas para criar a documentação da função
   """
   -> Contagem regressiva definida por um início, fim e o passo
   i: início
   f: fim
   p: passo
   - Created by: Júnior Mello
   """
   for c in range(i,f+1,p):
       print(c)
       sleep(1)
   print("END")
 
#verificando o manual da função criada acima
help(contador)

~~~~

<a href="https://imgur.com/CZ5M3rx"><img src="https://i.imgur.com/CZ5M3rx.png" title="source: imgur.com" /></a>



### **Argumentos ou parâmetros opcionais**

Observe a função abaixo:

~~~~python
def somar (a,b,c):
   s=a+b+c
   print(f'A soma vale {s}')
 
somar(3,2,5)#Repare que a quantidade de parâmetro passado condiz com a função.
 
#Mas o que aconteceria se passássemos apenas dois parâmetros?
 
somar(8,4)
~~~~

<a href="https://imgur.com/aCkjX5s"><img src="https://i.imgur.com/aCkjX5s.png" title="source: imgur.com" /></a>



Adicionando os parâmetros opcionais:

~~~~python
ef somar (a,b,c=0): #caso o argumento de c não seja passado, automaticamente ele terá valor 0
   s=a+b+c
   print(f'A soma vale {s}')
 
somar(3,2,5)
 
somar(8,4)

 
def somar (a=0,b=0,c=0): #Agora todos são parâmetros opcionais
   s=a+b+c
   print(f'A soma vale {s}')
 
a,b,c=map(int, input("Digite o valor de A, B e C, respectivamente, separado por espaço: ").split())
somar(a,b,c)
 
#para argumentos maiores que os declarados na função, é necessário usar o *<variável>

~~~~



### **Escopo de variáveis**

Escopo é o local onde determinada variável vai exibir. A variável n funcionará em qualquer parte do código. Isso porque ela foi declarada no escopo Global

~~~~python
def teste():
   print(f' Na função teste, n vale {n}')
  
#Programa principal
 
n = 2
print(f'No programa principal, a varíavel n vale {n}')
~~~~

Já a variável C só irá funcionar dentro da função, pois foi declarada no escopo Local.

~~~~python
def teste():
   j=5
   print(f'Na funação teste, j vale {j}')
   print(f' Na função teste, n vale {n}')
 
 
#Programa principal
 
n = 2
print(f'No programa principal, a varíavel n vale {n}')

~~~~



Ao declarar "Global a" no algoritmo abaixo, a variável local deixará de ser usada e o algoritmo irá considerar a variável Global

<a href="https://imgur.com/237jDes"><img src="https://i.imgur.com/237jDes.png" title="source: imgur.com" /></a>



### Retorno de resultados

Exemplo de função sem retorno

~~~~python
def somar(a=0, b=0, c=0):
   s = a + b + c
   print(f'A soma vale {s}')
 
somar(7, 4, 3)
somar(2, 4,)
somar(5)
~~~~

Utilizando o retorno

~~~~python
def somar(a=0, b=0, c=0):
   s = a + b + c
   return s #retornará o valor de s
 
r1=somar(7, 4, 3) #o valor de retorno (s) será armazenado na variável r1,r2 e r3
r2=somar(2, 4)
r3=somar(5)
print(f'Os valorres de R1, R2 e R3 são, respectivamente, {r1}, {r2}, {r3}')
~~~~



**Exemplos práticos**:



Calculando o fatorial de um número e retornando para o programa principal

~~~~python
def fatorial(num = 1):
   f = 1
   for c in range(num, 0, -1):#O laço começa por um número digitado pelo usuário, termina em zero com passo -1
       f *= c
   return f
 
 
n = int(input("Digite um número: "))
print(f'O fatorial de {n} é igual a {fatorial(n)}')
~~~~

Another way

~~~~python
def fatorial(num = 1):
   f = 1
   for c in range(num, 0, -1):#O laço começa por um número digitado pelo usuário, termina em zero com passo -1
       f *= c
   return f
 
 
f1 = fatorial(5)
f2 = fatorial(4)
f3 = fatorial(3)
print(f"Os resultados são {f1}, {f2}, {f3}")
~~~~



Utilizando os tipos lógicos nas funções

~~~~python
def par(n=0):
   if n%2 == 0:
       return True
   else:
       return False
 
num = int(input("Digite um número: "))
if par(num): #Se o número digitado retornar o valor True
   print("É par!")
else:# se o número digitado retornar o valor False
   print("É ímpar!")
~~~~





### **Modularização**



Vantagens:

* Organização do código
* Dividir um programa grande
* Aumentar a legibilidade
* Facilita a manutenção do programa



Importando o código de outro arquivo .py

~~~~python
import uteis
 
num = int(input("Digite um valor: "))
fat = uteis.fatorial(num) #chamando a função de outro arquivo
print(f'O fatorial de {num} é {fat}.')

def fatorial(n):
   f = 1
   for c in range(1, n+1):
       f*=c
   return f
 
def dobro(n):
   return n*2
 
 
def triplo(n):
   return n*3
~~~~

Another way...

~~~~python
from uteis import fatorial
 
num = int(input("Digite um valor: "))
fat = fatorial(num) #chamando a função de outro arquivo
print(f'O fatorial de {num} é {fat}.')
 

~~~~



### **Pacotes**



<a href="https://imgur.com/AeJ3ma1"><img src="https://i.imgur.com/AeJ3ma1.png" title="source: imgur.com" /></a>

<a href="https://imgur.com/Q6ybvL5"><img src="https://i.imgur.com/Q6ybvL5.png" title="source: imgur.com" /></a>

<a href="https://imgur.com/dE3BCrN"><img src="https://i.imgur.com/dE3BCrN.png" title="source: imgur.com" />

</a>



### Importando o código de um pacote

~~~~python
from uteis import numeros
 
num = int(input("Digite um valor: "))
fat = numeros.fatorial(num) #chamando a função de outro pacote
print(f'O fatorial de {num} é {fat}.')
~~~~



## **MÓDULO EXTRA**



### **Inserindo valores em várias variáveis com um único input**

~~~~python
n,m = map(int, input().split()) #lê dois números sem precisar de duas entradas (separados por espaço)
~~~~



### **Gerando o EOF em python**

~~~~python
while True:
   try:
      <seu código>
   except EOFError:
       break
~~~~

