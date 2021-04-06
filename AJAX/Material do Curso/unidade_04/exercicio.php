<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>PHP com AJAX</title>
        
    </head>

    <body>
        <button type="submit" onclick="carregarDados()" id="botao">Carregar Dados</button>
        <div id="listagem"></div>
        
        <script src="jquery.js"></script>
        <script>
            $('button#botao').click(function(){
                carregarDados()
            });

            function carregarDados(){
                $.ajax({
                    url:'_xml/produtos.xml'
                }).then(sucesso,falha);

                function sucesso(arquivo){
                var elemento;
                elemento = "<ul>";
                $(arquivo).find('produto').each(function(){
                    let nome = $(this).find('nomeproduto').text(); //os elementos nomeproduto serão atribuídos a uma variável e exibidos em uma lista não-ordenada
                    
                    let preco = $(this).find('precounitario').text();
                    elemento += "<li>" + nome + " - R$ " + preco+  "</li>";
                });
                elemento +="</ul>";
                    $('div#listagem').html(elemento);
                }

                function falha(){
                    console.log("Falha ao carregar o arquivo");
                }
            }
        </script>
    </body>
</html>