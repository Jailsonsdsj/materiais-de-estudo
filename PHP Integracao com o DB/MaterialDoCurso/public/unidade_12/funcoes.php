<?php
    //FUNÇÃO PARA GERAR NOME ÚNIDO DA IMAGEM
    function gerarCodigoUnico(){
        $alfabeto   = "123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        $tamanho    = 30;
        $letra      = "";
        $resultado  = "";

        for ($i = 1 ; $i<= $tamanho ; $i++){
            //o For irá jogar uma letra aleatória entre os caracteres 0 e 23 da variável $alfabeto durante 12 repetições
            $letra      = substr($alfabeto, rand(0,23),1);
            $resultado .= $letra;
        }

        //pegando a data e hora da região
        date_default_timezone_set('America/Recife');
        $agora = getdate();
        $codigo_data = $agora['year'] . $agora['yday']; //yday representa o dia do dano
        $codigo_data .= $agora['hours'] . $agora['minutes'] . $agora['seconds'];

        //O nome da foto será uma junção do ano, do dia, da hora, dos minutos, dos segundos e dos caracteres aleatórios gerados acima.
        return $codigo_data.$resultado;
        }
     
     //FUNÇÃO PARA PEGAR A EXTENSÃO DA IMAGEM
     function getExtensao($nome){
        return strrchr($nome,".");
    }   

    //FUNÇÃO PARA IDENTIFICAR O ERRO DE UPLOAD
    function mostrarAvisoPublicacao($numero){
        $array_erro = array(
            UPLOAD_ERR_OK => "Sem erro.",
            UPLOAD_ERR_INI_SIZE => "O arquivo enviado excede o limite definido na diretiva upload_max_filesize do php.ini.",
            UPLOAD_ERR_FORM_SIZE => "O arquivo excede o limite definido em MAX_FILE_SIZE no formulário HTML",
            UPLOAD_ERR_PARTIAL => "O upload do arquivo foi feito parcialmente.",
            UPLOAD_ERR_NO_FILE => "Nenhum arquivo foi enviado.",
            UPLOAD_ERR_NO_TMP_DIR => "Pasta temporária ausente.",
            UPLOAD_ERR_CANT_WRITE => "Falha em escrever o arquivo em disco.",
            UPLOAD_ERR_EXTENSION => "Uma extensão do PHP interrompeu o upload do arquivo."
        ); 
        return $array_erro[$numero];
        
    }

    //FUNÇÃO PARA REALIZAR O UPLOAD DE UMA IMAGEM
    function publicarArquivo($imagem){

        
         //Capturando o arquivo da pasta temporária
         
         $arquivo_temporario = $imagem['tmp_name'];
         $nome_original     = $imagem['name'];
         //O novo nome será composto pela concatenação to textpo "img_" e os novos caracteres gerados nas funções anteirores
         $nome_novo         = "img_".gerarCodigoUnico().getExtensao($nome_original);
         $nome_completo     = "images/product_images/".$nome_novo;
         
    
         //A função move_uploaded_file é responsável por mover o arquivo da pasta temporária para a permanente (uploads)
         if (move_uploaded_file($arquivo_temporario, $nome_completo)){
             
             return array("Imagem publicada com sucesso!", $nome_completo) ;
         }else{
             return array(mostrarAvisoPublicacao($imagem['error']),"");
         }

        
    }

    
?>