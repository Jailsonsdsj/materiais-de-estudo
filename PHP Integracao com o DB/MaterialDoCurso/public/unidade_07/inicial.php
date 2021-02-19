<!---require de conexão com o bd-->
<?php require_once("../../conexao/conexao.php"); ?>
<!--require de segurança-->
<?php require_once("../../conexao/seguranca.php");?>

<?php
    //iniciar a sessão de login. Esta função precisa estar aberta em todas as páginas do projeto
    session_start();

    //Criar uma variável de sessão
    $_SESSION["usuario"] = "Junior";

?>


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
                echo $_SESSION["usuario"];   
            ?>
            <p><a href="pagina1.php">Página 1</a></p>
        </main>

        <?php include_once("../_incluir/rodape.php"); ?>  
    </body>
</html>

<?php
    // Fechar conexao
    mysqli_close($conecta);
?>