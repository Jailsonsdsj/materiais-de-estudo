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



