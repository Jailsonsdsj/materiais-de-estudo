<!---require de conexão com o bd-->
<?php require_once("../../conexao/conexao.php"); ?>
<!--require de segurança-->
<?php require_once("../../conexao/seguranca.php");?>

<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Curso PHP Integração com MySQL</title>
        
        <!-- estilo -->
        <link href="_css/estilo.css" rel="stylesheet">
    </head>

    <body>
        <?php include_once("../_incluir/topo.php"); ?>
        <?php include_once("../_incluir/funcoes.php"); ?>
        
        <main>  
            <?php
                //REMOVE A VARIÁVEL SESSION MENCIONADAS
                unset($_SESSION["usuario"]);
                
                //DESTROI TODAS AS VARIÁVEIS DE SESSÃO DO PROJETO
                session_destroy();

            ?>
            
          
        </main>

        <?php include_once("../_incluir/rodape.php"); ?>  
    </body>
</html>

<?php
    // Fechar conexao
    mysqli_close($conecta);
?>