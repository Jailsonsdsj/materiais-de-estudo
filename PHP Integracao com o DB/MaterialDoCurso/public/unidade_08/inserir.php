<?php require_once("../../conexao/conexao.php"); ?>
<?php
    //INSERINDO DADOS NO BANCO
        //jogando os dados do forumário em variáveis
    if (isset($_POST["nometransportadora"])){
        $nome       = $_POST["nometransportadora"];
        $endereco   = $_POST["endereco"];
        $cidade     = $_POST["cidade"];
        $estados    = $_POST["estados"];
        $cep        = $_POST["cep"];
        $cnpj       = $_POST["cnpj"];
        $telefone   = $_POST["telefone"];

        //inserindo
        $inserir    =" INSERT INTO transportadoras VALUES ";
        $inserir   .=" (null, '$nome','$endereco','$cidade',$estados,'$cep','$cnpj','$telefone')";


        $operacao_inserir = mysqli_query($conecta,$inserir);

        //verificando casos de erro
        if(!$operacao_inserir){
            die("Falha ao cadastrar transportadoras");
        }
    }


    //SELECT DOS ESTADOS
    $select = "SELECT estadoID, nome, sigla FROM estados";
    $lista_estados = mysqli_query($conecta,$select);
    if (!$lista_estados){
        die("Erro no banco de dados");
    }

?>



<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Curso PHP Integração com MySQL</title>
        
        <!-- estilo -->
        <link href="_css/estilo.css" rel="stylesheet">
        <!-- CSS do formulário -->
        <link href="_css/crud.css" rel="stylesheet">
    </head>

    <body>
        <?php include_once("../_incluir/topo.php"); ?>
        <?php include_once("../_incluir/funcoes.php"); ?> 
        
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

        <?php include_once("../_incluir/rodape.php"); ?>  
    </body>
</html>

<?php
    // Fechar conexao
    mysqli_close($conecta);
?>