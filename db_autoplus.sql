-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 27 2023 г., 17:02
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `db_autoplus`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cart`
--

CREATE TABLE `cart` (
  `id` int NOT NULL,
  `cart_id` int NOT NULL,
  `price` int NOT NULL,
  `count` int NOT NULL,
  `ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `title` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `image`) VALUES
(1, 'Аккумуляторы (АКБ)', 'images/akkumulyatory.jpg'),
(2, 'Подшипники', 'images/podshipniki.jpg'),
(3, 'Осветительная аппаратура', 'images/osvetitelnaya_apparatura.jpg'),
(4, 'Автолампы и предохранители', 'images/avtolampy.jpg'),
(5, 'Автоаксессуары и тюнинг', 'images/avtoaksessuary.jpg'),
(6, 'Масла', 'images/masla.jpg'),
(7, 'Прицепы легковые', 'images/pritsepy.jpg'),
(8, 'Автошины зима', 'images/avtoshiny.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `title`, `type`, `image`, `price`, `description`) VALUES
(1, 'Аккумулятор 100 ATLANT п/п 760А 353x175x190 (Беларусь)', 'Аккумуляторы (АКБ)', 'images/akkumulyatory1.jpg', 6680, 'Аккумулятор 100 ATLANT п/п 760А 353x175x190 (Беларусь)'),
(2, 'Аккумулятор 100 Dominator о/п 870A ООО \"ИСТОК+\" г.Курск', 'Аккумуляторы (АКБ)', 'images/akkumulyatory2.jpg', 9350, 'Аккумулятор 100 Dominator о/п 870A ООО \"ИСТОК+\" г.Курск'),
(3, 'Аккумулятор 100 Titan Asia Silver 850А обрат. ООО \"Тубор\" г.Бор', 'Аккумуляторы (АКБ)', 'images/akkumulyatory3.jpg', 9900, 'Аккумулятор 100 Titan Asia Silver 850А обрат. ООО \"Тубор\" г.Бор'),
(4, 'Аккумулятор 100 Tornado п/п ООО \"Курский аккумуляторный завод\" г.Курск', 'Аккумуляторы (АКБ)', 'images/akkumulyatory4.jpg', 6990, 'Аккумулятор 100 Tornado п/п ООО \"Курский аккумуляторный завод\" г.Курск'),
(5, 'Аккумулятор 100 АП3 L ЗАО МПКФ \"Алькор\" г.Тюмень', 'Аккумуляторы (АКБ)', 'images/akkumulyatory5.jpg', 8950, 'Аккумулятор 100 АП3 L ЗАО МПКФ \"Алькор\" г.Тюмень'),
(6, 'Аккумулятор 105 Zubr Premium о/п 1000А 353x175x190 (Беларусь)', 'Аккумуляторы (АКБ)', 'images/akkumulyatory6.jpg', 9530, 'Аккумулятор 105 Zubr Premium о/п 1000А 353x175x190 (Беларусь)'),
(7, 'Аккумулятор 110 Titan Euro Silver - + Евро о/п ООО \"Тубор\" г.Бор', 'Аккумуляторы (АКБ)', 'images/akkumulyatory7.jpg', 11250, 'Аккумулятор 6 СТ-110 Titan Euro Silver - + Евро о/п ООО \"Тубор\" г.Бор'),
(8, 'Аккумулятор 140 Ecostart о/п (Польша)', 'Аккумуляторы (АКБ)', 'images/akkumulyatory8.jpg', 13150, 'Аккумулятор 6 СТ-140 Ecostart о/п (Польша)'),
(9, 'Крестовина К-016 шарнира малая с/хоз 28х74 Н.051.02.606 ООО \"Псковагроснаб\" г.Псков', 'Подшипники', 'images/podshipniki1.jpg', 350, 'Крестовина К-016 шарнира малая с/хоз 28х74 Н.051.02.606 ООО \"Псковагроснаб\" г.Псков'),
(10, 'Подшипник 102210 задн.мост ЗИЛ ООО \"Самарский подшип.завод\" г.Самара', 'Подшипники', 'images/podshipniki2.jpg', 1530, 'Подшипник 102210 задн.мост ЗИЛ ООО \"Самарский подшип.завод\" г.Самара'),
(11, 'Подшипник 102304 ред.УАЗ гл.пара вед.шест. 451Д-2402041-01 ПАО \"ВПЗ\" г.Волжский', 'Подшипники', 'images/podshipniki3.jpg', 830, 'Подшипник 102304 ред.УАЗ гл.пара вед.шест. 451Д-2402041-01 ПАО \"ВПЗ\" г.Волжский'),
(12, 'Подшипник 102409 М КамАЗ ПАО \"ВПЗ\" г.Волжский', 'Подшипники', 'images/podshipniki4.jpg', 1800, 'Подшипник 102409 М КамАЗ ПАО \"ВПЗ\" г.Волжский'),
(13, 'Подшипник 102605 задн.мост ГАЗ М (20-) ООО \"Самарский подшип.завод\" г.Самара', 'Подшипники', 'images/podshipniki5.jpg', 1460, 'Подшипник 102605 задн.мост ГАЗ М (20-) ООО \"Самарский подшип.завод\" г.Самара'),
(14, 'Подшипник 104 ГАЗ ООО \"Самарский подшип.завод\" г.Самара', 'Подшипники', 'images/podshipniki6.jpg', 70, 'Подшипник 104 ГАЗ ООО \"Самарский подшип.завод\" г.Самара'),
(15, 'Подшипник 11218 не авто ПАО \"ГПЗ\" г.Вологда', 'Подшипники', 'images/podshipniki7.jpg', 4200, 'Подшипник 11218 не авто ПАО \"ГПЗ\" г.Вологда'),
(16, 'Подшипник 1208 ПАО \"ГПЗ\" г.Вологда', 'Подшипники', 'images/podshipniki8.jpg', 750, 'Подшипник 1208 ПАО \"ГПЗ\" г.Вологда'),
(17, 'Блок-фара Renault Duster BOSCH (светлая) прав. ALRU.676.512.096 ООО \"Аутомотив Лайтинг\" г.Рязань', 'Осветительная аппаратура', 'images/osvetitelnaya_apparatura1.jpg', 4900, 'Блок-фара Renault Duster BOSCH (светлая) прав. ALRU.676.512.096 ООО \"Аутомотив Лайтинг\" г.Рязань'),
(18, 'Блок-фара ВАЗ \"Largus 12- (Renault Logan `10-) п/корректор, \"SKV\" 754.3775 прав. (Фаза-2)', 'Осветительная аппаратура', 'images/osvetitelnaya_apparatura2.jpg', 2770, 'Блок-фара ВАЗ \"Largus 12- (Renault Logan `10-) п/корректор, \"SKV\" 754.3775 прав. (Фаза-2) \"SKV LIGHTING\" ООО \"ПСК\" г.Москва'),
(19, 'Блок-фара ВАЗ-1118 \"Калина\" BOSCH хром.лев. (стекло-пластик) ALRU.676.512.115 \"Аутомотив Лайтинг\"', 'Осветительная аппаратура', 'images/osvetitelnaya_apparatura3.jpg', 8500, 'Блок-фара ВАЗ-1118 \"Калина\" BOSCH хром.лев. (стекло-пластик) ALRU.676.512.115 \"Аутомотив Лайтинг\"'),
(20, 'Блок-фара ВАЗ-2104,05-07 прав. (оранж.) 95.3711 ПАО \"ОСВАР\" г.Вязники', 'Осветительная аппаратура', 'images/osvetitelnaya_apparatura4.jpg', 2980, 'Блок-фара ВАЗ-2104,05-07 прав. (оранж.) 95.3711 ПАО \"ОСВАР\" г.Вязники'),
(21, 'Блок-фара ВАЗ-2110 лев. 583.3711010 ПАО \"ОСВАР\" г.Вязники', 'Осветительная аппаратура', 'images/osvetitelnaya_apparatura5.jpg', 3110, 'Блок-фара ВАЗ-2110 лев. 583.3711010 ПАО \"ОСВАР\" г.Вязники'),
(22, 'Блок-фара ВАЗ-2114-15 \"AL\" BOSCH (с желт.ук.пов.) лев. ALRU.676.512.053-01 ООО \"Аутомотив Лайтинг\" г.Рязань', 'Осветительная аппаратура', 'images/osvetitelnaya_apparatura6.jpg', 4150, 'Блок-фара ВАЗ-2114-15 \"AL\" BOSCH (с желт.ук.пов.) лев. ALRU.676.512.053-01 ООО \"Аутомотив Лайтинг\" г.Рязань'),
(23, 'Блок-фара ВАЗ-2114-15 лев.(жел.повор.) 742.3711010-01 ПАО \"Завод Автосвет\" г.Киржач', 'Осветительная аппаратура', 'images/osvetitelnaya_apparatura7.jpg', 3860, 'Блок-фара ВАЗ-2114-15 лев.(жел.повор.) 742.3711010-01 ПАО \"Завод Автосвет\" г.Киржач'),
(24, 'Блок-фара ВАЗ-2123 \"Шеви-Нива\" правая черная BOSCH (линза/стекло-пластик) 676.512.154 (2123-3711010.50)', 'Осветительная аппаратура', 'images/osvetitelnaya_apparatura8.jpg', 9480, 'Блок-фара ВАЗ-2123 \"Шеви-Нива\" правая черная BOSCH (линза/стекло-пластик) 676.512.154 (2123-3711010.50) \"Аутомотив Лайтинг\" г.Рязань'),
(25, 'Автолампа 12V H16 12V 19W PGJ19-3', 'Автолампы и предохранители', 'images/avtolampy1.jpg', 190, 'Автолампа 12V H16 12V 19W PGJ19-3 +30% \"SVS\" (Китай) /арт.0200012000/'),
(26, 'Автолампа 12V H3 Standard+30%', 'Автолампы и предохранители', 'images/avtolampy2.jpg', 50, 'Автолампа 12V H3 Standard+30% 55W \"SVS\" (Китай) /0200005000/'),
(27, 'Автолампа 12V H9 12V 65W PGJ19-5 +30%', 'Автолампы и предохранители', 'images/avtolampy3.jpg', 110, 'Автолампа 12V H9 12V 65W PGJ19-5 +30% \"SVS\" (Китай) /арт.0200137000/'),
(28, 'Автолампа 12V 1.2W B8.5d с патроном Standard \"BOSCH\"', 'Автолампы и предохранители', 'images/avtolampy4.jpg', 100, 'Автолампа 12V 1.2W B8.5d с патроном Standard \"BOSCH\" (Германия) /арт.1987302219/'),
(29, 'Автолампа 12V 27W PGJ13 (881) \"LYNXauto\"', 'Автолампы и предохранители', 'images/avtolampy5.jpg', 280, 'Автолампа 12V 27W PGJ13 (881) \"LYNXauto\" (Япония) /арт.L18127/'),
(30, 'Автолампа 12V 2W BA7s \"NARVA\" \"Lumileds Germany Gmbh\"', 'Автолампы и предохранители', 'images/avtolampy6.jpg', 40, 'Автолампа 12V 2W BA7s \"NARVA\" \"Lumileds Germany Gmbh\" (Германия) /арт.17051/'),
(31, 'Автолампа 12V 55 H3 РК22s+30% PREMIUM \"PHILIPS\"', 'Автолампы и предохранители', 'images/avtolampy7.jpg', 290, 'Автолампа 12V 55 H3 РК22s+30% PREMIUM \"PHILIPS\" \"Lumileds Poland S.A.\" (Польша) /12336PRC1/'),
(32, 'Автолампа 12V PY21W BAU15s желтый \"Valeo\"', 'Автолампы и предохранители', 'images/avtolampy8.jpg', 80, 'Автолампа 12V PY21W BAU15s желтый \"Valeo\" (Тайланд) /арт.032203/'),
(33, 'Автоакустика Kicx GX 132', 'Автоаксессуары и тюнинг', 'images/avtoaksessuary1.jpg', 1860, 'Автоакустика Kicx GX 132 (Китай)'),
(34, 'Автоакустика Kicx TL-130 S', 'Автоаксессуары и тюнинг', 'images/avtoaksessuary2.jpg', 2250, 'Автоакустика Kicx TL-130 S (Китай)'),
(94, 'Автоакустика Phantom PS30-13', 'Автоаксессуары и тюнинг', 'images/avtoaksessuary3.jpg', 830, 'Автоакустика Phantom PS30-13 (Китай)'),
(95, 'Автоакустика Phantom TS-1622', 'Автоаксессуары и тюнинг', 'images/avtoaksessuary4.jpg', 1960, 'Автоакустика Phantom TS-1622 (Китай)'),
(96, 'Автоакустика URAL AK-74 6\" (16см) 200Вт', 'Автоаксессуары и тюнинг', 'images/avtoaksessuary5.jpg', 5270, 'Автоакустика URAL AK-74 6\" (16см) 200Вт (Китай)'),
(97, 'Автопылесос \"Golden Snail\" 12V GS9207', 'Автоаксессуары и тюнинг', 'images/avtoaksessuary6.jpg', 675, 'Автопылесос \"Golden Snail\" 12V GS9207 (Китай)'),
(98, 'Автосигнализация \"Centurion A92\"', 'Автоаксессуары и тюнинг', 'images/avtoaksessuary7.jpg', 1560, 'Автосигнализация \"Centurion A92\" (Китай)'),
(99, 'Автосигнализация \"Sky M15\" (1ж/к брелок)', 'Автоаксессуары и тюнинг', 'images/avtoaksessuary8.jpg', 3130, 'Автосигнализация \"Sky M15\" (1ж/к брелок) (Китай)'),
(100, 'Антигель для дизельного топлива \"Astrohim\"', 'Масла', 'images/masla1.jpg', 160, 'Антигель для дизельного топлива \"Astrohim\" (на 30л) 300мл AC-119 ООО \"НПП Астрохим\" г.Москва /арт.AC-119/'),
(101, 'Быстрый старт Felix 335мл.аэрозоль', 'Масла', 'images/masla2.jpg', 250, 'Быстрый старт Felix 335мл.аэрозоль 411040018 ООО \"Тосол-Синтез-Трейдинг\" г.Дзержинск'),
(102, 'Герметик шин 650мл', 'Масла', 'images/masla3.jpg', 590, 'Герметик шин 650мл (аэрозоль) RW6125 \"RUNWAY\" (Китай)'),
(103, 'Жидкость ГУР Hi-Gear HG7039R Power Steering fluid', 'Масла', 'images/masla4.jpg', 340, 'Жидкость ГУР Hi-Gear HG7039R Power Steering fluid (470мл) \"HI-GEAR Products inc.\" (США)'),
(104, 'Жидкость ГУР IDEMITSU ZEPRO PSF 0,5л', 'Масла', 'images/masla5.jpg', 500, 'Жидкость ГУР IDEMITSU ZEPRO PSF 0,5л \"IDEMITSU\" (Япония) /арт.16460005/'),
(105, 'Жидкость тормозная Лукойл DOT 4', 'Масла', 'images/masla6.jpg', 190, 'Жидкость тормозная Лукойл DOT 4 (0,455кг) ООО \"ЛУКОЙЛ-Пермьнефтеоргсинтез \" г.Пермь'),
(106, 'Жидкость тормозная Лукойл DOT-4', 'Масла', 'images/masla7.jpg', 320, 'Жидкость тормозная Лукойл DOT-4 0,910кг ООО \"ЛУКОЙЛ-Пермьнефтеоргсинтез \" г.Пермь'),
(107, 'Масло Bardahl (10W40) XTC SN/CF A3/B4', 'Масла', 'images/masla8.jpg', 4220, 'Масло Bardahl (10W40) XTC SN/CF A3/B4 (полусинт.) 5л (MB 229.1/VW 501.01/505.00/Renault RN700) (Франция) /арт.36243/'),
(108, 'Крыло легк.прицепа (К-220)', 'Прицепы легковые', 'images/pritsepy1.jpg', 760, 'Крыло легк.прицепа (К-220) (пластик) 220-8511021-01 ООО \"ПЕТРОПЛАСТ\" г.Санкт-Петербург\"'),
(109, 'Прицеп МЗСА 817717.012 с крышкой 271515', 'Прицепы легковые', 'images/pritsepy2.jpg', 132000, 'Прицеп МЗСА 817717.012 с крышкой 271515'),
(110, 'Прицеп САЗ-82993-02ОЦ', 'Прицепы легковые', 'images/pritsepy3.jpg', 67000, 'Прицеп САЗ-82993-02ОЦ в сб. дуги и тент с/с оцинкован. 0001-0082993-02ОЦ ПАО \"Саранский з-д автосамосвалов \"САЗ\" г.Саранск'),
(111, 'Автошина 135*80 R12 68Q', 'Автошины зима', 'images/avtoshiny1.jpg', 3260, 'Автошина 135*80 R12 68Q Кама-503 шип. ПАО \"Нижнекамскшина\" г.Нижнекамск'),
(112, 'Автошина 155*65 R13 78T', 'Автошины зима', 'images/avtoshiny2.jpg', 4550, 'Автошина 155*65 R13 78T Кама-EURO-518 шип. ПАО \"Нижнекамскшина\" г.Нижнекамск'),
(113, 'Автошина 155*65 R14 75T HANKOOK Winter iPike W419 шип.', 'Автошины зима', 'images/avtoshiny3.jpg', 3030, 'Автошина 155*65 R14 75T HANKOOK Winter iPike W419 шип. (Корея)'),
(114, 'Автошина 155*70 R13 75T Matador MP30 Sibir lce 2 шип.', 'Автошины зима', 'images/avtoshiny4.jpg', 2860, 'Автошина 155*70 R13 75T Matador MP30 Sibir lce 2 шип. ЗАО \"Матадор-Омскшина\" г.Омск'),
(115, 'Автошина 155*70 R13 75Т Nokian Nordman 5 шип. \"Nokian Tyres\"', 'Автошины зима', 'images/avtoshiny5.jpg', 2820, 'Автошина 155*70 R13 75Т Nokian Nordman 5 шип. \"Nokian Tyres\" г.Всеволжск'),
(116, 'Автошина 175*65 R14 86T Nokian Nordman 5 xl шип. \"Nokian Tyres\"', 'Автошины зима', 'images/avtoshiny6.jpg', 2560, 'Автошина 175*65 R14 86T Nokian Nordman 5 xl шип. \"Nokian Tyres\" г.Всеволжск'),
(117, 'Автошина 175*65 R14 86T Nokian Nordman 7 xl шип. \"Nokian Tyres\"', 'Автошины зима', 'images/avtoshiny7.jpg', 3730, 'Автошина 175*65 R14 86T Nokian Nordman 7 xl шип. \"Nokian Tyres\" г.Всеволжск'),
(118, 'Автошина 175*70 R14 84T Bridgestone ICE CRUISER lC7000S шип.', 'Автошины зима', 'images/avtoshiny8.jpg', 3010, 'Автошина 175*70 R14 84T Bridgestone ICE CRUISER lC7000S шип. (Турция)');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `patronymic` varchar(50) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
