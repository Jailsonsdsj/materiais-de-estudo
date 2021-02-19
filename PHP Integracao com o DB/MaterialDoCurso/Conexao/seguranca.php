<!--Iniciando a variável sessão e protegendo a página-->
<?php 
    session_start(); 

    //caso a variável session não estiver definida, o site será redirecionado para a página de login
    if (!isset($_SESSION["user_portal"])){
        header("location:login.php");
    }

?>
