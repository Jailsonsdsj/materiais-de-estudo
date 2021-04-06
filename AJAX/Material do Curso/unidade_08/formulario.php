<?php
    // Criar objeto de conexao
    $conecta = mysqli_connect("localhost","root","","andes");
    if ( mysqli_connect_errno()  ) {
        die("Conexao falhou: " . mysqli_connect_errno());
    }

    // selecao de estados
    $select = "SELECT estadoID, nome ";
    $select .= "FROM estados ";
    $lista_estados = mysqli_query($conecta, $select);
    if(!$lista_estados) {
        die("Erro no banco");
    }
?>

<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>PHP com AJAX</title> 
        
        <link href="_css/estilo.css" rel="stylesheet">
    </head>

    <body>
        <main>  
            <div id="janela_formulario">
                <!--Note que neste formulário não há action nem method, pois ele será definido no código ajax-->
                <form id="formulario_transportadora">
                    <label for="nometransportadora">Nome da Transportadora</label>
                    <input type="text" name="nometransportadora" id="nometransportadora">

                    <label for="endereco">Endereço</label>
                    <input type="text" name="endereco" id="endereco">

                    <label for="cidade">Cidade</label>
                    <input type="text" name="cidade" id="cidade">

                    <select name="estados">
                        <?php
                            while($linha = mysqli_fetch_assoc($lista_estados)) {
                        ?>
                            <option value="<?php echo $linha["estadoID"];  ?>">
                                <?php echo utf8_encode($linha["nome"]);  ?>
                            </option>
                        <?php
                            }
                        ?>                        
                    </select>
                    
                    <input type="submit" value="Confirmar inclusão">  
                    
                    <div id="mensagem">
                        <p></p>
                    </div>
                </form> 
                
            </div>
        </main>
        
        <script src="jquery.js"></script>
        <script>
            $('#formulario_transportadora').submit(function(e){
                
                e.preventDefault();//serve para que o action do form não seja ativado, caso exista.

                //Identificando os dados do formulário e enviando para o insert
                let formulario = $(this);
                let retorno = inserirFormuilario(formulario);
                
            });

            function inserirFormuilario(dados){
                $.ajax({
                    type:"POST", //método de enivo (get or post)
                    data:dados.serialize(), //função pré definidia do ajax que captura a variável do parâmetro
                    url:"inserir_transportadora.php", //página em que as informações serão enviadas
                    async: false, //Tipo da requisição(síncrona ou assíncrona)
                }).then(sucesso,falha); //chamada das funções de retorno.

                function sucesso(data){
                    $situacao = $.parseJSON(data)['situacao']; //array incrementado na página inserir_transportadora.php
                    $mensagem = $.parseJSON(data)['mensagem'];
                    $('#mensagem').show(); //A div com display none agora será exibida contendo uma das seguintes informações:

                    if($situacao){
                        $('#mensagem').html($mensagem);
                    }else{
                        $('#mensagem').html($mensagem);
                    }
                }



                function falha(){
                    console.log('falha');
                }

                
            }
        </script>
    </body>
</html>