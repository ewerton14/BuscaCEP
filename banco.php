<?php 
    $host = 'localhost';
    $user = 'root';
    $pass = '';
    $db   = 'sistemacep';
    
    // conexão e seleção do banco de dados
    $con = mysqlI_connect($host, $user, $pass, $db);
    if(!$con){
        echo "Erro ao conectar com o banco de dados";
    }
?>