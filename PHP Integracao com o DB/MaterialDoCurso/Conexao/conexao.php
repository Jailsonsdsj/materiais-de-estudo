<?php 
    //este código deverá ser importado sempre que a conexão com o banco de dados for necessário
    $servidor = "localhost";
    $usuario = "root";
    $senha = "";
    $banco = "andes";
    $conecta = mysqli_connect($servidor,$usuario,$senha,$banco); 


    if ( mysqli_connect_errno()){
        die("Conexão falhou: ".mysqli_conect_errno());
    }
?>

