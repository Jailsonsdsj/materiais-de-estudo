# Guia do CSS ✨



### Anatomia do CSS

#### ID's e Classes

Os ID's são representados, no css, por o sital de hashtag "#". Já as classes são representadas por um ponto "." antes da nomenclatura.

~~~~css
#caixa
.envelope
~~~~



#### Pseudoclasses

As pseudoclasses são classes pré-programadas no css. Elas podem ser indicadas através de dois pontos ":" após o elemento, id ou classe.

~~~~css
 .selector:hover{
             background-color:orangered;
         }
~~~~

A pseudoclasse hover faz com que o conteúdo desse atributo seja ativado ao passar o mouse por cima.



**[INSERIR AQUI AS DEMAIS PSEUDOCLASSES]**



#### Pseudo-elementos

é uma palavra-chave adicionada a um seletor que permite que você estilize uma parte específica do elemento selecionado. São representados por "::" após o elemento, id ou classe.

Por exemplo, o pseudo-elemento [`::first-line`](https://developer.mozilla.org/pt-BR/docs/Web/CSS/::first-line) aplica o estilo apenas na primeira linha de um parágrafo.

~~~~css
.selecto::first-letter{
            font-size: 60px;
            font-weight: bold;
         }
~~~~



### Padrões de Nomenclaturas

Existem dois tipos de nomenclaturas utilizado pela maioria dos desenvolvedores: o dash-case e o camelCase. 

Enquanto o dash-case utiliza um travessão para separar as palavras, o camelCase utiliza a segunda inicial da palavra maiúscula e sem espaço.





### Formas de Aplicação do CSS

#### CSS Interno

CSS interno é colocado na seção` <head> `de uma determinada página. As classes e IDs podem ser usados para se referir ao código CSS, mas eles só estão ativos nessa página específica. 



~~~~css
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Anatomia CSS</title>
    <style>
        .selector{
            color: #10a8ab;
            font-size:30px;
            text-align: center;
            border: solid 5px rgb(55, 55, 167);
            font-family: Arial, Helvetica, sans-serif;
        }
        
    </style>
</head>

<body>
    <div class="selector">Conteúdo</div>
</body>

</html>
~~~~



#### CSS Externo

É a maneira mais conveniente de adicionar CSS ao seu site é vincula-lo a um arquivo **.css** externo.

Dessa forma, quaisquer alterações feitas em um arquivo CSS externo serão refletidas em seu site globalmente. Uma referência a um arquivo CSS externo é colocada na seção <head> da página:

~~~~css
<head>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
~~~~

No css:

~~~css
head{
        color: #10a8ab;
        font-size:30px;
        text-align: center;
        border: solid 5px rgb(55, 55, 167);
        font-family: Arial, Helvetica, sans-serif;
     }
~~~



#### CSS In Line

O CSS inline é usado para uma tag HTML específica. O atributo <style> é usado para formatar uma tag HTML específica. Usar CSS desta forma não é recomendado, pois cada tag HTML precisa ser denominada individualmente.

~~~~css
<!DOCTYPE html>
<html>
<body style="background-color:black;">

<h1 style="color:white;padding:30px;">Hostinger Tutorials</h1>
<p style="color:white;">Something usefull here.</p>

</body>
</html>
~~~~



#### Ordem de priopridade

A ordem de prioridade das formas aplicadas dependem do processamento. Se o CSS interno estiver antes da chamada do CSS externo, obviamente o CSS interno será predominante na página.

Já o CSS In Line tem preferência sobre todas as outras formas de estilo, contudo não é uma boa prática.



Fonte: https://www.hostinger.com.br/tutoriais/diferenca-entre-estilos-css/



### Seletores

| Seletor          | Descrição                                                    |
| ---------------- | ------------------------------------------------------------ |
| *                | Seletor universal. Aplica em todos os elementos de uma página |
| elem             | Elemento do HTML                                             |
| .class           | Classes que geralmente são utilizadas em mais de um elemento do HTML |
| #id              | Id que geralmente são utilizados em apenas um elemento do HTML |
| [atrib]          | Todos os atributos                                           |
| :pseudo-class    | classes pré-programadas                                      |
| :pseudo-elements | Elementos pré-programados                                    |



### Combinação de seletores

É possível utilizar mais de um seletor, que faça parte do mesmo grupo, para um conjunto de estilização.

| Combinação | Descrição                                      |
| ---------- | ---------------------------------------------- |
| div + p    | Adjacent sibling                               |
| div > p    | Child                                          |
| div ~ p    | General sibling                                |
| div p      | Descendent                                     |
| div,p      | Mesmo consjunto de css para mais de um seletor |



### Exemplo Prático



#### Adjacent sibling

~~~~css
<ol id='aprovados' class='tag'>
    <li>Maria</li> 
    <li>Pedro</li>
    <li>Ana</li>
</ol>
~~~~

Maria e Pedro são irmãos adjacentes, pois estão um ao lado do outro. 



#### General sibling

Já Ana não é irmã adjacente de Pedro, mas ainda sim é irmã de todos os elementos.

~~~~css
<ol id='aprovados' class='tag'>
    <li>Maria</li> 
    <li>Pedro</li>
    <li>Ana</li>
</ol>
~~~~



#### Child

Paulo é filho direto de Ricardo, mas Bia não.

~~~~css
  <divclass='Ricardo'>
                <div class="Paulo">
                    <section class='Bia'>
                        <span class='tag'>1</span>
                        <p class='tag'>2</p>
                        <span class='tag'>3</span>
                    </section>
                </div>
~~~~



#### Descendent

div p: irá considerar todos os elementos p dentro da div

~~~~css
<div id='aninhado' class='tag'>
          <div class="tag">
              <section class='tag'>
                 <span class='tag'>1</span>
                    <p class='tag'>2</p>
                 <span class='tag'>3</span>
              </section>
          </div>
~~~~



**Exemplo:**

Para deixar uma lista zebrada, basta utilizar a pseudo-classe com a propriedade nth-child(odd):

~~~~css
       section > :nth-child(odd){
            columns: #10a8ab;
            background-color:#f77;
        }

~~~~

No caso acima os elementos dentro do section ficarão com uma cor sim e uma cor não.



### Especificidades CSS

**Ordem de prioridade das regras:**

1. Regra com !important (não recomendado)
2. Seletores mais específicos
3. Última regra processada (em casos de empate)



Exemplo prático:

~~~~css
        p{
            background-color: #aaaa
        }
        .observacao{
            background-color:#5f5;
            border: dashed 5px;
            padding: 20px;
            font-size: 40px;

        }

        p .observacao{
            padding: 5px 60px;
        }
~~~~

No caso acima, o elemento elencado com a classe terá prioridade em relação aos demais.

Em casos de mais de um !important para o mesmo elemento, o último inserido é o que será considerado.



**Ordem de prioridade em relação à aplicação do CSS:**

1. Inline
2. ID
3. Classe, Pseudo-Classe, atributo
4. Elemento, Pseudo-Elementos



### Box-model #01



- Margin: espaçamento entre a borda do elemento e os conteúdos externos

- Paddding: espaçamento entre a bora do elemento e os conteúdos internos

<a href="https://imgur.com/BPCP1Re"><img src="https://i.imgur.com/BPCP1Re.png" title="source: imgur.com" /></a>



### Formas de definir o margin e o padding



#### Forma específica

~~~~css
margin-top: 30px; (cima)
margin-right: 30px; (direita)
margin-bottom: 30px; (baixo)
margin-left: 30px; (esquerda)

~~~~

#### Forma resumida

~~~~css
margin: 30px /*Todos os lados terão 30px*/
margin: 30px /*top/bottom*/ 20px /*right/left*/
margin: 30px/*top*/ 20px /*right e left*/ 10px/*bottom*/
margin: 30px 30px 30px 30px /*top, right, bottom, left; sentido horário*/

~~~~



### Margin-collapse

Esse problema acontece quando um elemento sobrepõe o outro, ignorando propriedades como margin e padding.

Elementos vazios não geram nenhum tipo de influência e sempre estarão e collapse.



Para evitar, basta algumas das seguintes propriedades:

- Float: left / righ
- position: absolute
- display: inline-block



### Propriedade Display



| Propriedade  | Descrição                                                    |
| ------------ | ------------------------------------------------------------ |
| block        | Cada elemento será posicionado em uma única linha            |
| inline       | Todos os elementos serão posicionados na mesma linha. width e height não são considerados. Necessário utilizar o pading. |
| inline-block | Todos os elementos também serão posicionados na mesma linha, porém width e height serão considerados. |



Exemplo:

~~~~css
ul,li{
    display: inline-block;
}
~~~~



Ao utilizar a prorpiedade inline-block, é provável que haja um espaçamento entre os elementos. Esses espaçamentos podem ser resolvidos com algumas gambiarras.

Método 1: 

```
font-size: 0;
```

Outros métodos: 

https://stackoverflow.com/questions/5078239/how-do-i-remove-the-space-between-inline-inline-block-elements







~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~



~~~~css

~~~~





Mais informações sobre CSS: https://developer.mozilla.org/pt-BR/docs/Aprender/Getting_started_with_the_web/CSS_basico

