<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <!--Incluindo o código de outro arquivo-->
    <?php 
        require("curso1.php");
        echo "<br>";
        require_once("Curso1.php");
    ?>
</body>
</html>