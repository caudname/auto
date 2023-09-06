<?php
	$servername = "localhost";
	$db_login = "root";
	$db_password = "root";
	$db_name = "db_autoplus";

	$link = mysqli_connect($servername, $db_login, $db_password,
		$db_name) or die( "Ошибка".mysqli_error($link) );
?>