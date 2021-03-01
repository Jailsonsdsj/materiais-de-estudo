<?php
    $arquivo = "fot.png o.jpg.png";
    //a função strrchr pegará o os caracteres a partir do último ponto no nome do arquivo. Ou seja, a extensão.
    echo strrchr($arquivo,".");

?>