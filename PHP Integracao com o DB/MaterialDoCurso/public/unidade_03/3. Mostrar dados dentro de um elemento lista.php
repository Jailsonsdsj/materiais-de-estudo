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

  // PASSO 5 - Criando uma nova variável para recerber a query da consulta
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
        <ul>
            <?php
            //Para realizar a interação entre o código PHP e os elementos do HTML, é necessário fechar o código PHP para inserir o HTML
                while ( $registro = mysqli_fetch_assoc($produtos)){            
            ?>
                <!-- Mostrando os produtos da tabela dentro de uma lista não ordenada, utilizando o php com html -->
                <li><?php echo $registro['nomeproduto'] ?></li>
            
            <?php
                }

            // PASSO 7 - Encerrando a query para liberar espaço na memória
                mysqli_free_result($produtos);    
            ?>
        </ul>

    </body>
</html>

<?php
    //PASSO 3- Encerrando a conexão
    mysqli_close($conecta);
?>