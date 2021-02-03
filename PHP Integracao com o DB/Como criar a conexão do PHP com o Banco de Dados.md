# Como criar a conexão do PHP com o Banco de Dados 



#### Requisitos

* Instalar o Xampp

- Inserir o banco de dados (caso seja importado) dentro da pasta htdocs do xampp

- Criar um novo projeto no VS Code



### Criando a conexão e uma consulta ao banco de dados



~~~~php
<?php 
//PASSO 1 - criando os dados do servidor
    $servidor = "localhost";
    $usuario = "root";
    $senha = "";
    $banco = "andes";
    //Necessário jogar todos os dados num array
    $conecta = mysqli_connect($servidor,$usuario,$senha,$banco); //Obs: toda conexao aberta precisa ser fechada 

 //PASSO 2 - Identificando se há erro na conexão
  if (mysqli_connect_errno()){
      die("Conexão falou: ".mysqli_connect_errno());
  }   

  // PASSO 4 - Criando uma consulta ao banco de dados
  $consulta_produtos = "SELECT nomeproduto, precounitario, tempoentrega ";
  //Concatenando com a linha de cima. É possível fazer em uma única linha, mas geralmente concatenamos para organização.
  //Isso evita que o FROM fique junto com o nome da coluna. Dica: sempre dê espaço na primeira linha
  $consulta_produtos .= " FROM produtos";

  // PASSO 5 - Criando uma nova variável para recerber a query construída acima
  $produtos = mysqli_query($conecta, $consulta_produtos);

  // PASSO 6 - Realizando teste de negação
  if (!$produtos){
      die("Falha na consulta do banco de dados");
  }
?>


<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Curso PHP Integração com MySQL</title>
    </head>

    <body>
        
    </body>
</html>

<?php
    //PASSO 3- Encerrando a conexão
    mysqli_close($conecta);
?>
~~~~

Caso não exiba nenhum erro, significa que a conexão foi estabelecida.



### Criando uma listagem de dados

~~~~php
<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Curso PHP Integração com MySQL</title>
    </head>

    <body>
        <!--Fazendo a listagem de dados - Método 1-->
        <?php
            //criando uma variável e atribuindo a função mysqli_fetch_assoc a ela, junto com a variável de consulta criada anteriormente
            while ( $registro = mysqli_fetch_assoc($produtos)){
                print_r($registro);
                echo("<br>");

            //Outros métodos são: mysqli_fetch_row e mysqli_fetch_array
            }   
        ?>
        

    </body>
</html>
~~~~



### Interagindo o código PHP com elementos HTML

~~~~php+HTML
 <body>
        <ul>
            <?php
            //Para realizar a interação entre o código PHP e os elementos do HTML, é necessário fechar o código PHP para inserir o HTML
                while ( $registro = mysqli_fetch_assoc($produtos)){            
            ?>
                <!-- Mostrando os produtos da tabela dentro de uma lista não ordenada, utilizando o php com html -->
                <li><?php echo $registro['nomeproduto'] ?></li>
            <?php
                }
            ?>
        </ul>

    </body>
~~~~



### Encerrando a consulta para liberar espaço na memória

~~~~php
mysqli_free_result($produtos);    
~~~~



### Include

Utilizado para inserir um código de outro arquivo dentro do código atual.

Caso haja um erro no código importado, o php irá notificar, mas seguirá executando o restante do código

~~~~php+HTML
    <!--Incluindo o código de outro arquivo-->
    <?php include("curso1.php");
    
    ?>
~~~~

### Include_once

Serve para que um código seja exibido apenas uma vez, mesmo que, no código, esteja declarado mais de uma.

~~~~php+html
<?php 
        include("curso1.php");
        echo "<br>";
        include_once("Curso1.php");
    ?>
~~~~

No caso acima, o código Curso1.php só será exibido uma vez.

### Reclue e Reclue_once

Também servem para importar o código de outro arquivo, porém caso haja um erro no código importado, todo o código base será interrompido.

~~~~php+HTML
<?php 
        require("curso1.php");
        echo "<br>";
        require_once("Curso1.php");
    ?>
~~~~



### Criar arquivo de conexão

Para fins de segurança, é fundamental que o conteúdo a ser exibido para o usuário fique localizado em uma pasta separada dos que deverão ser ocultos. 

Isso não impedirá que um hacker expert invada seus arquivos.

Primeiramente, é necessário criar um novo arquivo em uma pasta diferente da pública.

<a href="https://imgur.com/gYOWy4c"><img src="https://i.imgur.com/gYOWy4c.png" title="source: imgur.com" /></a>

Em seguida, basta estabelecer a conexão conforme o código abaixo:

~~~~php+HTML
<?php 
    $servidor = "localhost";
    $usuario = "root";
    $senha = "";
    $banco = "andes";
    $conecta = mysqli_connect($servidor,$usuario,$senha,$banco); 


    if ( mysqli_connect_errno()){
        die("Conexão falhou: ".mysqli_conect_errno());
    }
?>

~~~~

Por fim, chamar o código do arquivo "conexão.php" para o código principal:

~~~~php
<?php 
    //chamando o código da conexão que está localizado em uma pasta privada por motivo de segurança
    require_once("../../conexao/conexao.php");


  $consulta_produtos = "SELECT nomeproduto, precounitario, tempoentrega ";
  $consulta_produtos .= " FROM produtos";
  $produtos = mysqli_query($conecta, $consulta_produtos);

  if (!$produtos){
      die("Falha na consulta do banco de dados");
  }
?>
~~~~



## Unidade 04



### Criando uma listagem de produtos



#### Importando o código da conexão, localizado na pasta privada:

~~~~php+html
<?php require_once("../../conexao/conexao.php"); ?>
~~~~

#### Criando a consulta ao banco de dados:

~~~~php+html
<?php
    $produtos = "SELECT produtoID, nomeproduto, tempoentrega, precounitario, imagempequena ";
    $produtos .=" FROM produtos ";
    $resultado = mysqli_query($conecta,$produtos); //obs: conecta é a conexão que está localizada na pasta privada
    if (!$resultado){
        die("Falha na consulta ao banco");
    }

?>
~~~~

#### Juntando o array num elemento da lista

Observações:

- Para exibir uma imagem em php dentro do item li, basta inserir o código no src da imagem

- A classe "imagem", declarada no li, contém toda a formatação no arquivo "produtos.css"

- Visto isso, é possível realizar qualquer alteração nos elementos ao redor do array em php
- A função mysqli_fetch_assoc é responsável por retornar os itens de um array de forma automática

~~~~php+html
<main>  
   <!--o id listagem_produtos contém toda a estilização no arquivo produtos.css-->
       <div id="listagem_produtos">
         <?php
            while ($linha = mysqli_fetch_assoc($resultado)){    
         ?>
           <ul> 
             <li class="imagem"> <img src="<?php echo $linha["imagempequena"]?>" alt="Produto" title="Produto"></img></li>
             <li><h3> <?php echo $linha["nomeproduto"] ?></h3></li>
             <li>Tempo de entrega: <?php echo $linha["tempoentrega"] ?> dias</li>
          	 <li>Preço: R$ <?php echo number_format($linha["precounitario"],2,",",".") ?> </li>
  
     	   </ul>
               <?php
                    }
                ?>
            </div>
        </main>
~~~~



**Aplicando o formato da moeda Real no preço do produto**



- Chame a função numer_format() e insira o preço dentro do parâmetro

- Em seguida, a quantidade de casas decimais, o símbolo divisório das unidades de milhares e o símbolo divisório das dezenas ne milhares (caso ultrapasse 9999), respectivamente

  

~~~~php+html
<li>Preço: R$ <?php echo number_format($linha["precounitario"],2,",",".") ?> </li>
~~~~



Outra forma é criar uma função em um arquivo externo e realizar essas funções, a fim de simplificar o código, conforme exemplo abaixo 

Obs: necessário fazer a inclusão do arquivo no início do código

~~~~php+html
<!--Arquivo funcoes.php -->
<?php
    function real_format($valor) {
        $valor  = number_format($valor,2,",",".");
        return "R$ " . $valor;
    }
?>
~~~~

Agora, observe a linha "Preço":

~~~~php+html
<!--arquivo principal-->

<?php
    $produtos = "SELECT produtoID, nomeproduto, tempoentrega, precounitario, imagempequena ";
    $produtos .=" FROM produtos ";
    $resultado = mysqli_query($conecta,$produtos); //obs: conecta é a conexão que está localizada na pasta privada
    if (!$resultado){
        die("Falha na consulta ao banco");
    }
?>
<!--Importando arquivo que contém as funções-->
<?php include_once("../_incluir/funcoes.php"); ?>

<div id="listagem_produtos">
     <?php
       while ($linha = mysqli_fetch_assoc($resultado)){    
      ?>
     <ul>   
       <li class="imagem"> <img src="<?php echo $linha["imagempequena"]?>" alt="Produto" title="Produto"></img></li>
       <li><h3> <?php echo $linha["nomeproduto"] ?></h3></li>
       <li>Tempo de entrega: <?php echo $linha["tempoentrega"] ?> dias</li>
       <li>Preço: <?php echo real_format($linha["precounitario"]) ?> </li>
  	</ul>

     <?php
        }
      ?>
</div>
~~~~



### Criar links com parâmetro de URL

<em>Abrir arquivo avancado>public>unidade_05>listagem.php</em>



Neste caso, iremos inserir ID do produto no parâmetro da imagem.

Para isso, é necessário atribuir o código PHP no parâmetro do link, após chamar o arquivo detalhe.php

~~~~php+HTML
<a href="detalhe.php?codigo=<?php echo $linha["produtoID"] ?> ">
~~~~

A criação do parâmetro vem logo após o sinal de interrogação (?)

~~~~php+html
<div id="listagem_produtos"> 
            <?php
                while($linha = mysqli_fetch_assoc($resultado)) {
            ?>
                <!--Inserindo links ao redor da imagem-->
                <ul>
                
                    <li class="imagem">
                        <!--Inserindo o parâmetro na imagem ?php=[código php] -->
                        <a href="detalhe.php?codigo=<?php echo $linha["produtoID"] ?> ">
                            <img src="<?php echo  $linha["imagempequena"] ?>">
                        </a>
                    </li>

                    <li>
                        <h3><?php echo $linha["nomeproduto"] ?></h3>
                    </li>

                    <li>
                        Tempo de Entrega : <?php echo $linha["tempoentrega"] ?>
                    </li>

                    <li>
                        Preço unitário : <?php echo real_format($linha["precounitario"]) ?>
                    </li>
                </ul>
             
             
             <?php
                }
            ?>           
            </div>
~~~~



### Testar Parâmetro

<em>Abrir arquivo avancado>public>unidade_05>detalhes.php</em>



Recebendo o código através do método GET (já que os dados estão sendo enviados via URL)

~~~~php+html
<?php
    
    if( isset($_GET["codigo"]) ){
        $produtoID = $_GET["codigo"];
    }else{
      
        Header("Location: listagem.php");
    }

?>
~~~~

Caso o usuário entre direto na página de detalhe (esta página), ele será redirecionado para a página de listagem.





### Fazer um filtro na página Detalhe

<em>Abrir arquivo avancado>public>unidade_05>detalhes.php</em>



Criando a consulta ao banco de dados

~~~~php+html
<?php
    
    if( isset($_GET["codigo"]) ){
        $produtoID = $_GET["codigo"];
    }else{
        
        Header("Location: listagem.php");
    }
    //CONSULTA AO BANCO DE DADOS

    $consulta = "SELECT * ";
    $consulta .= " FROM produtos ";
    $consulta .= "WHERE produtoID = {$produtoID}"; 
	//OBSERVAÇÃO IMPORTANTE: a query deve ser construída com o uso de aspas duplas ("")
    //o produtoID, após o where, referece ao ID do banco de dados, que serviu de parâmetro para o link da imagem no arquivo listagem.php
    //Já variável produtoID é referente ao produtoID localizado acima.
    //Vale lembrar que a variável $conecta é referente a conexão com o banco, localizado na pasta privada
    $detalhe = mysqli_query($conecta,$consulta);

    //Realizando o teste de conexão
    if (!$detalhe){
        die("Falha no banco de dados");
    }else{
        //caso esteja tudo OK, todo o array acima será jogado para a variável $dados_detalhe
        $dados_detalhe=mysqli_fetch_assoc($detalhe);
    }
?>
~~~~

Para realizar o teste, basta adicionar um array no main do HTML com a variável que recebeu todas as informações, neste caso $dados_detalhe

~~~~php+html
 <main>  
        <?php
             print_r($dados_detalhe);
         ?>
</main>
~~~~



### Apresentar os dados na tela de forma organizada

<em>Abrir arquivo avancado>public>unidade_05>detalhes.php</em>



Primeiramente, é preciso criar e atribuir variáveis para ser inserida de forma organizada no corpo do HTML.

~~~~php+html
<?php
    if( isset($_GET["codigo"]) ){
        $produtoID = $_GET["codigo"];
    }else{
        Header("Location: listagem.php");
    }

    $consulta = "SELECT * ";
    $consulta .= " FROM produtos ";
    $consulta .= "WHERE produtoID = {$produtoID}"; 
    $detalhe = mysqli_query($conecta,$consulta);

    if (!$detalhe){
        die("Falha no banco de dados");
    }else{
        $dados_detalhe=mysqli_fetch_assoc($detalhe);
        
        $produtoID      = $dados_detalhe["produtoid"];
        $nomeproduto    = $dados_detalhe["nomeproduto"];
        $descricao      = $dados_detalhe["descricao"];
        $codigobarra    = $dados_detalhe["codigobarra"];
        $tempoentrega   = $dados_detalhe["tempoentrega"];
        $precovenda     = $dados_detalhe["precorevenda"];
        $precounitario  = $dados_detalhe["precounitario"];
        $estoque        = $dados_detalhe["estoque"];
        $imagemgrande   = $dados_detalhe["imagemgrande"];

    }
?>
~~~~

Agora, vamos criar os elementos da lista e utilizar as variáveis declaradas acima

~~~~php+html
 <main>  
           <div id="detalhe_produto">
                <ul>
                    <li class="imagem"> <img src="<?php echo $imagemgrande ?>"></li>
                    <li><?php echo $nomeproduto ?></li>
                    <li><?php echo $descricao ?></li>
                    <li><?php echo $codigobarra ?></li>
                    <li><?php echo $tempoentrega ?></li>
                    <li><?php echo $precovenda ?></li>
                    <li><?php echo $precounitario ?></li>
                    <li><?php echo $estoque ?></li>

                </ul>
           </div>
        </main>
~~~~



### Aplicando estilos e funções monetárias



~~~~php+html

~~~~



~~~~php+html

~~~~



~~~~php+html

~~~~



~~~~php+html

~~~~



~~~~php+html

~~~~



~~~~php+html

~~~~



~~~~php+html

~~~~



~~~~php+html

~~~~



~~~~php+html

~~~~



~~~~php+html

~~~~



~~~~php+html

~~~~



~~~~php+html

~~~~



~~~~php+html

~~~~



~~~~php+html

~~~~



~~~~php+html

~~~~



~~~~php+html

~~~~



~~~~php+html

~~~~



~~~~php+html

~~~~



~~~~php+html

~~~~



~~~~php+html

~~~~



~~~~php+html

~~~~



~~~~php+html

~~~~



~~~~php+html

~~~~



~~~~php+html

~~~~



~~~~php+html

~~~~



~~~~php+html

~~~~



~~~~php+html

~~~~



~~~~php+html

~~~~



~~~~php+html

~~~~



~~~~php+html

~~~~



~~~~php+html

~~~~



~~~~php+html

~~~~



~~~~php+html

~~~~

