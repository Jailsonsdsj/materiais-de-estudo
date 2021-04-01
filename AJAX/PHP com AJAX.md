# PHP com AJAX

Curso Desenvolvedor Web Completo, de André Forntnelle.

Disponível em: [udemy](https://www.udemy.com/course/curso-desenvolvedor-web-completo/)

Sessão: da 104 à 115



## Introdução

**AJAX** é o acrônimo para **JavaScript assíncrono + XML.** Não é exatamente uma tecnologia nova, mas um termo empregado em 2005 por Jesse James Garrett para descrever uma nova forma de utilizar em conjunto algumas tecnologias, incluindo [HTML](https://developer.mozilla.org/en-US/docs/Web/HTML) ou [XHTML](https://developer.mozilla.org/en-US/docs/Glossary/XHTML), [CSS](https://developer.mozilla.org/en-US/docs/Web/CSS), [JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript), [DOMl](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model), [XML](https://developer.mozilla.org/en-US/docs/Web/XML), [XSLT](https://developer.mozilla.org/en-US/docs/Web/XSLT), e o mais importante: [objeto XMLHttpRequest](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest).

Quando essas tecnologias são combinadas no modelo AJAX, as aplicações web que a utilizam são capazes de fazer rapidamente atualizações incrementais para a interface do usuário sem recarregar a página inteira do navegador. Isso torna a aplicação mais rápida e sensível às ações do usuário.

Embora a letra X em AJAX corresponda ao XML, atualmente o [JSON](https://developer.mozilla.org/en-US/docs/Glossary/JSON) é mais utilizado que o XML devido às suas vantagens, como ser mais leve e ser parte do JavaScript. Ambos (JSON e XML) são utilizados para obter informações do pacote no modelo AJAX.



**Observação**: para fins de testes e estudos, é necessário utilizar o serviço cliente/servidor (apache).



### Realizando uma requisição síncrona

~~~~html
<script>
    var requisicao = new XMLHttpRequest();
    //variável.atributo('method','action','false p/ síncrono, true p/ assíncrono')
    requisicao.open('GET','dados.txt',false);
    requisicao.send();
    console.log(requisicao);
    
</script>
~~~~



### readyState

0. Requisição não inicializada

1. Conexão estabelecida com o servidor
2. Requisição recebida
3. Processando requisição
4. Requisição finalizada



### Status

- 200: ok

- 404: página não encontrada



### Identificando os estágios do carregamento

Para que o estado seja exibido no console.log, é necessário deixar a requisição assíncrona.

~~~~html
    <script>
        var requisicao = new XMLHttpRequest();
        requisicao.open('GET','texto.html',true); //true é o valor default
        requisicao.send();
        requisicao.onreadystagechange=function(){
            if(requisicao.status == 200){//caso a requisição seja bem sucedida
                if (requisicao.readyState == 3){
                    console.log("Carregando");
                }
                if (requisicao.readyState == 4){
                    concole.log("Carregou");
                }
            }
        }
    </script>
~~~~



### Mostrar dados de retorno

~~~~html
 <script>
        var requisicao = new XMLHttpRequest();
        requisicao.open('GET','dados.txt',true); //true é o valor default
        requisicao.send();
        requisicao.onreadystatechange=function(){
            if(requisicao.status == 200){//caso a requisição seja bem sucedida
                if (requisicao.readyState == 3){
                    console.log("Carregando");
                }
                if (requisicao.readyState == 4){
                    console.log("Carregou");
                }
            }else{
                console.log("Erro na operação. \n Código do erro: "+requisicao.status);
            }
            
            
        }
    </script>
~~~~



### Fazer um código compatível com todas as versões dos navegadores

~~~~html
<script>

            var requisicao;
            if (window.XMLHttpRequest){
                requisicao = new XMLHttpRequest();

            }else{
                requisicao = new ActiveXObject("Microsoft.XMLHTTP");
            }
            requisicao.open('GET','dados.txt',true); //true é o valor default
            requisicao.send();
            requisicao.onreadystatechange=function(){
                if(requisicao.status == 200){//caso a requisição seja bem sucedida
                    if (requisicao.readyState == 3){
                        console.log("Carregando");
                    }
                    if (requisicao.readyState == 4){
                        console.log("Carregou");
                    }
                }else{
                    console.log("Erro na operação. \n Código do erro: "+requisicao.status);
                } 
            }
~~~~



### Mostrar dados de retorno dentro do HTML

~~~~html
<script>
            let requisicao;
          
            if (window.XMLHttpRequest){
                requisicao = new XMLHttpRequest();

            }else{
                //Caso o navegador não suporte a varsão do XMLHttpRequest
                requisicao = new ActiveXObject("Microsoft.XMLHTTP");
            }

            requisicao.open('GET','dados.txt',true); //true é o valor default
            requisicao.send();
            requisicao.onreadystatechange=function(){
                if(requisicao.status == 200){//caso a requisição seja bem sucedida
                    if (requisicao.readyState == 3){
                        console.log("Carregando");
                    }
                    if (requisicao.readyState == 4){
                        //alterando pelo id
                       let elemento = document.getElementById('dinamico');
                       elemento.innerHTML = requisicao.responseText;

                        //alterando pela tag
                       let titulo = document.getElementsByTagName('h1');
                        //atenção ao elementS
                        
                        //os elementos são jogados detro de um array
                       titulo[0].innerHTML = requisicao.responseText;
                    }
                }else{
                    console.log("Erro na operação. \n Código do erro: " + requisicao.status);
                } 
            }
~~~~



### Criando um evento

~~~~html
<script>
            function carregarDados(){
                let requisicao;
            
                if (window.XMLHttpRequest){
                    requisicao = new XMLHttpRequest();

                }else{
                    requisicao = new ActiveXObject("Microsoft.XMLHTTP");
                }

                requisicao.open('GET','dados.txt',true); //true é o valor default
                
                requisicao.onreadystatechange=function(){
                    if(requisicao.status == 200){//caso a requisição seja bem sucedida
                        if (requisicao.readyState == 3){
                            console.log("Carregando");
                        }
                        if (requisicao.readyState == 4){
                            //alterando pelo id
                        let elemento = document.getElementById('dinamico');
                        elemento.innerHTML = requisicao.responseText;

                            //alterando pela tag
                        let titulo = document.getElementsByTagName('h1');//atenção ao elementS
                        titulo[0].innerHTML = requisicao.responseText;
                        }
                    }else{
                        console.log("Erro na operação. \n Código do erro: " + requisicao.status);
                    } 
                }
                requisicao.send();
            }//fechamento da função carregarDados

    </script>
~~~~



## jQuery com Ajax

Adicionar a biblioteca jQuery no diretório do projeto





### Realizando uma requisição básica com jQuery



#### Utilizando id

~~~~html
 <div id="curso"></div>

        <script src="jquery.js"></script>
        <script>
            $('div#curso').load('dados.txt');
            
            //

        </script>
~~~~

- Note que, no jQuery, o $ substitui o getElementById

- A requisição vai atribuir o conteúdo de dados.txt à div curso



#### **Utilizando classes**

~~~~html
<body>
        <div class="curso"></div>
        <div class="curso"></div>
        <div class="curso"></div>

        <script src="jquery.js"></script>
        <script>
            $('div.curso:first').load('dados.txt');
        </script>
    </body>
~~~~

Nesse caso, o dados.txt será atribuído à primeira classe. Repare que a sintaxe 'div.curso:first' é semelhante ao CSS.



### Carregar uma variável de um arquivo externo com jQuery/AJAX com o método then



arquivo nome.php

~~~~php
<?php
    $nome = "Jailson Júnior";
    echo $nome;
?>
~~~~

Importando a variável nome para a página principal:

~~~~html
 <div id="usuario">
	<!-- Esta div receberá a variável nome-->
 </div>

<script>
            $.ajax({
                url:'nome.php' //não utilizar ; 
                //
            }).then(sucesso, falha); //basicamente then é um if else que irá chamar uma das duas funções, dependendo do resultado.

            function sucesso(valor){//a variável valor receberá como parâmetro o resultado de nome.php
                $('div#usuario').html(valor);
            }
            //função para exibir uma possível falha
            function falha(){
                $('div#usuario').html("Falha no Carregamento");
            }
        </script>
~~~~



### Carregar uma variável de um arquivo externo com jQuery/AJAX com os métodos done, fail e always

Esse método é mais eficaz que o then.

~~~~html
 <body>
        <div id="mensagem"></div>
        <div id="usuario"></div>
        
        <script src="jquery.js"></script>
        <script>
           $.ajax({
               url:'nomes.php'
           }).done(function(valor){  //utilizando a função done, em caso de sucesso
               $('div#usuario').html(valor);
           }).fail(function(){ //Caso ocorra algum erro
                $('div#usuario').html("Falha no carregamento");
           }).always(function(){ //a função always é executada independente de erro ou sucesso
                $('div#mensagem').html("Bem vindo,");
           })
        </script>
    </body>
~~~~



### Carregando dados de um arquivo XML

Arquivo XML

~~~~xml
<loja>
    <produto>
        <nomeproduto>Biscottis</nomeproduto>
        <descricao>All-natural bite-sized biscuits.</descricao>
        <codigobarra>789151 823800</codigobarra>
        <tempoentrega>15</tempoentrega>
        <precounitario>20.00</precounitario>
        <estoque>100</estoque>
        <imagemgrande>images/product_images/HoneyBiscotti_Big.jpg</imagemgrande>  
    </produto>

    <produto>
        <nomeproduto>Organic Earl Grey</nomeproduto>
        <descricao>Because once in a blue moon you might want something besides coffee. This blend of black and green teas is highly aromatic, rich and flavorful with a hint of light citrus.</descricao>
        <codigobarra>789151 823798</codigobarra>
        <tempoentrega>8</tempoentrega>
        <precounitario>9.00</precounitario>
        <estoque>1000</estoque>
        <imagemgrande>images/product_images/EarlGreyTea_Big.jpg</imagemgrande>  
    </produto>
</loja>
~~~~

#### **Carregando de forma didática**

~~~~html
<body>
        <div id="listagem"></div>
        
        <script src="jquery.js"></script>
        <script>
            $.ajax({
                url:'_xml/produtos.xml'
            }).then(sucesso,falha);

            function sucesso(arquivo){
                console.log(arquivo); //exibindo todos os dados do XML
                console.log($(arquivo).find('produto').find('nomeproduto').text()); //econtrando dados. Nesse caso, o nomeproduto.
            }
            function falha(){
                console.log("Falha ao carregar o arquivo");
            }
        </script>
    </body>
~~~~



#### **Carregando de forma profissional**

~~~~html
<body>
        <div id="listagem"></div>
        
        <script src="jquery.js"></script>
        <script>
            $.ajax({
                url:'_xml/produtos.xml'
            }).then(sucesso,falha);

            function sucesso(arquivo){
               var elemento;
               elemento = "<ul>";
               $(arquivo).find('produto').each(function(){
                   let nome = $(this).find('nomeproduto').text(); //os elementos nomeproduto serão atribuídos a uma variável e exibidos em uma lista não-ordenada
                   
                   let preco = $(this).find('precounitario').text();
                   elemento += "<li>" + nome + " - R$ " + preco+  "</li>";
               });
               elemento +="</ul>";
                $('div#listagem').html(elemento);
            }

            function falha(){
                console.log("Falha ao carregar o arquivo");
            }
        </script>
    </body>
~~~~



#### Chamar o carregamento através de um evento

~~~~html
<button type="submit" onclick="carregarDados()" id="botao">Carregar Dados</button>
        <div id="listagem"></div>
<script src="jquery.js"></script>
        <script>
            $('button#botao').click(function(){
                carregarDados()
            });

            function carregarDados(){
                	AQUI ENTRA O SCRIPT ANTERIOR
                }
        </script>
~~~~



### Carregar dados de um arquivo JSON

Arquivo JSON

~~~~json
[{"produtoID":"1","nomeproduto":"Biscottis","precounitario":"20.00","tempoentrega":"15"},{"produtoID":"2","nomeproduto":"Organic Earl Grey","precounitario":"9.00","tempoentrega":"8"},{"produtoID":"3","nomeproduto":"Sugar","precounitario":"3.00","tempoentrega":"8"},{"produtoID":"4","nomeproduto":"Non-Diary Creamer","precounitario":"3.00"}]
~~~~

#### Carregando dados

~~~~html
 <script>
            $.getJSON('_json/produtos.json',function(valor){
                console.log(valor);
            });
 </script>
~~~~



#### Listado os dados

~~~~html
<script>
            $.getJSON('_json/produtos.json',function(valor){
                $.each(valor, function(i,lista){
                    console.log(lista.nomeproduto);
                });
            });
        </script>
~~~~



#### Mostrar dados em uma lista

~~~~html
<body>
        <div id="listagem">
            <!--Aqui entrará a listagem-->
        </div>

        <script src="jquery.js"></script>
        <script>
            $.getJSON('_json/produtos.json',function(valor){
                let elemento;
                elemento = "<ul>";
                $.each(valor, function(i,lista){
                    elemento += "<li>" + lista.nomeproduto + "</li>";
                    elemento += "<li>" + lista.precounitario + "</li>";
                    elemento += "<br>";
                });
                elemento += "<ul>";
            
                //jogando os dados na div
                $('div#listagem').html(elemento);

            });
            
            
        </script>
    </body>
~~~~

####  

#### Aplicar estilo e aplicar um evento para carregar os dados

~~~~html
<script>

            $('button#botao').click(function(){
                $('div#listagem').css('display','block');
                carregarDados();
            });
            //função para carregar os dados por meio de um botão
            function carregarDados(){
                $.getJSON('_json/produtos.json',function(valor){
                    let elemento;
                    elemento = "<ul>";
                    $.each(valor, function(i,lista){
                        elemento += "<li class='nome'>" + lista.nomeproduto + "</li>";
                        elemento += "<li class='preco'>" + lista.precounitario + "</li>";
                        elemento += "<br>";
                    });
                    elemento += "<ul>";
                
                    //jogando os dados na div
                    $('div#listagem').html(elemento);

                });
            }
            
   </script>
~~~~



#### Transferindo os dados do banco para um arquivo JSON via PHP

~~~~php
<?php
   //TRANSFERINDO AS INFORMAÇÕES DO BANCO PARA UM ARQUIVO JSON VIA PHP
   $conecta = mysqli_connect("localhost","root","","andes");
   $selecao= "SELECT nomeproduto, precounitario, imagempequena FROM produtos";
   $produtos = mysqli_query($conecta,$selecao);

   $retorno = array();

   while($linha = mysqli_fetch_object($produtos)){
     $retorno[] = $linha;
    }

    //inserindo o array em um arquivo JSON
    echo json_encode($retorno);

?>


<?php
    //fechar conexão
    mysqli_close($conecta);
?>
~~~~

Esse método permite visualizar as alterações do banco em tempo real



#### Preparar o arquivo para consulta em outros domínios

Basta inserir a seguinte linha de código no início do arquivo:

~~~~php
header('Acess-Control-Allow-Origin:*');
~~~~



#### Realizar uma consulta ao arquivo JSON via PHP

Após estruturar o código de *Transferindo os dados do banco para um arquivo JSON via PHP*, basta chama-lo na função de array, no arquivo principal, semelhante ao que foi feito em *Aplicar estilo e aplicar um evento para carregar os dados*. Por último, basta chamar o arquivo php no qual extrai os dados do banco.

~~~~javascript
function carregarDados() {
    			//o arquivo gerar_json.php contém todos os dados que foram extraídos do banco em formato JSON
                $.getJSON('_banco/gerar_json.php', function(data) {
                    var elemento;

                    elemento = "<ul>";
                    $.each(data, function(i, valor) {
                        elemento += "<li class='nome'>" + valor.nomeproduto + "</li>"; 
                        elemento += "<li class='preco'>" + valor.precounitario + "</li>"; 
                        elemento += "<li class='imagem'><img src='" + valor.imagempequena + "'</li>"; 
                    });
                    elemento += "</ul>";

                    $('div#listagem').html(elemento);
                });
~~~~

O código acima irá exibir, agora, não somente o nome e preço do produto, como também a imagem.



~~~~html

~~~~



~~~~html

~~~~



~~~~html

~~~~



~~~~html

~~~~



~~~~html

~~~~



~~~~html

~~~~



~~~~html

~~~~



~~~~html

~~~~



~~~~html

~~~~



~~~~html

~~~~



~~~~html

~~~~



~~~~html

~~~~



~~~~html

~~~~



~~~~html

~~~~



~~~~html

~~~~



~~~~html

~~~~



~~~~html

~~~~



~~~~html

~~~~



~~~~html

~~~~



~~~~html

~~~~



~~~~html

~~~~

