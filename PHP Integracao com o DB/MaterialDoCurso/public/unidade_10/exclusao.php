<?php require_once("../../conexao/conexao.php"); ?>
<?php
    //Realizando a exclusão (Passo 2)
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
    
    
    
    //Consulta a tabela de transportadoras (passo 1)
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
    
    


?>
<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Curso PHP Integração com MySQL</title>
        
        <!-- estilo -->
        <link href="_css/estilo.css" rel="stylesheet">
        <link href="_css/alteracao.css" rel="stylesheet">
    </head>

    <body>
        <?php include_once("../_incluir/topo.php"); ?>
        <?php include_once("../_incluir/funcoes.php"); ?> 
        
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

        <?php include_once("../_incluir/rodape.php"); ?>  
    </body>
</html>

<?php
    // Fechar conexao
    mysqli_close($conecta);
?>