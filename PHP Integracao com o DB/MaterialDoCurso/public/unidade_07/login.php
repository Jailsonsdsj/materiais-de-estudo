<?php require_once("../../conexao/conexao.php"); ?>
<?php
    if (isset($_POST["usuario"])){
        $usuario = $_POST["usuario"];
        $senha = $_POST["senha"];

        //REALIZANDO O FILTRO NO BANCO DE DADOS
        $login = " SELECT * FROM clientes WHERE usuario = '{$usuario}' and senha = '{$senha}' ";

        //ATRIBUINDO OS RESULTADOS À VARIÁVEL ACESSO
        $acesso = mysqli_query($conecta,$login);

        //TESTANDO CONEXÃO
        if (!$acesso){
            die ("Falha na consulta ao banco de dados");
        }

        $informacao = mysqli_fetch_assoc($acesso);

        //VALIDANDO DADOS(CASO O USUÁRIO NÃO SEJA ENCONTRADO). 
        if (empty($informacao)){
            $mensagem = "Usuário não localizado.";
        }else{
            //SE FOR ENCONTRADO, SERÁ REDIRECIONADO PARA A PÁGINDA DE LISTAGEM
            header("location:listagem.php");
        }
    }
  
?>


<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Curso PHP Integração com MySQL</title>
        
        <!-- estilo -->
        <link href="_css/login.css" rel="stylesheet">
        <link href="_css/estilo.css" rel="stylesheet">
        

    </head>

    <body>
        <?php include_once("../_incluir/topo.php"); ?>
        <?php include_once("../_incluir/funcoes.php"); ?>
        
        
        <main>  
            <div id="janela_login">
                <!--necessário usar o moethod post, pois o GET exibe as informações na barra de endereço-->
                <form action="login.php" method="post">
                    <h2>Tela de Login</h2>
                    <input type="text" name="usuario" placeholder="Usuário">
                    <input type="password" name="senha" placeholder="Senha" >
                    <input type="submit" value='Login'>

                    <!--Exibindo a mensagem de erro-->
                    <?php   
                        //se a variável mensagem foi definida:
                        if (isset($mensagem)){   
                    ?>
                        <p><?php echo $mensagem ?></p>

                    <?php
                        }
                    ?>

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