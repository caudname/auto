<?php
	require ("includes/db_connect.php");
	$type = $_GET["type"];

	session_start();
	include ("includes/header.php");
	echo '<main>';
	echo '<div class="container">';
	echo '<h1 class="main_title">'.$type.'</h1>';
?>
		<div class="goods">

<?php
	$query = "SELECT * FROM goods WHERE type = '$type'";
	$result = mysqli_query($link, $query);

	if (mysqli_num_rows($result) > 0) {
		$row = mysqli_fetch_array($result);
		do {
			echo '
			<div class="goods_item">
				<a href="good.php?id='.$row["id"].'" class="goods_image-link">
					<div class="goods_image-block" style="background-image: url('.$row["image"].');"></div>
				</a>
				<div class="goods_title-block">
					<a href="good.php?id='.$row["id"].'" class="goods_title-link">'.$row["title"].'</a>
				</div>
				<div class="goods_price-block">
					'.$row["price"].' руб
				</div>
				<div class="buy-block">
					<a href="#" class="buy" id="'.$row["id"].'">В корзину</a>
				</div>
			</div>
			';
		} while ($row = mysqli_fetch_array($result));
	} else {
		echo '<h1>Товаров данной категории нет</h1>';
	}
?>
			</div>
		</div>
	</main>
<?php
	include ("includes/footer.php");
?>