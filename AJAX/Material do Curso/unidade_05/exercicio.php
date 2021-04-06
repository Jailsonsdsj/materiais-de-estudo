<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="_css/estilo.css">
        <title>PHP com AJAX</title>

    </head>

    <body>
        <button id="botao">Carregar JSON</button>
        <div id="listagem">
            <!--Aqui entrará a listagem-->
        </div>

        <script src="jquery.js"></script>
        <script>

            $('button#botao').click(function(){
                $('div#listagem').css('display','block');
                carregarDados();
            });
            //função para carregar os dados por meio de um botão
            function carregarDados(){
                $.getJSON('_json/produtos.json',function(valor){
                    let elemento;
                    elemento = "<ul>";
                    $.each(valor, function(i,lista){
                        elemento += "<li class='nome'>" + lista.nomeproduto + "</li>";
                        elemento += "<li class='preco'>" + lista.precounitario + "</li>";
                        elemento += "<br>";
                    });
                    elemento += "<ul>";
                
                    //jogando os dados na div
                    $('div#listagem').html(elemento);

                });
            }
            
        </script>
    </body>
</html>