<?php
   //configurações gerais
   header('Acess-Control-Allow-Origin:*');

   $conecta = mysqli_connect("localhost","root","","andes");
   $selecao= "SELECT nomeproduto, precounitario, imagempequena FROM produtos";
   $produtos = mysqli_query($conecta,$selecao);

   $retorno = array();

   while($linha = mysqli_fetch_object($produtos)){
     $retorno[] = $linha;
    }
 
    //inserindo o array em um arquivo JSON
    echo json_encode($retorno);

?>


<?php
    //fechar conexão
    mysqli_close($conecta);
?>