<?php
	require ("includes/db_connect.php");
	$id = $_GET["id"];
	session_start();
	include ("includes/header.php");

	$query = "SELECT * FROM goods WHERE id = '$id'";
	$result = mysqli_query($link, $query);
	echo '<main>';
		echo '<div class="container">';
		if (mysqli_num_rows($result) > 0) {
			$row = mysqli_fetch_array($result);
			echo '<h1 class="main_title">'.$row["title"].'</h1>

				<div class="good">
					<div class="good_image-block">
						<img src="'.$row["image"].'" class="good_image">
					</div>
					<div class="good_info-block">
						<div class="good_title-block">
							<a href="good.php?id='.$row["id"].'" class="good_title-link">'.$row["title"].'</a>
						</div>
						<div class="good_price-block">
							'.$row["price"].' руб
						</div>
						<div class="buy-block">
							<a href="#" class="buy" id="'.$row["id"].'">В корзину</a>
						</div>
						<div class="good_description-block">
							'.$row["description"].'
						</div>
					</div>
				</div>
			';
		}
		echo '</div>';
	echo '</main>';


	include ("includes/footer.php");
?>