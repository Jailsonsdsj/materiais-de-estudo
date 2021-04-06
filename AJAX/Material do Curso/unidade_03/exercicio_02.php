<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>PHP com AJAX</title>
    </head>

    <body>
        <div id="usuario">

        </div>

        <script src="jquery.js"></script>
        <script>
            $.ajax({
                url:'nome.php' //não utilizar ; 
                //nome.php é o arquivo no qual o código php será importado para esta página e inserido na div nome
            }).then(sucesso, falha); //basicamente then é um if else que irá chamar uma das duas funções, dependendo do resultado.

            function sucesso(valor){//a variável valor receberá como parâmetro o resultado de nome.php
                $('div#usuario').html(valor);
            }
            //função para exibir uma possível falha
            function falha(){
                $('div#usuario').html("Falha no Carregamento");
            }
        </script>
    </body>
</html>