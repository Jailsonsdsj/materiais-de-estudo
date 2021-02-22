<?php require_once("../../conexao/conexao.php"); ?>
<?php


    // CRIANDO A CONSULTA NO BANCO DE DADOS PARA SER EXIBIDA NA TELA DE LOGIN
    $tr = "SELECT * ";
    $tr .=" FROM transportadoras ";
    if(isset($_GET["codigo"])){
        $id = $_GET["codigo"];
        // o ID do código do produto será atribuído à query
        $tr .= "WHERE transportadoraID = {$id} "; 
    }else{
        //Caso o usuário acesse diretamente a página alteração, sem clicar em algum produto, ele será redirecionado para o produtoi de código 1
        $tr .= "WHERE transportadoraID = 1 ";
    }

    $con_transportadora = mysqli_query($conecta,$tr);
    if(!$con_transportadora){
        die("Falha na consulta");
    }

    //PREENCHENDO OS CAMPOS DO FORUMLÁRIO AUTOMATICAMENTE
    //Esse array será jogado no value de cada campo do formulário
    $info_transportadora = mysqli_fetch_assoc($con_transportadora);

    //Preenchendo o campo Select (estados)
    $estados = "SELECT * FROM estados";
    //essa variável será jogana no mysqli_fetch_assoc do campo value
    $lista_estados = mysqli_query($conecta,$estados);
    if (!$lista_estados){
        die ("Falha na consulta ao banco de dados");
    }

    //RECEBENDO AS INFORMAÇÕES ALTERADAS NO FORMULÁRIPO
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
                <form action="alteracao.php" method="post">
                    <h2> Alteração de Transportadoras </h2>
                    <!--O label é responsável por focar o título do campo, a área de preenchimento-->
                    <label for="nometransportadora">Nome da Transportadora</label>
                    <!-- O value representa as informações do banco de dados e jogadas nos campos de alterações-->
                    <input type="text" value="<?php echo $info_transportadora["nometransportadora"]; ?> " name="nometransportadora" id="nometransportadora">

                    <label for="endereco">Endereço</label>
                    <input type="text" value="<?php echo $info_transportadora["endereco"]; ?>" name="endereco" id="endereco">

                    <label for="cidade">Cidade</label>
                    <input type="text" value="<?php echo $info_transportadora["cidade"]; ?>" name="cidade" id="cidade">

                    <label for="estados">Estado</label>
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

                    </select>

                    <label for="cep">CEP</label>
                    <input type="text" value="<?php echo $info_transportadora["cep"]; ?>" name="cep" id="cep">

                    <label for="telefone">Telefone</label>
                    <input type="text" value="<?php echo $info_transportadora["telefone"]; ?>" name="telefone" id="nometransportadora">

                    <label for="cnpj">CNPJ</label>
                    <input type="text" value="<?php echo $info_transportadora["cnpj"]; ?>" name="cnpj" id="nometranspocnpjrtadora">

                    <!--Campo de tipo oculto apenas para identificar a chave estrangeira-->
                    <input type="hidden" name="transportadoraID" value="<?php echo $info_transportadora["transportadoraID"]; ?>">

                    <input type="submit" name="salvar" placeholder="Salvar">


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