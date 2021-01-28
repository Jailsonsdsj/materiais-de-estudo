<!--Importando o código da conexão, localizado na pasta privada-->
<?php require_once("../../conexao/conexao.php"); ?>

<?php
    // Criando a consulta ao banco de dados
    $produtos = "SELECT produtoID, nomeproduto, tempoentrega, precounitario, imagempequena ";
    $produtos .=" FROM produtos ";
    $resultado = mysqli_query($conecta,$produtos); //obs: conecta é a conexão que está localizada na pasta privada
    if (!$resultado){
        die("Falha na consulta ao banco");
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
        <link href="_css/produtos.css" rel="stylesheet">
    </head>

    <body>
        <!--Importando arquivo que contém cabeçaho-->
        <?php include_once("../_incluir/topo.php"); ?>
        <!--Importando arquivo que contém as funções-->
        <?php include_once("../_incluir/funcoes.php"); ?>
        
        <main>  
            <!--o id listagem_produtos contém toda a estilização no arquivo produtos.css-->
            <div id="listagem_produtos">
                <?php
                    while ($linha = mysqli_fetch_assoc($resultado)){    
                ?>
                    <ul> 
                        <!-- Juntando o array num elemento da lista-->
                        <!-- Para exibir uma imagem em php dentro do item <li>, basta inserir o código no src da imagem: -->
                        <!-- A classe "imagem", declarada no li, contém toda a formatação no aquivo "produtos.css"-->
                        <!-- Visto isso, é possível realizar qualquer alteração nos emelentos ao redor do array em php-->
                        <li class="imagem"> <img src="<?php echo $linha["imagempequena"]?>" alt="Produto" title="Produto"></img></li>
                        <li><h3> <?php echo $linha["nomeproduto"] ?></h3></li>
                        <li>Tempo de entrega: <?php echo $linha["tempoentrega"] ?> dias</li>
                        <!--Aplicando o formato da moeda Real no preço do produto-->
                        <!--Chame a função numer_format() e insira o preço dentro do parâmero -->
                        <!--Em seguida, a quantidade de casas decimais, o símbolo divisório das unidades de milhares e o símbolo divisório das dezenas ne milhares (caso ultrapasse 9999), respectivamente-->
                        
                        <li>Preço: R$ <?php echo number_format($linha["precounitario"],2,",",".") ?> </li>
                        

                        <!--Outra forma é criar uma função em um arquivo externo e realizar essas funçõs, a fim de simplificar o código, conforme exemplo abaixo [Abrir arquivo funções.php]. Obs: NECESSÁRIO FAZER A INCLUSÃO DO ARQUIVO NO INÍCIO DO CÓDIGO-->
                        
                        <!--
                        <li>Preço: <?php// echo real_format($linha["precounitario"]) ?> </li>
                        
                        -->
                    </ul>

                <?php
                    }
                ?>
            </div>
        </main>
        <!--Importando arquivo que contém o rodapé-->         
        <?php include_once("../_incluir/rodape.php"); ?> 
    </body>
</html>

<?php
    // Fechar conexao
    mysqli_close($conecta);
?>