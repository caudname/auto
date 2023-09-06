<?php
	require ("includes/db_connect.php");
	session_start();
	include ("includes/header.php");
?>
	<main>
		
		<div class="container">
			<h1 class="main_title" id="catalog">Каталог товаров</h1>
			<div class="catalog">

<?php
		$query = "SELECT * FROM categories";
		$result = mysqli_query($link, $query);
		$row = mysqli_fetch_array($result);
		do {
			echo '
			<a href="goods.php?type='.$row["title"].'">
				<div class="catalog_item" style="background-image: url('.$row["image"].');">
					<div class="catalog_shadow-block">
						<div class="catalog_title-block">'.$row["title"].'</div>
					</div>
				</div>
			</a>
			';
		} while ( $row = mysqli_fetch_array($result) );
?>
			</div>

			<h1 class="main_title" id="best">Лучшие товары</h1>
			<div class="goods">

				<div class="goods_item">
					<a href="good.php?id=115" class="goods_image-link">
						<div class="goods_image-block" style="background-image: url('images/avtoshiny5.jpg');"></div>
					</a>
					<div class="goods_title-block">
						<a href="good.php?id=115" class="goods_title-link">Автошина 155*70 R13 75Т Nokian Nordman 5 шип. "Nokian Tyres"</a>
					</div>
					<div class="goods_price-block">
						2820 руб
					</div>
					<div class="buy-block">
						<a href="#" class="buy" id="115">В корзину</a>
					</div>
				</div>

				<div class="goods_item">
					<a href="good.php?id=106" class="goods_image-link">
						<div class="goods_image-block" style="background-image: url('images/masla7.jpg');"></div>
					</a>
					<div class="goods_title-block">
						<a href="good.php?id=106" class="goods_title-link">Жидкость тормозная Лукойл DOT-4</a>
					</div>
					<div class="goods_price-block">
						320 руб
					</div>
					<div class="buy-block">
						<a href="#" class="buy" id="106">В корзину</a>
					</div>
				</div>

				<div class="goods_item">
					<a href="good.php?id=22" class="goods_image-link">
						<div class="goods_image-block" style="background-image: url('images/osvetitelnaya_apparatura6.jpg');"></div>
					</a>
					<div class="goods_title-block">
						<a href="good.php?id=22" class="goods_title-link">Блок-фара ВАЗ-2114-15 "AL" BOSCH (с желт.ук.пов.) лев. ALRU.676.512.053-01 ООО "Аутомотив Лайтинг" г.Рязань</a>
					</div>
					<div class="goods_price-block">
						4150 руб
					</div>
					<div class="buy-block">
						<a href="#" class="buy" id="22">В корзину</a>
					</div>
				</div>

				<div class="goods_item">
					<a href="good.php?id=3" class="goods_image-link">
						<div class="goods_image-block" style="background-image: url('images/akkumulyatory3.jpg');"></div>
					</a>
					<div class="goods_title-block">
						<a href="good.php?id=3" class="goods_title-link">Аккумулятор 100 Titan Asia Silver 850А обрат. ООО "Тубор" г.Бор</a>
					</div>
					<div class="goods_price-block">
						9900 руб
					</div>
					<div class="buy-block">
						<a href="#" class="buy" id="3">В корзину</a>
					</div>
				</div>

			</div>
		</div>

	</main>
	
<?php
	include ("includes/footer.php");
?>