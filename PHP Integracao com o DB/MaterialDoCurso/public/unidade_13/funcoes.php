<?php

//JOGANDO INFORMAÇÕES DO FORMULÁRIO A VARIÁVEIS
function enviarMensagem($dados){
    $nome_usuario = $_POST['nome'];
    $email_usuario = $_POST['email'];
    $mensagem_usuario = $_POST['mensagem'];


//CRIAR VARIÁVEIS DE ENVIO

//e-mail para qual os dados do fomrulário serão enviados
$destino = "jailson.junior36@hotmail.com";
//domínio do remetente, isto é, domínio do site
$remetente = "seusite@imediabrasil.coom.br";
$assunto = "mensagem do site";


//MONTAR O CORPO DA MENSAGEM
$mensagem    ="O usuário" . $nome_usuario . "enviou uma mensagem: " . "<br>";
$mensagem   .="Email do usuário: " . $email_usuario . "<br>";
$mensagem   .="Mensagem: "."<br>";
$mensagem   .=$mensagem_usuario;

//ENVIANDO A MENSAGEM (FUNÇÃO MAIL)
//esta função retornará a função mail com os seguintes parâmetros, respectivamente:
return mail($destino,$assunto,$mensagem,$remetente);

} 
?>