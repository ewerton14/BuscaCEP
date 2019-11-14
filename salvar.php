<table>
	<tr>
		<td><a href="index.php">Home</a></td>
		<td><a href="ver.php">Ver salvos</a></td>
	</tr>
</table>
<?php 
include("banco.php");
$cep =          $_POST['cep'];
$rua =          $_POST['rua'];
$bairro =       $_POST['bairro'];
$cidade =       $_POST['cidade'];
$estado =       $_POST['uf'];
$sql = "INSERT INTO  consultaCEP (cep, rua, bairro, cidade, estado)
        VALUES ('$cep', '$rua', '$bairro', '$cidade', '$estado');";
    
    $res = mysqli_query($con, $sql);
    if($res){
        echo "Salvo com sucesso!";
    }else{
        echo "Erro ao Salvar";
    }
    mysqli_close($con);
?>