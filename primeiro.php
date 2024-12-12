<html>
    <head>
        <title>Meu primeiro PHP</title>
    </head>
    <body>
<?php

//var_dump($_GET);
if (empty($_GET)) {
    echo "não vai rolar";
    header("Location: login.html");
}
elseif ( empty($_GET["nome"]) || empty($_GET["sobrenome"]) || empty($_GET["idade"]) ) {
    echo "faltou uns paranauê";
}
else {
$nome = $_GET["nome"];
$sobrenome = $_GET["sobrenome"];
$idade = $_GET["idade"];
$ano = date("Y") - $idade;


echo "<center>Hello World. Olá $nome $sobrenome</center>";
echo "<center>você nasceu em $ano. </center>";
}
?>
    
    </body>
</html>
