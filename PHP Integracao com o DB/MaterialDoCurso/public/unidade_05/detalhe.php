<?php require_once("../../conexao/conexao.php"); ?>

<?php
    //TESTANDO O PARÂMETRO
    //recebendo o código através do método GET (já que os dados estão sendo enviados via URL)
    if( isset($_GET["codigo"]) ){
        $produtoID = $_GET["codigo"];
    }else{
        //Caso o usuário entre direto na página de detalhe (esta página), ele será redirecionado para a página de listagem
        Header("Location: listagem.php");
    }

    //CONSULTA AO BANCO DE DADOS

    $consulta = "SELECT * ";
    $consulta .= " FROM produtos ";
    $consulta .= " WHERE produtoID = {$produtoID}"; 
    //o produtoID, após o WHERE, refere-se ao ID do banco de dados, que serviu de parâmetro para o link da imagem no arquivo listagem.php
    //Já variável produtoID é referente ao produtoID localizado acima.
    //Vale lembrar que a variável $conecta é referente a conexão com o banco, localizado na pasta privada
    $detalhe = mysqli_query($conecta,$consulta);

    //Realizando o teste de conexão
    if (!$detalhe){
        die("Falha no banco de dados");
    }else{
        //caso esteja tudo OK, todo o array acima será jogado para a variável $dados_detalhe
        //Lembrando que a função assoc
        $dados_detalhe=mysqli_fetch_assoc($detalhe);

        //Criação e atribuição de variáveis para ser inserida de forma organizada no HTML
        $produtoID      = $dados_detalhe["produtoID"];
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


<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Curso PHP Integração com MySQL</title>
        
        <!-- estilo -->
        <link href="_css/estilo.css" rel="stylesheet">
        <link href="_css/produto_detalhe.css" rel="stylesheet">
    </head>

    <body>
        <?php include_once("../_incluir/topo.php"); ?>
        <!--chamando a função real_format-->
        <?php include_once("../_incluir/funcoes.php"); ?> 
        
        <main>  
            <!--Criando a listagem detalhada dos produtos-->
           <div id="detalhe_produto">
                <ul>
                    <li class="imagem"> <img src="<?php echo $imagemgrande ?>"></li>
                    <li><h2>Nome: <?php echo $nomeproduto ?></h2></li>
                    <li>Descrição: <?php echo $descricao ?></li>
                    <li>Código de Barra: <?php echo $codigobarra ?></li>
                    <li>Tempo de Entrega: <?php echo $tempoentrega ?> dias.</li>
                    <!-- A função real format faz está localizada no arquivo funções-->
                    <li>Preço Revenda: <?php echo real_format($precovenda) ?></li>
                    <li>Preço Unitário: <?php echo real_format($precounitario) ?></li>
                    <li>Estoque: <?php echo $estoque ?></li>
                   
                </ul>
           </div>
        </main>

        <?php include_once("../_incluir/rodape.php"); ?>
    </body>
</html>

<?php
    // Fechar conexao
    mysqli_close($conecta);
?>