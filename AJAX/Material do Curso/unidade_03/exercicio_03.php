<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>PHP com AJAX</title>
    </head>

    <body>
        <div id="mensagem"></div>
        <div id="usuario"></div>
        

        <script src="jquery.js"></script>
        <script>
           $.ajax({
               url:'nomes.php'
           }).done(function(valor){  //utilizando a função done, em caso de sucesso
               $('div#usuario'.html(valor));
           }).fail(function(){ //Caso ocorra algum erro
                $('div#usuario'.html("Falha no carregamento"));
           }).always(function(){ //a função always é executada independente de erro ou sucesso
                $('div#mensagem').html("Bem vindo,");
           })
        </script>
    </body>
</html>