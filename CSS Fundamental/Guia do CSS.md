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
| inline       | Todos os elementos serão posicionados na mesma linha. width e height não são considerados. Necessário utilizar o pading para alterar os tamanhos. |
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



### Altura e Largura

Por padrão, o HTML e o body ocupam toda a largura da tela mas a altura não. Para alterar a altura do documento, é necessário especificar o tamanho. A altura considera apenas o elementos contidos na página.

Elementos inline altura e largura são desconsideradas (por exemplo, a tag span).



### Box-sizing

A propriedade CSS box-sizing é utilizada para alterar a propriedade padrão da box model, usada para calcular larguras (widths) e alturas (heights) dos elementos. É possível usar essa propriedade para emular o comportamento dos navegadores (browsers) que não suportam corretamente a especificação da propriedade CSS box model.

| Propriedade             | Descrição                                                    |
| ----------------------- | ------------------------------------------------------------ |
| box-sizing: content-box | As propriedades [`width`](https://developer.mozilla.org/pt-BR/docs/Web/CSS/width) (largura) e [`height`](https://developer.mozilla.org/pt-BR/docs/Web/CSS/height) (altura) são medidas incluindo só o conteúdo, mas não o padding, border ou margin |
| box-sizing: border-box  | As propriedades de largura ([`width`](https://developer.mozilla.org/pt-BR/docs/Web/CSS/width)) e de altura ([`height`](https://developer.mozilla.org/pt-BR/docs/Web/CSS/height)) incluem o tamanho padding size e a propriedade border, mas não incluem a propriedade margin. |



### Overflow

A propriedade `overflow` especifica quando o conteúdo de um elemento de nível de bloco deve ser cortado, exibido com barras de rolagem ou se transborda do elemento.

~~~~css
overflow:  visible | hidden | scroll | auto | inherit
~~~~



| Propriedade | Descrição                                                    |
| ----------- | ------------------------------------------------------------ |
| visible     | Valor padrão. O conteúdo não é cortado e pode ser renderizado para fora da caixa de conteúdo. |
| hidden      | O conteúdo é cortado e nenhuma barra de rolagem é exibida.   |
| scroll      | O conteúdo é acessível através de barras de rolagem que são exibidas mesmo que o conteúdo não precise. Isso evita o problema de barras de rolagem aparecendo e desaparecendo quando o conteúdo é dinâmico. Impressoras podem imprimir o conteúdo vazado |
| auto        | Depende do navegador utilizado. Navegadores desktop como o Firefox geralmente exibem barras de rolagem apenas quando necessário |



### Float

Determina que um elemento deve ser retirado do seu fluxo normal e colocado ao longo do lado direito ou esquerdo do seu containêr, onde textos  e elementos em linha irão se posicionar ao seu redor.

Um elemento flutuante é um tipo de elemento cujo valor de `float `é diferente de `none.`



| Propriedade  | Descrição                                                    |
| ------------ | ------------------------------------------------------------ |
| left         | elemento deve flutuar à esquerda do bloco.                   |
| right        | elemento deve flutuar à direita do bloco                     |
| none         | É uma palavra-chave que indica que o elemento não deve flutuar. |
| inline-start | É uma palavra-chave que indica que o elemento deve flutuar no lado inicial do seu bloco, ou seja, o lado esquerdo em scripts `ltr` e no direito em scripts `rtl`. |
| inline-end   | É uma palavra-chave que indica que o elemento deve flutuar no lado final do seu bloco, ou seja, o lado direito em scripts `ltr` e no esquerdo em scripts `rtl`. |



### Clear

Especifica se um elemento pode ter elementos [flutuantes](https://developer.mozilla.org/en-US/docs/CSS/float) ao seu lado ou se devem ser movidos para abaixo dele (clear). Essa propriedade se aplica à elementos flutuantes ou não flutuantes. 



| Propriedade  | Descrição                                                    |
| ------------ | ------------------------------------------------------------ |
| none         | o elemento não foi movido para baixo para limpar os elementos flutuantes anteriores. |
| left         | o elemento foi movido para baixo para limpar os últimos flutuantes da esquerda. |
| right        | o elemento foi movido para baixo para liberar os últimos elementos flutuantes. |
| both         | o elemento será movido para baixo para limpar os elementos flutuantes do lado esquerdo e direito. |
| inline-start | o elemento será movido para baixo para limpar os elementos flutuantes no lado inicial de seu bloco, ou seja, os da esquerda flutuam nos scripts de ltr e os da direita nos scripts de rtl |
| inline-end   | o elemento será movido para baixo para limpar os flutuantes no final de seu bloco, os da direita nos scripts de ltr e os flutuantes da esquerda nos scripts de rtl. |



### Cores

- HSL Calculator: https://www.w3schools.com/colors/colors_hsl.asp

- Site para paletas de cores: https://coolors.co/c5afa4-cc7e85-cf4d6f-a36d90-76818e





~~~~css
body{
    background-color: green;
    background-color: #00ff00;
    background-color: rgb(55,110,220);
    background-color: rgb(55,110,220, 1.0); /*o último valor representa a transparência*/    
}
~~~~



### Unidades de dimensões



#### Absolutos

- px
- cm
- mm
- ...



#### Viewport

Uma viewport representa uma área poligonal (normalmente retangular) que está sendo exibida no momento. Em termos de navegador web, se refere a parte do documento que é exibida na janela (ou tela, se o documento estiver exibido em modo tela-cheia). Conteúdos fora da viewport não são visíveis na janela/tela até que seja rolado para sua área de visualização.



- vh
- vw
- vmin
- vmax



#### Font

- rem

- em



### Texto



#### Famílias

~~~~css
font-family: monospace;
font-family: georgia, serif;
font-family: verdana, sans-serif;
font-family: 'Indie Flower',cursive;
~~~~



#### Tamanhos padrões

~~~~~css
font-size: 1em;
font-size: 100%;
font-size: 16px;
font-size: 12pt;
~~~~~



#### Tamanhos absolutos

~~~~css
font-size: 100px; Tamanho do pixel da tela
font-size: 27pt; Pontos
font-size: lin; Polegadas
~~~~



#### Peso

~~~~css
font-weight: 100;
font-style: italic;
text-transform: uppercase; 
text-decoration: overline; 
word-spacing: 10px;
latter-spacing: 20px;
line-height: 2.5em;
text-align: center
~~~~

Obs: verificar as propriedades disponíveis



#### Exemplo prático

Criar um botão estilizado que possua um efeito ao clicar.

~~~~css
.botao{
    font-size:28px;
    text-decoration: none;
    padding: 10px 30px;
    border-radius: 25px;
}

.destaque{
    color: #ffff;
    background: tomato;
    box-shadow: 2px 2px 1px 1px #000;
}

.destaque:active{
	box-shadow: none;
}


~~~~



### Position

Define como um elemento pode ser posicionado (renderizado) no documento (página). Essa propriedade (**`position`**) pode ser acompanhada de outras, tais como, [`top`](https://developer.mozilla.org/pt-BR/docs/Web/CSS/top), [`right`](https://developer.mozilla.org/pt-BR/docs/Web/CSS/right), [`bottom`](https://developer.mozilla.org/pt-BR/docs/Web/CSS/bottom), and [`left`](https://developer.mozilla.org/pt-BR/docs/Web/CSS/left), que determinam como ficará a localização final do objeto, permitindo seu deslocamento, como será apresentado adiante.



| Valor    | Descrição                                                    |
| -------- | ------------------------------------------------------------ |
| static   | O elemento é posicionado de acordo com o fluxo normal do documento. A top, right, bottom, left, e z-indexpropriedades têm nenhum efeito . Este é o valor padrão |
| relative | O elemento é posicionado de acordo com o fluxo normal do documento, e, em seguida, deslocado em relação à própria base nos valores de top, right, bottom, e left. O deslocamento não afeta a posição de nenhum outro elemento; assim, o espaço dado para o elemento no layout da página é o mesmo como se a posição fosse static. |
| absolute | O elemento é removido do fluxo normal de documentos e nenhum espaço é criado para o elemento no layout da página. Ele é posicionado em relação ao seu ancestral mais próximo posicionado, se houver; caso contrário, ele é colocado em relação ao bloco inicial . A sua posição final é determinada pelos valores de top, right, bottom, e left. |
| fixed    | O elemento é removido do fluxo normal de documentos e nenhum espaço é criado para o elemento no layout da página. |
| sticky   | O elemento é posicionado de acordo com o fluxo normal do documento, e, em seguida, deslocada em relação ao seu antepassado rolagem mais próxima e contendo bloco (antepassado de nível de bloqueio mais próxima), incluindo elementos relacionados com a tabela, com base nos valores de top, right, bottom, e left. O deslocamento não afeta a posição de nenhum outro elemento. |



### Media Query

Define as orientações dos elementos, seja retrato ou paisagem, além de deixar o site responsivo.



~~~~css
div{
    font-size: 40px;
    margin: 20px;
    padding: 20px;
    background-color: coral;
    border: solid 5px;
    display: none;
}
/*CRITÉRIO PARA APLICAR OU NÃO O MEDIA QUERY*/

/*Se a largura do elemento for igual ou menor a 600px, a classe será aplicada*/
@media(max-width: 600px){
    .muito-pequeno{ display: block}
}

/*Se a orientação for do tipo portrait (retrato), a classe será aplicada*/
@media (max-width: 1000px), (orientation:portrait) {
    .pequeno-retrato{display:block;}
    
}
/*Se a orientação for do tipo landscape(paisagem), a classe será aplicada*/
@media (max-width: 1000px), (orientation:landscape) {
    .pequeno-retrato{display:block;}
    
}

/*Irá aplicar a classe no intervalo de 500px e 1000px*/
@media(min-width: 500px) and (max-width: 1000px){
    .intervalo {display:block;}
}
 

~~~~



### Flex Box

![Flex Box](https://css-tricks.com/wp-content/uploads/2018/11/00-basic-terminology.svg)



#### Flex Direction

Define como os itens flexíveis são colocados no contêiner flexível, definindo o eixo principal e a direção (normal ou invertido).



~~~~css
flex-direction: row;
~~~~

<a href="https://imgur.com/wGsUzGu"><img src="https://i.imgur.com/wGsUzGu.png" title="source: imgur.com" /></a>

~~~~css
flex-direction: row-reverse;
~~~~

<a href="https://imgur.com/Wg94Per"><img src="https://i.imgur.com/Wg94Per.png" title="source: imgur.com" /></a>

~~~~css
flex-direction: column;
~~~~

<a href="https://imgur.com/Ch5MEwy"><img src="https://i.imgur.com/Ch5MEwy.png" title="source: imgur.com" /></a>

~~~~css
flex-direction: column-reverse;
~~~~

<a href="https://imgur.com/JO75o6r"><img src="https://i.imgur.com/JO75o6r.png" title="source: imgur.com" /></a>





#### Flex-wrap

Define se os itens flexíveis são forçados a ficarem na mesma linha ou se podem ser quebradas em varias linhas. Se o argumento for valido, ele define a direção em que as linhas são empilhadas.



~~~~css
flex-wrap: nowrap;
~~~~

<a href="https://imgur.com/KeXCfGp"><img src="https://i.imgur.com/KeXCfGp.png" title="source: imgur.com" /></a>

~~~~css
flex-wrap: wrap;
~~~~

<a href="https://imgur.com/xfTvRks"><img src="https://i.imgur.com/xfTvRks.png" title="source: imgur.com" /></a>

~~~~css
flex-wrap: wrap-reverse;
~~~~

<a href="https://imgur.com/iOQwEOs"><img src="https://i.imgur.com/iOQwEOs.png" title="source: imgur.com" /></a>



#### Justify-content

Define como o navegador distribui o espaço entre e ao redor dos itens de conteúdo ao longo do [eixo principal](https://developer.mozilla.org/en-US/docs/Glossary/Main_Axis) de um contêiner flexível e do eixo embutido de um contêiner de grade.

~~~~css
justify-content: start;
~~~~

<a href="https://imgur.com/Vrpf0MV"><img src="https://i.imgur.com/Vrpf0MV.png" title="source: imgur.com" /></a>

~~~~css
justify-content: center;
~~~~

<a href="https://imgur.com/5vO8TBw"><img src="https://i.imgur.com/5vO8TBw.png" title="source: imgur.com" /></a>

~~~~css
justify-content: space-between;
~~~~

<a href="https://imgur.com/fznkXWZ"><img src="https://i.imgur.com/fznkXWZ.png" title="source: imgur.com" /></a>

~~~~css
justify-content: space-around;
~~~~

<a href="https://imgur.com/UWCuZ2B"><img src="https://i.imgur.com/UWCuZ2B.png" title="source: imgur.com" /></a>

~~~~css
justify-content: space-evenly;
~~~~

<a href="https://imgur.com/NdPxilJ"><img src="https://i.imgur.com/NdPxilJ.png" title="source: imgur.com" /></a>



#### Flex-flow

É uma junção das propriedades flex-direction e flex-wrap.

~~~~css
flex-flow: row;
flex-flow: row-reverse;
flex-flow: column;
flex-flow: column-reverse;

flex-flow: nowrap;
flex-flow: wrap;
flex-flow: wrap-reverse;

flex-flow: row nowrap;
flex-flow: column wrap;
flex-flow: column-reverse wrap-reverse;

flex-flow: inherit;
flex-flow: initial;
flex-flow: unset;
~~~~

Consulte [`flex-direction`](https://developer.mozilla.org/pt-BR/docs/Web/CSS/flex-direction) e [`flex-wrap`](https://developer.mozilla.org/pt-BR/docs/Web/CSS/flex-wrap) para ver os detalhes sobre os valores.



#### Align-content

Define a distribuição entre e ao redor dos items do conteúdo do eixo transversal de uma flexbox ou do eixo de bloco de uma grid.

~~~~css
align-content: start;
~~~~

<a href="https://imgur.com/FvCR41B"><img src="https://i.imgur.com/FvCR41B.png" title="source: imgur.com" /></a>

~~~~css
align-content: center;
~~~~

<a href="https://imgur.com/RVXzZNY"><img src="https://i.imgur.com/RVXzZNY.png" title="source: imgur.com" /></a>

~~~~css
align-content: space-between;
~~~~

<a href="https://imgur.com/zT9QiC7"><img src="https://i.imgur.com/zT9QiC7.png" title="source: imgur.com" /></a>

~~~~css
align-content: space-around;
~~~~

<a href="https://imgur.com/KzcJG7O"><img src="https://i.imgur.com/KzcJG7O.png" title="source: imgur.com" /></a>



#### Align-items

Estabelece o valor align-self em todos filhos diretos como um grupo. A propriedade align-self estabelece o alinhamento de um certo item dentro do bloco que o contém. Em Flexbox ele controla o alinhamento dos itens em Cross Axis, enquanto que no Grid Layout, controla o alinhamento dos itens no Eixo de Bloco dentro de sua  grid área.



~~~~css
align-items: stretch;
~~~~

<a href="https://imgur.com/cXvJUIT"><img src="https://i.imgur.com/cXvJUIT.png" title="source: imgur.com" /></a>

~~~~css
align-items: center;
~~~~

<a href="https://imgur.com/l0dx40y"><img src="https://i.imgur.com/l0dx40y.png" title="source: imgur.com" /></a>

~~~~css
align-items: start;
~~~~

<a href="https://imgur.com/QcfmUxG"><img src="https://i.imgur.com/QcfmUxG.png" title="source: imgur.com" /></a>

~~~~css
align-items: end;
~~~~

<a href="https://imgur.com/Q8Ko6qv"><img src="https://i.imgur.com/Q8Ko6qv.png" title="source: imgur.com" /></a>



####  Exemplo Prático Flex-box #1



~~~~css
div {
    border: solid 5px dodgerblue;
    font-size: 40px.
}

.flex-container div{
    box-sizing: border-box;
}

.flex-container{
    display: flex; /*vai deixar os elemwentos do container um ao lado do outro*/
    height: 300px;
    width: 600px;
}

/*alteração no 3 elemento do container*/
.flex-container div:nth-child(3){
    background-color; indianred;
    order: 1; /*manipula a ordem dos elementos. Vai passar a ter uma ordem maior que os demais elementos. Logo, passará a ser o ultimo elemento da lista e será exibido por útimo*/
  	order: 0;/*Passa a ser o último elemento da lista*/
    order: -1; /*passa a ser o primeiro elemento da lista*/
    align-self: center; /*alinhado ao centro*/
    align-self: flex-end; /*alinhado no final*/
    align-self: flex-start; /*alinhado no começo*/
    align-self: stretch;/*valor default*/
    
}
.flex-conatiner div{ /*vai para todas as divs*/
	width: 100px;
    flex-grow: 1; /*todas as divs do container terão peso 1*/  
}

.flex-container div:nth-child(1){
    flex-grow: 2; /*isso fará com que o elemento 1 seja maior devido ao peso, em realção as outras divs*/
}

.flex-container{
    width: 300px;
    flex-shrink: 1;
}
.flex-container div:nth-child(1){
    flex-shrink: 5;
    
}

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

