<table>
	<tr>
		<td><a href="index.php">Home</a></td>
		<td><a href="ver.php">Ver salvos</a></td>
	</tr>
</table>
<?php 
	if($_POST){
		$cep = $_POST['cep'];
		$json_file = file_get_contents("https://viacep.com.br/ws/".$cep."/json/");
		$json = json_decode($json_file, true);
		//var_dump($json);
?>
	<form method="post" action="salvar.php">
        <label>Cep:
        <input name="cep" type="text" id="cep" value="<?= $json['cep'];?>" size="10" maxlength="9" /></label><br />
        <label>Rua:
        <input name="rua" type="text" id="rua" size="60" value="<?= $json['logradouro'];?>"/></label><br />
        <label>Bairro:
        <input name="bairro" type="text" id="bairro" size="40"value="<?= $json['bairro'];?>" /></label><br />
        <label>Cidade:
        <input name="cidade" type="text" id="cidade" size="40" value="<?= $json['localidade'];?>"/></label><br />
        <label>Estado:
        <input name="uf" type="text" id="uf" size="2" value="<?= $json['uf'];?>"/></label><br />
		<input type="submit" value="Salvar">
	</form>
<?php
	}else{
?>
<html>
<head>
	<title>Buscar Cep</title>
</head>
<body>
	<form action="" method="post">
		Cep: <input type="number" name="cep">
		<input type="submit">	
	</form>
</body>
</html>


<?php
	}	
?>