# PHP Fundamental 🐘



##### **Requisitos**

- Máquina virtual
- XAMPP
- Arquivos dentro da pasta C:\xampp\htdocs
- Algum editor de texto



##### **Para abrir os arquivos**

- Ativar o Xampp
- http://localhost/Pasta_dos_arquivos/



### Comandos Iniciais

---



##### **Tag PHP**

~~~~
<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Curso PHP FUNDAMENTAL</title>
    </head>
    <body>
        <?php echo"Hi Lorena!"; ?>      
    </body>
</html>
~~~~



##### **Comentários**

~~~~
<body>
      <!-- Este é um comentário no código do HTML-->
     <?php 
       echo"Hi Lorena!"; 
        //Este é um comentário dentro da tag PHP
      ?>     
</body>
~~~~



##### **Como criar suas primeiras variáveis PHP**

~~~~
<?php 

//Esta área pode ser destinada à criação de variáveis para que o código fique mais organizado
    
    //Criando uma variável 
    $_nome = "Jailson Júnior";
    $_salario = 12800; 
?>

<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Curso PHP FUNDAMENTAL</title>
    </head>

    <body> 
    <!--Chamando a variável-->
        <p>Nome: <?php echo $_nome;?></p>
        <p>Salário: <?php echo $_salario; ?></p>
         
       
    </body>
</html>

~~~~



##### **Variáveis de Strings**

~~~~
<?php
    $_marca= "Fiat";
    $_nome = "Uno";
?>
<body>     
        <?php echo $_marca ." ". $_nome  ?>
</body>

~~~~



**Funções de Strings**

~~~~
<?php 
    $_nome = "Curso PHP Fundamental";
?>
<?php 
            // strlen - Retorna a quantidade de caracteres na string
            echo strlen($_nome);

            // stripos  - Retorna a primeira vez em que uma letra é exibida

            echo stripos($_nome,"s"); //primeira vez que o S aparece
            echo stripos($_nome,"p");//primeira vez que o P aparece
            
            // strtolower - converte para letras min.
            echo strtolower($_nome);

            // strtoupper - converte para letras min.
            echo strtoupper($_nome);

            // SUBSTR_COUNT - Quantidade de um determinado caractere dentro da String
            echo SUBSTR_COUNT($_nome, "P"); //Quantidade de P

            // de um texto ou string
            
            // Faz diferença Maiusculas e minusculas
            

~~~~



**Funções Numéricas**

~~~~
<?php 
    $_salario = 800;
    $_meses   = 3;
?>
<?php 
            // Multiplicacao e Divisao
            echo "Salário x Meses: " .$_salario * $_meses . "</br>";
            echo "Salário x 2: " .$_salario / 2 . "</br>";

            // Exponencial
            echo "Exponencial: " . pow(6,3) . "</br>";

            // Raiz Quadrada
            echo "Raiz quadrada: " . sqrt(36) . "</br>";

            // Randômico Genérica (Gerador de números aleatórios)
            echo "Randomico: " . rand() . "</br>"; 
            echo "Randomico entre 1 e 10: " . rand(1,10) . "</br>"; //vai exibir um número aleatório entre 1 e 10
            
            // Randômico entre um intervalo
            echo "Randomico no intervalo " . rand(10000,99999) . "</br>";
            
            // Valor absoluto de um número (módulo)
            echo "Valor absoluto de um número (módulo): " . abs(-200);

        ?>

~~~~



##### Testar os tipos de variáveis

~~~~
<?php
    $_salario = 1095;
    $_gasolina = 4.55;
    $_telefone = "3464-9501"
    $_fumante = True;
    $_nome = null;

?>
<?php
// Verificar se uma variável é numérica
echo "O $_salario é um número? " . is_numeric($_salario) . "</br>";
echo "O $_gasolina é um número? " . is_numeric($_gasolina). "</br>";
echo "O $_telefone é um número? " . is_numeric($_telefone) ."</br></br>";

// Verificar se uma variável é inteiro
echo "O $_salario é um número inteiro? " . is_integer($_salario). "</br>";
echo "O $_gasolina é um número inteiro? " . is_integer($_gasolina). "</br>";
echo "O $_telefone é um número inteiro? " . is_integer($_telefone). "</br></br>";

// Verificar se uma variável é float
echo "O $_salario é um número real? " . is_float($_salario) . "</br>";
echo "O $_gasolina é um número real? " . is_float($_gasolina) . "</br>";
echo "O $_telefone é um número real? " . is_float($_telefone) . "</br></br>";

//OBSERVAÇÃO: se o resultado for 1, é verdadeiro. Caso não exiba nada, é falso.


//Exibe 1 para True e vazio para False
echo "É fumante? ".$_fumante . "<br>";

//verificar se o valor da variável é booleano
echo "É boleana? ".is_bool($_fumante). "<br>";

//verificar se uma variável tem valor null
echo "Nome = ".$_nome . "<br>";

 //validar se uma varíavel é null
echo "É um valor nulo? ". is_null($_nome)."<br>";

 ?> 

~~~~



##### Arredondar variáveis

~~~~
<?php
    $_gasolina = 4.44;
?>
<?php
            // Arredondar para média
            echo round($_gasolina)."<br>";

            // Arredondar para o sucessor inteiro
            echo ceil($_gasolina)."<br>";

            // Arredondar para o antecessor inteiro
            echo floor($_gasolina)."<br>";
        ?> 

~~~~



##### ISSET

~~~~
<?php
    $_nome = "Andre";
    $_telefone = "3464-0544";
    $_fumante = false;
    $_idade = null;
?>
    <body>
        <?php
            //o isset verifica se uma variável foi declarada ou se foi ou não configurada
            echo isset($_email);
            //em casos de NULL, o resultado será o mesmo
            echo isset($_idade);
        ?>
    </body>

~~~~



##### Criando um Array na prática

~~~~
Criando um Array na prática
<?php 
    //declarando um array
    $_salada = array("Maçã","Banana","Melão","Pera","Uva");
?>
<?php 
            //exibindo um array
           echo $_salada[0]."<br>";
           echo $_salada[1]."<br>";
           echo $_salada[2]."<br>";
           echo $_salada[3]."<br>";

           //inserindo um item no array [4]
           echo $_salada[] = "Abacate". "<br>";

            //exibindo a quantidade de itens do array
           echo count($_salada). "<br>";
        ?>

 <?php
        //outra forma de exibir itens na tela
        print_r($_salada);
  ?>
~~~~



##### Funções para array

~~~~
<?php
    $_megasena = array(47,29,42,04,27,21);

    //ordenando os itens do array 
    sort($_megasena);
?>
  <?php 
        
        //forma de exibir o array por completo
          print_r($_megasena) . "<br>";  

          echo min($_megasena) . "<br>";

          echo max($_megasena) . "<br>";
        ?>

~~~~

Para mais funções do array,[Clique Aqui]()



##### Pesquisa dentro do array

~~~~
<?php
    $_salada = array("Laranja","Uva","Abacate");
?>

<?php 
        //PRIMEIRA FORMA 
        //a função in_array retorna se o elemento x está contido no array
        //in_array("ITEM",$_ARRAY);
        echo "Existe o elemento? ". in_array("Laranja",$_salada)."<br>";
        //caso exista, a função irá retornar 1
        
        //SEGUNDA FORMA
        //array_search retorna qual posição está aquele elemento
        echo "Existe o elemento? ". array_search("Abacate",$_salada)."<br>";

        ?>

~~~~



### Estrutura Condicionais

---



##### IF, IF ELSE, ELSE

~~~~
<?php 
            $_a = 5;
            $_b = 3;

            if($_a > $_b){
                echo "A é maior que B";
            }else if ($_a < $_b){
                echo "A e B são iguais";
            }else{
                "B é maior que A";
            }
        ?>
~~~~



##### SWITCH, CASE

~~~~
<?php 
           $_dia = "Quarta";

           switch ($_dia){
               case "segunda";
               echo "Hoje é segunda";
           break; //tem todo case de switch deve haver um break, exceto no default

           case "terça";
               echo "Hoje é terça";
           break;

           case "Quarta";
               echo "Hoje é quarta";
           break;

           default: //representa o "outro caso"
            echo "Folga";
           //não precisa do break, já que é a ultima opção de qualquer forma
           } 
        ?>
~~~~



##### Operador Ternário (If else compacto)

~~~~
$_idade = 17;
            //se a variável for maior que 18, a mensagem "de maior" será exibida. Os “:” representa o else, neste caso, "de menor".
            $_maioridade = ($_idade >= 18)? "de maior":"de menor";
            
            echo ($_maioridade);
~~~~



##### Operadores Lógicos

~~~~
<?php 
            $_fumante = true;

            //em valores booleanos, não é necessario inserir o == True ou == Fase nas condições do if else. O próprio PHP já identifica essa ação.
            if($_fumante){
                echo "Vc é fumanteh.";
            }else{
                echo "Vc não é fumanteh";
            }
        ?>

~~~~



##### Representações dos sinais de igual:

- = Atribuição de valor
- == Compara se o valor é igual
- === Compara se o valor é do mesmo tipo



~~~~
<?php 
            $_numero1 = 5;
            $_numero2 = "5";
            
            if ($_numero1 == $_numero2){
                echo "Os números são iguais"."<br>";       
            } //nesse caso, os números serão considerados iguais independente do tipo de caractere.

            if ($_numero1 === $_numero2){
                echo "Os números são iguais"."<br>";       
            }else{
                echo "Os números são diferentes"."<br>";
            }
        ?>

~~~~



##### Operadores Lógicos

| Exemplo    | Nome | Resultado                                                |
| ---------- | ---- | -------------------------------------------------------- |
| $a and $b  | E    | Verdadeiro (TRUE) se tanto $a quanto $b são verdadeiros. |
| $a or $b   | OU   | Verdadeiro se $a ou $b são verdadeiros.                  |
| $a xor $b  | XOR  | Verdadeiro se $a ou $b são verdadeiros, mas não ambos.   |
| ! $a       | NÃO  | Verdadeiro se $a não é verdadeiro.                       |
| $a && $b   | E    | Verdadeiro se tanto $a quanto $b são verdadeiros.        |
| $a \|\| $b | OU   | Verdadeiro se $a ou $b são verdadeiros.                  |

A razão para as duas variantes dos operandos "and" e "or" é que eles operam com precedências diferentes. 

Por exemplo, "||" tem maior precedência que "or".



Para mais informações, [clique aqui](https://www.php.net/manual/pt_BR/language.operators.precedence.php)



### Estruturas de repetição

---



##### While

~~~~
<?php                    
        $_contador = 1;
        while ($_contador <=5){
            $_sorteio = rand(1,60);
            echo  $_sorteio."<br>";
            $_contador ++;
        }
    ?>

~~~~



##### Do While

~~~~
<?php                    
        $_contador = 1;
       do{
            $_sorteio = rand(1,60);
            echo  $_sorteio."<br>";
            $_contador ++;
        } while ($_contador <=5);
    ?>

~~~~



##### For

~~~~
<?php             
    //EM ORDEM CRESCENTE
        $_contador = 1;
        //variável = valor de início ; variável <= valor final; variável ++ (contador)
        for ($_contador = 1; $_contador <= 5;  $_contador++){

            $_sorteio = rand(1,60);
            echo $_sorteio."<br>";
        }
    ?>
   <?php                    
    //EM ORDEM DECRESCENTE
    $_contador = 5;
    //variável = valor de início ; variável <= valor final; variável ++ (contador)
    for ($_contador = 5; $_contador >= 1;  $_contador--){

        $_sorteio = rand(1,60);
        echo $_sorteio."<br>";
    }
    ?>

~~~~



##### Foreach

~~~~
<?php                    
        $_salada = array ("Laranja","Uva","Abacate","Maça","Melão");

        //necessário inserir o count(array) para que os itens sejam exibidos de acordo com a quantidade
        for ($_i = 0; $_i < count($_salada) ; $_i ++){
            echo $_salada[$_i] . "<br>";
            
        }
//EXIBINDO O ARRAY COM O FOREACH
        foreach($_salada as $_frutas){
            echo $_frutas."<br>";
        }
    ?>
~~~~



##### Segundo método

~~~~
<?php                    
        $_cadastro = array("Nome" => "Adilson",
                            "Telefone" => "8199959-0878",
                            "Salario" => 2200.0,
                            "Sexo" => "Masculino",
                            "Empregado" => false);
        //O array cadastro serve como variável principal, enquanto as variáveis $_dados e $_valores funcionam como parâmetros para que as duas colunas sejam exibidas.                   
        foreach($_cadastro as $_dados => $_valor){
            echo $_dados.": ".$_valor."<br>";
        }
    ?>
~~~~



##### Projeto Megasena

~~~~
<?php  
        $_sort = array();
        $_count = 0;
        $_n=0;

        for ($_count=0; $_count<=5; $_count++){
            $_n = rand(1,60);
            if (in_array($_n,$_sort)){
                $_count--;
            }else{
                $_sort[$_count]=$_n; 
            }
        }  
        echo("Os números sorteados foram: |");
        foreach($_sort as $_resultado){    
            echo($_resultado." | ");
        }     
        
        /*Explicando o código
        - Contador iniciado para sortear números aleatórios 6 vezes
        - A variável n recebe um valor aleatório entre 1 e 60 (não pode zero)
        - Se o valor inserido na variável n também já estiver no array sort
        - Contador recebe -- (menos um laço) para que possa repetir novamente
        - Caso contrário, o array sort receberá o valor contido na variável n
        - Por fim será exibido os valores do array
        */
           
        ?>

~~~~



##### Funções

~~~~
<?php 
        function retornarDiaria(){
            return number_format(1900/30,2); //,2 representa duas casas decimais após a vírgula (ponto)
        }
        echo retornarDiaria();
    ?>

~~~~



##### Funções com parâmetros

~~~~
    <?php 
	//Função para calcular a diária de um assalariado 
        function retornarDiaria($_a,$_b){
            $_c=$_a+$_b;

            return  $_c;   
             }
        echo retornarDiaria(500,1000) ."<br>";
        echo retornarDiaria(200,300) ."<br>";

    ?>
<?php 
    //Função para converter celsius para fahrenheit
    //((0 °C × 9/5) + 32 = 32 °F
    function converterFahrenheit($_f){
        return ($_f * 9/5) + 32;
        }
    echo converterFahrenheit(5);
    ?>

~~~~



##### Getdate

~~~~
<?php
        //determinando o horário local
        date_default_timezone_set('America/Recife');
        $_agora = getdate();
        
        //Criar elementos

        $_segundo = $_agora["seconds"];
        $_minuto = $_agora["minutes"];
        $_hora = $_agora["hours"];
        $_semana = $_agora["wday"]; 
        $_dia = $_agora['mday'];
        $_mes = $_agora['mon'];
        $_ano = $_agora['year'];

        //Mostrar na tela 
        echo $_dia."de".$_mes ."de".$_ano."-".$_hora.":".$_minuto.":".$_segundo;
        ?>
~~~~

Mais informações [clique aqui](https://www.php.net/manual/en/function.getdate.php)

Deixando o nome do mês e da semana em português, [clique aqui](https://www.php.net/manual/en/function.strftime.php)




~~~~
<?php
       //importando o set locale para traduzir os nomes para o português

        setlocale(LC_TIME,"portuguese");
        date_default_timezone_set('America/Recife');
        $_agora = getdate();
        
        //Criar elementos
        $_segundo = $_agora["seconds"];
        $_minuto = $_agora["minutes"];
        $_hora = $_agora["hours"];
        $_semana = strftime('%A'); //Traz o dia da semana. Necessario o setlocale para deixar em português
        $_dia = $_agora['mday'];
        $_mes = strftime('%B');
        $_ano = $_agora['year'];

        //Mostrar na tela 
        echo ucfirst ($_semana).", ".$_dia." de ".ucfirst ($_mes) ." de ".$_ano." - ".$_hora.":".$_minuto.":".$_segundo;
        //ucfirst - Deixa a primeira letra maiúsucla
        ?>
    <body>

~~~~



##### DIFF

O DIFF é uma função fundamental para tratar controles de acesso, pagamento, expiração etc, através da data-hora.

Ex.: Data do último pagamento para data atual

~~~~
<?php
            
            $_data1 = new DateTime("2020-01-01");
            $_data2 = new Datetime("2020-11-20");

            //a função diff determina o intervalo de tempo entre a primeira e segunda data
            $_intervalo = $_data1->diff($_data2);
        ?>

        <pre><?php
            //RETORNANDO OS DADOS

            //Dados completo:
            print_r($_intervalo);

            //Dados específicos (através da tabela dos dados completos):
            print_r("<br>".$_intervalo->format("%m")); //traz o mês
            print_r("<br>".$_intervalo->format("%d")); //traz o dia
            print_r("<br>".$_intervalo->format("%a")); //traz os dias

        ?></pre>

~~~~

Para mais informações, [Clique aqui](https://www.php.net/manual/pt_BR/datetime.diff.php)



##### Links com parâmetro



Arquivo: inicial.php

~~~~
<body>  
        <ul>
        <!--COMO FAZER UM LINK COM PARÂMETRO-->
        <!--Os links com parâmetro servem para automatizar a forma em que as páginas html são ligadas-->
            <li><a href="destino.php?codigo=0">Laranja</a></li>
            <li><a href="destino.php?codigo=1">Maça</a></li>
            <li><a href="destino.php?codigo=2">Abacate</a></li>
        </ul> 
        <!--A ? após o .php representa a declaração de uma variável dentro do link, ou seja, codigo-->
        <!--A variável será chamada no arquivo destino.php-->      
    </body>

~~~~



Arquivo: destino.php

~~~~
<body> 
        <?php
            //A variável destino foi criada para receber o valor da variável código declarada no html do arquivo inicial.php
            $_destino = $_GET["codigo"];
            echo $_destino;
        ?>
    </body>

~~~~



##### Mostrar informações do formulário na prática

~~~~
<body> 
        <?php
            //um array é criado para receber o caminho de todas as imagens
            $_salada = array("imagens/laranja.jpg","imagens/maca.jpg","imagens/abacate.jpg");

            $_destino = $_GET["codigo"];
            echo $_salada[$_destino];
        ?>
    
    <img src="<?php echo $_salada[$_destino]; ?>">
    </body>

~~~~



##### Exemplo prático: ligando as páginas via PHP

~~~~
<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>INDEX</title>

        <style>
            a{text-decoration:none;}
        </style>    
    </head>
    <body> 
        <ul>    
            <!--Ao invés de criar links para cada página, basta criar uma variável que remeta ao arquivo conexao.php
                Neste caso, a variável i foi criada para receber os índices referentes a cada página / imagem-->
            <li><a href="conexao.php?i=0"> Lady Gaga </a></li>
            <li><a href="conexao.php?i=1"> rihanna </a></li>
            <li><a href="conexao.php?i=2"> lana del rey </a></li>
            <li><a href="conexao.php?i=3"> lorde </a></li>
        </ul>
    </body>
</html>
~~~~



##### No arquivo PHP:

~~~~
<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>CONEXAO PHP</title>
    </head>

    <body> 
       <?php
            //uma array foi criado com o endereçamento de cada imagem
            $_imagens=array("imagens/lady gaga.png","imagens/rihanna.png","imagens/lana del rey.png","imagens/lorde.png");
            //após isso, basta pegar a variável criada com as referências na página HTML e jogar em uma nova variável.
            $_i=$_GET['i'];
            
        ?>     
        
        <!-- Por fim, para exibir as imagens, cria-se uma tag img chamando o array com o índice dos links html-->
        <img src="<?php echo $_imagens[$_i]; ?>">
    
    </body>

</html>

~~~~



##### Enviando os dados do formulário com o atributo GET no HTML/PHP

~~~~
<form action="/action_page.php" method="get">
  <label for="fname">First name:</label>
  <input type="text" id="fname" name="fname"><br><br>
  <label for="lname">Last name:</label>
  <input type="text" id="lname" name="lname"><br><br>
  <input type="submit" value="Submit">
</form>
~~~~

Obs: os dados são enviados via URL



##### Resgatar informações do formulário

No arquivo “Formulario.php”

~~~~
<!-- O method post foi usado para ocultar as informações enviadas via URL-->
        <form action="destino.php" method="post">
            <label for="nome">Nome Completo</label>
            <input type="text" name="nome" id="nome">
            
            <label for="email">Email</label>
            <input type="text" name="email" id="email">

            <label for="senha">Senha</label>
            <input type="password" name="senha" id="senha">

            <input type="submit" value="Enviar Cadastro">
        </form>

~~~~



No arquivo “destino.php”

~~~~
<body> 
        <pre>
            <?php
                //Exibindo todos os dados
                print_r($_POST);
            ?>
        </pre>
    <?php
        //Exibindo dados específicos
        echo $_POST["nome"]."<br>";
        echo $_POST["email"]."<br>";
    ?>
</body>
~~~~



##### Identificação do recebimento

~~~~
<body> 
        <pre>
            <?php
                //Exibindo todos os dados (apenas para fins acadêmicos)
                print_r($_POST);
            ?>
        </pre>
    <?php
        //Se o nome estiver preenchido, os dados serão jogados em uma variável para que, em seguida, sejam exibidos na tela.
        if (isset($_POST['nome'])){
            $_nome=$_POST["nome"];

        }else{
            $_nome="Dado não informado";
        }

        if (isset($_POST['email'])){
            $_email = $_POST['email'];
            echo $_email;
        }else{
            $_email="Dado não informado";
        }

        //Exibindo os resultados
        echo "Nome: ".$_nome."<br>";
        echo "Email: ".$_email."<br>";
    ?>
    </body>

~~~~



##### Identificar o operador ternário

~~~~
<?php

        //Forma simplificada do método anterior
        $_nome=isset($_POST["nome"]) ? $_POST["nome"]:"Dado não informado";
        $_email=isset($_POST["email"]) ? $_POST["email"]:"Dado não informado";

        //Exibindo os resultados
        echo "Nome: ".$_nome."<br>";
        echo "Email: ".$_email."<br>";
    ?>

~~~~



##### Form

~~~~
<?php
    //pegando os dados do subimit do formulário abaixo
    if(isset($_POST['nome'])){
        //forma reduzida do if else para exibir os dados na tela
        $_nome=isset($_POST["nome"]) ? $_POST["nome"]:"Dado não informado";
        $_email=isset($_POST["email"]) ? $_POST["email"]:"Dado não informado";
       
    }
    

?>

<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Curso PHP FUNDAMENTAL</title>
        <link href="_css/estilo.css" rel="stylesheet">

        <style>
            #senha{
                border:1px solid #ccc;
                padding:10px;
                margin-bottom:20px;
                outline:none;
                width:200px;
            }

        </style>

    </head>

    <body>
        <!-- Neste caso, os dados serão enviados para esta mesma página-->
        <?php
            //um if negativo foi inserido. A ! define a negatividade
            if(!isset($_POST["formulario"])){ //ainda não entendi a lógica dessa parte, mas serve como um if else ao contrário para verificar se o formulário foi preenchido
        ?>
            <form action="formulario2.php" method="post">

                <label for="nome">Nome Completo</label>
                <input type="text" name="nome" id="nome">
                
                <label for="email">Email</label>
                <input type="text" name="email" id="email">

                <label for="senha">Senha</label>
                <input type="password" name="senha" id="senha">

                <input type="submit" name="formulario" value="Enviar Cadastro">
            </form>
        <?php
        }else{
            echo "Nome: ".$_nome."<br>";
            echo "Email: ".$_email."<br>";
        }
        ?>
    </body>
</html>

~~~~