<?php
    $alfabeto   = "123456789abcdefghijklmnopqrstuvwxyz";
    $tamanho    = 12;
    $letra      = "";
    $resultado  = "";

    for ($i = 1 ; $i<$tamanho ; $i++){
        //o For irá jogar uma letra aleatória entre os caracteres 0 e 23 da variável $alfabeto durante 12 repetições
        $letra      = substr($alfabeto, rand(0,23),1);
        $resultado .= $letra;
    }

    echo $resultado."<br>";

    //pegando a data e hora da região
    date_default_timezone_set('America/Recife');
    $agora = getdate();
    $codigo_data = $agora['year'] . "" . $agora['yday']; //yday representa o dia do dano
    $codigo_data .= $agora['hours'] . $agora['minutes'] . $agora['seconds'];

    //O nome da foto será uma junção do ano, do dia, da hora, dos minutos, dos segundos e dos caracteres aleatórios gerados acima.
    echo "foto_".$codigo_data.$resultado;

?>