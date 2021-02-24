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



### Criar um Formulário de Pesquisa

*Arquivo avancado>unidade 06> listagem.php*



~~~~php+html
 <!--Adicionando a barra de pesquisa com o método GET-->
            <div id="janela_pesquisa">
                <form action="istagem.plhp" method="get">
                    <input type="text" name="produto" placeholder="Nome do Produto">
                    <input id="botao_pesquisa"type="image" name="pesquisa" src="../_assets/botao_search.png">
                </form>
            </div>      
~~~~



Gerando a pesquisa no banco de dados:

~~~~php+html
<?php
      // Consulta ao banco de dados
    $produtos = "SELECT produtoID, nomeproduto, tempoentrega, precounitario, imagempequena ";
    $produtos .= " FROM produtos ";
    //Condição para realizar o filtro se o input produto (o campo de pesquisa) do formulário estiver incrementado
    if ( isset($_GET['produto'])){
        //A pesquisa será atribuída a uma variável e, em seguida, jogada para o select;
        $nome_produto = $_GET["produto"];
        $produtos .= " WHERE nomeproduto LIKE '%{$nome_produto}%'  ";
    }
    
    $resultado = mysqli_query($conecta, $produtos);
    if(!$resultado) {
        die("Falha na consulta ao banco");   
    }
?>
~~~~

O LIKE, junto com o caractere coringa (%) que vem antes e depois da variável, buscará os produtos, mesmo se o nome não for digitado corretamente.

O nome da variável que recebe o $_GET[] na condição isset precisa ser o nome do input inserido no HTML:

~~~~php+html
<input type="image" name="pesquisa" src="../_assets/botao_search.png">
~~~~



### Criar uma variável de sessão



Primeiramente, é necessário que todas as páginas do projeto possuam a função session_start();. Essa função é responsável por manter o usuário logado nas páginas.

Em seguida, cria-se uma variável session e atribuímos a ela as credenciais de login se senha. Inicialmente utilizaremos apenas o login.



~~~~php+html
<?php
    //iniciar a sessão de login. 
    session_start();

    //Criar uma variável de sessão
    $_SESSION["usuario"] = "Junior";

?>

~~~~

Para certificar que o usuário está logado em todas as páginas, basta imprimir na tela a variável session

~~~~php+html
<main>  
            <?php
                echo $_SESSION["usuario"];   
            ?>
            <p><a href="pagina1.php">Página 1</a></p>
        </main>
~~~~



### Encerrar a variável de sessão

Crie uma novo arquivo php e utilize pelo menos uma das seguintes variáveis:



~~~~php+html
<?php
                //REMOVE A VARIÁVEL SESSION MENCIONADAS
                unset($_SESSION["usuario"]);
                
                //DESTROI TODAS AS VARIÁVEIS DE SESSÃO DO PROJETO
                session_destroy();

            ?>
~~~~



### Criar uma tela de Login



~~~~php+html
 <main>  

            <div id="janela_login">
                <!--necessário usar o moethod post, pois o GET exibe as informações na barra de endereço-->
                <form action="login.php" method="post">
                    <h2>Tela de Login</h2>
                    <input type="text" name="usuario" placeholder="Usuário">
                    <input type="password" name="senha" placeholder="Senha" >
                    <input type="submit" value='Login'>
                </form>
            </div>


        </main>
~~~~



### Recebendo as informações enviadas



No arquivo login.php

~~~~php+html
<?php
    if (isset($_POST["usuario"])){
        $usuario = $_POST["usuario"];
        $senha = $_POST["senha"];
         //validação de dados
        echo $usuario."<br>";
        echo $senha;      
   
?>
~~~~



### Realizar o filtro de login no banco de dados

Arquivo login.php

~~~~php+html
<?php
    if (isset($_POST["usuario"])){
        $usuario = $_POST["usuario"];
        $senha = $_POST["senha"];

        //REALIZANDO O FILTRO NO BANCO DE DADOS
        $login = " SELECT * FROM clientes WHERE usuario = '{$usuario}' and senha = '{$senha}' ";

        //ATRIBUINDO OS RESULTADOS À VARIÁVEL ACESSO
        $acesso = mysqli_query($conecta,$login);

        //TESTANDO CONEXÃO
        if (!$acesso){
            die ("Falha na consulta ao banco de dados");
        }

        $informacao = mysqli_fetch_assoc($acesso);

        //VALIDANDO DADOS(CASO O USUÁRIO NÃO SEJA ENCONTRADO). 
        if (empty($informacao)){
            $mensagem = "Usuário não localizado.";
        }else{
            //SE FOR ENCONTRADO, SERÁ REDIRECIONADO PARA A PÁGINDA DE LISTAGEM
            header("location:listagem.php");
        }
    }
  
?>

~~~~

No html do arquivo:

~~~~php+html
<main>  
            <div id="janela_login">
                <!--necessário usar o moethod post, pois o GET exibe as informações na barra de endereço-->
                <form action="login.php" method="post">
                    <h2>Tela de Login</h2>
                    <input type="text" name="usuario" placeholder="Usuário">
                    <input type="password" name="senha" placeholder="Senha" >
                    <input type="submit" value='Login'>

                    <!--Exibindo a mensagem de erro-->
                    <?php   
                        //se a variável mensagem foi definida:
                        if (isset($mensagem)){   
                    ?>
                        <p><?php echo $mensagem ?></p>

                    <?php
                        }
                    ?>

                </form>
            </div>
        </main>
~~~~

#### Caracteres UTF8

Caso os caracteres especiais não sejam exibidos no site, basta utilizar a função utf8_encode

~~~~php+html
<?php echo utf8_encode ($linha["nome"]); ?>
~~~~





### Acrescentando a variável sessão



Crie uma nova página php para servir de segurança e, em seguida, atribua a ela o código de segurança:

~~~~php+html
<!--Iniciando a variável sessão e protegendo a página-->
<?php 
    session_start(); 

    //se a variável session não estiver definida, o site será redirecionado para a página de login
    if (!isset($_SESSION["user_portal"])){
        header("location:login.php");
    }

?>
~~~~

Para proteger as demais páginas, basta inserir o código acima através do require_once no início de todas as páginas do projeto:

~~~~php+html
<!---require de conexão com o bd-->
<?php require_once("../../conexao/conexao.php"); ?>
<!--require de segurança-->
<?php require_once("../../conexao/seguranca.php");?>
~~~~





### Criando uma rotina de saudação

*Arquivo _incluir>topo.php*

~~~~php+html
<?php
            if (isset($_SESSION["user_portal"])){
                $user = $_SESSION["user_portal"];

                $saudacao = "SELECT nomecompleto ";
                $saudacao .= " FROM clientes ";
                $saudacao .= " where clienteID = {$user} ";

                $saudacao_login = mysqli_query($conecta, $saudacao);
                if (!$saudacao_login){
                    die("Falha no banco");
                }
                $saudacao_login = mysqli_fetch_assoc($saudacao_login);
                $nome= $saudacao_login ["nomecompleto"];
        ?>
        
        <div id="header_saudacao"> 
            <h5>Bem vindo, <?php echo $nome; ?>! </h5>
        </div>


        <?php
            }
        ?>
~~~~



### Criando uma página de Logout

Arquivo *_incluir>topo.php*

~~~~php+html
<h5>Bem vindo, <?php echo $nome; ?>! - <a href="sair.php"> Sair <a> </h5>
~~~~

Novo arquivo *sair.php*

~~~~php+html
<?php
    session_start();
    unset($_SESSION["user_portal"]);
    header("location:login.php");
?>
~~~~

### Criando formulário de inserção de dados (HTML)

~~~~php+HTML
  <main>  
            <div id="janela_formulario">
                <form action="inserir.php" method="post">
                    <input type="text" name="nometransportadora" placeholder="Nome da Transportadora">
                    <input type="text" name="endereco" placeholder="Endereço">
                    <input type="text" name="telefone" placeholder="Telefone">
                    <input type="text" name="cidade" placeholder="Cidade">
                    <select name="estados">
                        <?php
                            while($linha=mysqli_fetch_assoc($lista_estados)){

                        ?>
                        <option value="<?php echo $linha["estadoID"]; ?>">
                            <?php echo $linha["nome"]; ?>
                        </option>
                        <?php
                            }
                        ?>
                    </select>
                    <input type="text" name="cep" placeholder="CEP">
                    <input type="text" name="cnpj" placeholder="CNPJ">
                    <input type="submit" name="enviar" placeholder="Enviar">
                    
                </form>
            </div>
        </main>
~~~~

Select para os estados cadastrados no banco

~~~php+HTML
<?php
    $select = "SELECT estadoID, nome FROM estados";
    $lista_estados = mysqli_query($conecta,$select);
    if (!$lista_estados){
        die("Erro no banco de dados");
    }
?>
~~~

verificando se algum campo foi preenchido. nesse caso, será o nome da transportadora

~~~php

    if (isset($_POST["nometransportadora"])){
        print_r($_POST);
    }
~~~



### Inserindo dados no Banco de Dados



Query de inserção MySQL

~~~~php
    //jogando os dados do forumário em variáveis
    if (isset($_POST["nometransportadora"])){
        $nome       = $_POST["nometransportadora"];
        $endereco   = $_POST["endereco"];
        $cidade     = $_POST["cidade"];
        $estados    = $_POST["estados"];
        $cep        = $_POST["cep"];
        $cnpj       = $_POST["cnpj"];
        $telefone   = $_POST["telefone"];

        //select de inserção
        $inserir    =" INSERT INTO transportadoras VALUES ";
        $inserir   .=" (null, '$nome','$endereco','$cidade',$estados,'$cep','$cnpj','$telefone')";


        $operacao_inserir = mysqli_query($conecta,$inserir);

        //verificando casos de erro
        if(!$operacao_inserir){
            die("Falha ao cadastrar transportadoras");
        }
    }
~~~~



#### Decodificando os caracteres UTF-8

É provável quem, em alguns casos, os caracteres especiais não sejam reconhecidos pelo banco. Dessa forma, é necessário utilizar a função utf8_decode antes da variável $_POST. **É importante realizar o teste antes de acrescentar a função, pois, caso o banco reconheça os caracteres, a função poderá fazer o efeito contrário.**

~~~~php
 $nome       = utf8_decode ($_POST["nometransportadora"]);
~~~~



### Alterando dados no Banco de Dados



Criando o formulário de alteração

~~~~php+html
<div id="janela_formulario">
                <form action="alteracao.php" method="post">
                    <h2> Alteração de Transportadoras </h2>
                    <!--O label é responsável por focar o título do campo, a área de preenchimento-->
                    <label for="nometransportadora">Nome da Transportadora</label>
                    <input type="text" value="" name="nometransportadora" id="nometransportadora">

                    <label for="endereco">Endereço</label>
                    <input type="text" value="" name="endereco" id="endereco">

                    <label for="cidade">Cidade</label>
                    <input type="text" value="" name="cidade" id="cidade">

                    <label for="estados">Estado</label>
                    <select id="estados" name="estados">

                    </select>

                    <label for="cep">CEP</label>
                    <input type="text" value="" name="cep" id="cep">

                    <label for="telefone">Telefone</label>
                    <input type="text" value="" name="telefone" id="nometransportadora">

                    <label for="cnpj">CNPJ</label>
                    <input type="text" value="" name="cnpj" id="nometranspocnpjrtadora">

                    <input type="submit" name="salvar" placeholder="Salvar">


                </form>
            </div>
~~~~

Criando a consulta no banco que será exibida na tela de login

~~~~php+html
<?php
    $tr = "SELECT * ";
    $tr .=" FROM transportadoras ";
    if(isset($_GET["codigo"])){
        $id = $_GET["codigo"];
        // o ID do código do produto será atribuído à query
        $tr .= "WHERE transportadaoraID = {$id} "; 
    }else{
        //Caso o usuário acesse diretamente a página alteração, sem clicar em algum produto, ele será redirecionado para o produtoi de código 1
        $tr .= "WHERE transportadoraID = 1 ";
    }

    $con_transportadora = mysqli_query($conecta,$tr);
    if(!$con_transportadora){
        die("Falha na consulta");
    }
?>
~~~~





### Preenchendo os campos do formulário de alteração automaticamente



Criando um array que será jogado no value de cada campo do formulário

~~~~php
$info_transportadora = mysqli_fetch_assoc($con_transportadora);
~~~~



No formulário HTML:

~~~~php+html
<h2> Alteração de Transportadoras </h2>
                  
    <label for="nometransportadora">Nome da Transportadora</label>
 	<input type="text" value="<?php echo $info_transportadora["nometransportadora"]; ?> " name="nometransportadora" id="nometransportadora">
~~~~



#### Preenchendo automaticamente campos com select



~~~~php
$estados = "SELECT * FROM estados";
    //essa variável será jogana no mysqli_fetch_assoc do campo value
    $lista_estados = mysqli_query($conecta,$estados);
    if (!$lista_estados){
        die ("Falha na consulta ao banco de dados");
    }
~~~~

No HTML:

~~~~php+html
<select id="estados" name="estados">
                        <?php
                            //A variável meuestado receberá o código do estado
                            $meuestado = $info_transportadora["estadoID"];
                            while($linha = mysqli_fetch_assoc($lista_estados)){
                                $estado_principal = $linha["estadoID"];
                                if($meuestado == $estado_principal){
                        ?>
                            <option value="<?php echo $linha["estadoID"]; ?>"> 
                                <?php echo $linha["nome"]; ?>
                            </option>

                        <?php
                            }else{

                            }
                        ?>
                        <?php
                        }
                        ?>
~~~~



Receber as informações alteradas no formulário

~~~~php
if (isset($_POST["nometransportadora"])){
        $nome       = $_POST["nometransportadora"];
        $endereco   = $_POST["endereco"];
        $cidade     = $_POST["cidade"];
        $estados    = $_POST["estados"];
        $cep        = $_POST["cep"];
        $cnpj       = $_POST["cnpj"];
        $telefone   = $_POST["telefone"];
        $id   = $_POST["transportadoraID"];
    }
~~~~

Observação: o id, por ser uma chave estrangeira, foi recebido através de um campo oculto no formulário, vide código abaixo:

~~~~php+html
<input type="hidden" name="transportadoraID" value="<?php echo $info_transportadora["transportadoraID"]; ?>">
~~~~

Criando o objeto de alteração:

~~~~php
$alterar  = " UPDATE transportadoras  ";
        $alterar .= " SET ";
        $alterar .= " nometransportadora = '{$nome}',";
        $alterar .= " endereco = '{$endereco}',";
        $alterar .= " cidade = '{$cidade}',";
        $alterar .= " estadoID = {$estados},";
        $alterar .= " cep = '{$cep}',";
        $alterar .= " cnpj = '{$cnpj}',";
        $alterar .= " telefone = '{$telefone}' ";
        $alterar .= " WHERE ";
        $alterar .= " transportadoraID = {$tID}";

        $operacao_alterar = mysqli_query($conecta,$alterar);
        if (!$operacao_alterar){
            die("Erro na alteração dos dados");
        }else{
            header("location:listagem.php");
        }
    }
~~~~



### Excluir dados do banco de dados



Criando a consulta a tabela de transportadora

~~~~php
$tr=" SELECT * FROM transportadoras ";
    if( isset($_GET["codigo"])){
        $id = $_GET["codigo"];
        $tr .= " WHERE transportadoraID = {$id} ";
    }

    $con_transportadora = mysqli_query($conecta, $tr);
    if (!$con_transportadora){
        die("Erro na consulta");
    }
    $info_transportadora = mysqli_fetch_assoc($con_transportadora);
~~~~



Formulário de confirmação de exclusão (o mesmo de alteração, com campos reduzidos)

~~~~php+html
<main>  
            <div id="janela_formulario">
                <form action="exclusao.php" method="post">
                    <h2>Exclusão de Transportadoras</h2>
                    
                    <label for="nometransportadora">Nome da Transportadora</label>
                    <input type="text" value="<?php echo $info_transportadora["nometransportadora"]  ?>" name="nometransportadora" id="nometransportadora">

                    <label for="endereco">Endereço</label>
                    <input type="text" value="<?php echo $info_transportadora["endereco"]  ?>" name="endereco" id="endereco">
                    
                    <label for="cidade">Cidade</label>
                    <input type="text" value="<?php echo $info_transportadora["cidade"]  ?>" name="cidade" id="cidade">          

                    <input type="hidden" name="transportadoraID" value="<?php echo $info_transportadora["transportadoraID"] ?>">
                    <input type="submit" value="Confirmar Exclusão">                    
                </form>   
            </div>
        </main>

~~~~

Excluindo o registro:

~~~~php
if (isset($_POST["nometransportadora"])){
        $t_id = $_POST["transportadoraID"];

        $exclusao  = "DELETE FROM transportadoras ";
        $exclusao .= " WHERE transportadoraID = {$t_id}";
        $con_exclusao = mysqli_query($conecta,$exclusao);
        if (!$con_exclusao){
            die("Falha ao excluir o registro");
        }else{
            header("Location:listagem.php");
        }
    }
~~~~



### Realizando o upload de arquivos



~~~~php+html

~~~~

