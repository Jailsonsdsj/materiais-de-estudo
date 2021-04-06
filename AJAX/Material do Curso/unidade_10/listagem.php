<?php
    // Criar objeto de conexao
    $conecta = mysqli_connect("localhost","root","","andes");
    if ( mysqli_connect_errno()  ) {
        die("Conexao falhou: " . mysqli_connect_errno());
    }

    // tabela de transportadoras
    $tr = "SELECT * FROM transportadoras ";
    $consulta_tr = mysqli_query($conecta, $tr);
    if(!$consulta_tr) {
        die("erro no banco");
    }
?>

<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Curso PHP INTEGRACAO</title>
        
        <!-- estilo -->
        <link href="_css/estilo.css" rel="stylesheet">
    </head>

    <body>        
        <main>  
            <div id="janela_transportadoras">
                <?php
                    while($linha = mysqli_fetch_assoc($consulta_tr)) {
                ?>
                <ul>
                    <li><?php echo utf8_encode($linha["nometransportadora"]) ?></li>
                    <li><?php echo utf8_encode($linha["cidade"]) ?></li>
                    <li><a href="" class="excluir" title="<?php echo ($linha['transportadoraID']); ?>">Excluir</a></li>
                </ul>
                <?php
                    }
                ?>
            </div>
        </main>

        
        <script src="jquery.js"></script>
        <script>
            $('#janela_transportadoras ul li a').click(function(e){
                e.preventDefault();
                

                let id = $(this).attr("title");
                let elemento = $(this).parent().parent() ; //responsável por ocultar a linha que foi removida do banco de dados. O paret (jQuery) é utilizado para andentrar entre os elementos do HTML até chegar no link <a>. Ao jogar o this na variável, o elemento encontrado - no caso, o <a> - será salvo.

                $.ajax({
                    type:"POST",
                    data: "transportadoraID=" + id, //mesmo nome do campo do banco / não pode haver espaços
                    url: "exclusao.php",
                    async: false
                }).done(function(data){
                    $sucesso = $.parseJSON(data)["sucesso"];

                    if ($sucesso){
                        $(elemento).fadeOut();
                    }else{
                        console.log("Erro na exclusão");
                    }

                }).fail(function(){
                    console.log("Erro no sistema");
                });
            });
        </script>
    </body>
</html>

<?php
    // Fechar conexao
    mysqli_close($conecta);
?>