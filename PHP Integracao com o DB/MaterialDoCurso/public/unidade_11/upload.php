<?php require_once("../../conexao/conexao.php"); ?>
<?php require_once("funcoes.php"); ?>
<?php
    
    if(isset($_POST["enviar"])){
        $mensagem = publicarArquivo($_FILES['upload_file']);   
    }   


?>
<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Curso PHP Integração com MySQL</title>
        
        <!-- estilo -->
        <link href="_css/estilo.css" rel="stylesheet">

        <style>
            input{display:block; margin-bottom: 15px;}

        </style>
    </head>

    <body>
        <?php include_once("../_incluir/topo.php"); ?>
        <?php include_once("../_incluir/funcoes.php"); ?>  
        
        <main>  
            
            <!--O atributo enctype multipart/form-data define o formulário como upload de arquivos-->
            <form action="upload.php" method="post" enctype="multipart/form-data">

                <!--input MAX_FILE_SIZE define o tamanho máximo de upload de algum arquivo-->
                <input type="hidden" name="MAX_FILE_SIZE" value="1000000">

                <!--O tipo de input file permite que o navegador abra uma janela para no explore para selecionar arquivos-->

                <input type="file" name="upload_file">
                <input type="submit" name="enviar" value="Publicar" >
            </form>
            <?php
                //Exibindo o resultado da ação
                if(isset($mensagem)){
                    echo $mensagem;
                }
            ?>
        </main>

        <?php include_once("../_incluir/rodape.php"); ?>  
    </body>
</html>

<?php
    // Fechar conexao
    mysqli_close($conecta);
?>