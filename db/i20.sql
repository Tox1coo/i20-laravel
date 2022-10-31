-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Ноя 01 2022 г., 00:25
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `i20`
--
CREATE DATABASE IF NOT EXISTS `i20` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `i20`;

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `query` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `title`, `description`, `query`) VALUES
(1, 'Одежда', 'Категория со всей одеждой', 'clothes'),
(2, 'Обувь', 'Категория со всей обувью', 'shoes'),
(3, 'Аксессуары', 'Категория со всеми аксессуарами', 'accessories'),
(4, 'Платья', 'Категория с платьями', 'dresses'),
(5, 'Рубашки', 'Категория с рубашками', 'shirts'),
(6, 'Ботинки', 'Категория с ботинками', 'boots'),
(7, 'Кроссовки', 'Категория с кроссовками', 'sneakers'),
(8, 'Зонты', 'Категория с зонтами', 'umbrellas'),
(9, 'Головные уборы', 'Категория с головными уборами', 'hats');

-- --------------------------------------------------------

--
-- Структура таблицы `categoryproduct`
--

DROP TABLE IF EXISTS `categoryproduct`;
CREATE TABLE `categoryproduct` (
  `id` int NOT NULL,
  `category_id` int NOT NULL,
  `product_id` int NOT NULL,
  `main` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `categoryproduct`
--

INSERT INTO `categoryproduct` (`id`, `category_id`, `product_id`, `main`) VALUES
(1, 1, 1, 5),
(2, 2, 2, 7),
(3, 3, 3, 8),
(4, 1, 4, 4),
(5, 4, 4, 4),
(6, 2, 5, 7),
(7, 2, 6, 6),
(8, 3, 7, 8),
(9, 3, 8, 8),
(10, 1, 9, 5),
(11, 5, 9, 5),
(12, 5, 10, 5),
(13, 4, 11, 4),
(14, 4, 12, 4),
(15, 2, 13, 7),
(16, 2, 14, 6),
(17, 3, 15, 8),
(18, 7, 2, 7),
(19, 7, 5, 7),
(20, 7, 13, 7),
(21, 6, 14, 6),
(22, 6, 6, 6),
(23, 8, 7, 8),
(24, 8, 8, 8),
(25, 8, 15, 8),
(26, 8, 3, 8),
(27, 1, 1, 5),
(28, 2, 2, 7),
(29, 3, 3, 8),
(30, 1, 4, 4),
(31, 4, 4, 4),
(32, 2, 5, 7),
(33, 2, 6, 6),
(34, 3, 7, 8),
(35, 3, 8, 8),
(36, 1, 9, 5),
(37, 5, 9, 5),
(38, 5, 10, 5),
(39, 4, 11, 4),
(40, 4, 12, 4),
(41, 2, 13, 7),
(42, 2, 14, 6),
(43, 3, 15, 8),
(44, 7, 2, 7),
(45, 7, 5, 7),
(46, 7, 13, 7),
(47, 6, 14, 6),
(48, 6, 6, 6),
(49, 8, 7, 8),
(50, 8, 8, 8),
(51, 8, 15, 8),
(52, 8, 3, 8),
(53, 1, 1, 5),
(54, 2, 2, 7),
(55, 3, 3, 8),
(56, 1, 4, 4),
(57, 4, 4, 4),
(58, 2, 5, 7),
(59, 2, 6, 6),
(60, 3, 7, 8),
(61, 3, 8, 8),
(62, 1, 9, 5),
(63, 5, 9, 5),
(64, 5, 10, 5),
(65, 4, 11, 4),
(66, 4, 12, 4),
(67, 2, 13, 7),
(68, 2, 14, 6),
(69, 3, 15, 8),
(70, 7, 2, 7),
(71, 7, 5, 7),
(72, 7, 13, 7),
(73, 6, 14, 6),
(74, 6, 6, 6),
(75, 8, 7, 8),
(76, 8, 8, 8),
(77, 8, 15, 8),
(78, 8, 3, 8),
(79, 1, 1, 5),
(80, 2, 2, 7),
(81, 3, 3, 8),
(82, 1, 4, 4),
(83, 4, 4, 4),
(84, 2, 5, 7),
(85, 2, 6, 6),
(86, 3, 7, 8),
(87, 3, 8, 8),
(88, 1, 9, 5),
(89, 5, 9, 5),
(90, 5, 10, 5),
(91, 4, 11, 4),
(92, 4, 12, 4),
(93, 2, 13, 7),
(94, 2, 14, 6),
(95, 3, 15, 8),
(96, 7, 2, 7),
(97, 7, 5, 7),
(98, 7, 13, 7),
(99, 6, 14, 6),
(100, 6, 6, 6),
(101, 8, 7, 8),
(102, 8, 8, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `mail` varchar(319) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `birthday` date NOT NULL,
  `theme` varchar(25) NOT NULL,
  `message` varchar(400) NOT NULL,
  `consent` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `mail`, `gender`, `birthday`, `theme`, `message`, `consent`) VALUES
(1, 'dsadsadasdasdf', 'www.dfaniil_.ru@mail.ru', 'men', '2022-10-17', 'dsadadsa', 'asdsadas', 1),
(2, 'dsadsadasdasdf', 'www.dfaniil_.ru@mail.ru', 'men', '2022-10-17', 'dsadadsa', 'asdsadas', 1),
(3, 'dsadsadasdasdf', 'www.dfaniil_.ru@mail.ru', 'men', '2022-10-17', 'dsadadsa', 'asdsadas', 1),
(4, 'dsadsadasdasdf', 'www.dfaniil_.ru@mail.ru', 'men', '2022-10-17', 'dsadadsa', 'asdsadas', 1),
(5, 'dsadsadasdasdf', 'www.dfaniil_.ru@mail.ru', 'men', '2022-10-17', 'dsadadsa', 'dsdsadsa', 1),
(6, 'Даниил Бураков', 'www.daniil_.ru@mail.ru', 'women', '2022-10-18', 'dasdsdasd', 'dasdsadasdasdasd', 1),
(7, 'Даниил Бураков', 'www.daniil_.ru@mail.ru', 'men', '2022-10-18', 'dasdsdasd', 'dasdas', 1),
(8, 'Даниил Бураков', 'www.daniil_.ru@mail.ru', 'men', '2022-10-18', 'dasdsdasd', 'dadsadsaas', 1),
(9, 'Даниил Бураков', 'www.daniil_.ru@mail.ru', 'men', '2022-10-18', 'dasdsdasd', 'dddsadasda', 1),
(10, 'Даниил Бураков', 'www.daniil_.ru@mail.ru', 'men', '2022-10-18', 'dasdsdasd', 'выфвыыфвф', 1),
(11, 'Даниил Бураков', 'www.daniil_.ru@mail.ru', 'men', '2022-10-18', 'dasdsdasd', 'вфывыфвф', 1),
(12, 'Даниил Бураков', 'www.daniil_.ru@mail.ru', 'men', '2022-10-18', 'dasdsddaasd', 'dadaddasds', 1),
(13, 'Даниил Бураков', 'www.daniil_.ru@mail.ru', 'men', '2022-10-18', 'dasdsddaasd', 'dasddas', 1),
(14, 'Даниил Бураков', 'www.daniil_.ru@mail.ru', 'men', '2022-10-18', 'dasdsddaasd', 'dsdasdsadsa', 1),
(15, 'Даниил Бураков', 'www.daniil_.ru@mail.ru', 'men', '2022-10-18', 'dasdsddaasd', 'dsdadsa', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `id` int NOT NULL,
  `link` varchar(100) NOT NULL,
  `alt` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `link`, `alt`) VALUES
(1, 'https://a.lmcdn.ru/product/M/E/ME024EMPAO23_4293794_1_v2.jpg', 'Рубашка Medicine'),
(2, 'https://a.lmcdn.ru/product/M/E/ME024EMPAO23_4301043_6_v1.jpg', 'Рубашка Medicine'),
(3, 'https://a.lmcdn.ru/product/M/E/ME024EMPAO23_4301044_7_v1.jpg', 'Рубашка Medicine'),
(4, 'https://a.lmcdn.ru/product/R/T/RTLABG594801_16670765_1_v1.jpg', 'Nike ботинки'),
(5, 'https://a.lmcdn.ru/product/R/T/RTLABG594801_16679011_9_v1_2x.jpg', 'Nike ботинки'),
(6, 'https://a.lmcdn.ru/product/R/T/RTLABG594801_16670766_2_v1.jpg', 'Nike ботинки'),
(7, 'https://a.lmcdn.ru/product/M/P/MP002XM08RZL_17852423_1_v2.jpg', 'Зонт GUCCI'),
(8, 'https://a.lmcdn.ru/product/M/P/MP002XM08RZL_17852421_2_v2.jpg', 'Зонт GUCCI'),
(9, 'https://a.lmcdn.ru/product/M/P/MP002XM08RZL_17852425_3_v2.jpg', 'Зонт GUCCI'),
(10, 'https://a.lmcdn.ru/product/R/T/RTLABJ301101_17009712_1_v1_2x.jpg', 'GIUSEPPE DI MORABITO'),
(11, 'https://a.lmcdn.ru/product/R/T/RTLABJ301101_17009713_2_v1_2x.jpg', 'GIUSEPPE DI MORABITO'),
(12, 'https://a.lmcdn.ru/product/R/T/RTLABJ301101_17009714_3_v1_2x.jpg', 'GIUSEPPE DI MORABITO'),
(13, 'https://a.lmcdn.ru/product/A/D/AD002AMJYMA2_11576770_1_v3.jpg', 'Кроссовки LITE RACER 2.0'),
(14, 'https://a.lmcdn.ru/product/A/D/AD002AMJYMA2_11576771_2_v3.jpg', 'Кроссовки LITE RACER 2.0'),
(15, 'https://a.lmcdn.ru/product/A/D/AD002AMJYMA2_11576773_4_v3.jpg', 'Кроссовки LITE RACER 2.0'),
(16, 'https://a.lmcdn.ru/product/R/T/RTLABY950301_17998751_1_v2.jpg', 'Ботинки Strobbs'),
(17, 'https://a.lmcdn.ru/product/R/T/RTLABY950301_17998752_2_v2.jpg', 'Ботинки Strobbs'),
(18, 'https://a.lmcdn.ru/product/R/T/RTLABY950301_17998753_3_v2.jpg', 'Ботинки Strobbs'),
(19, 'https://a.lmcdn.ru/product/M/P/MP002XM1HI59_13974142_1_v2.jpg', 'Зонт-трость'),
(20, 'https://a.lmcdn.ru/product/M/P/MP002XM1HI59_13974153_2_v2.jpg', 'Зонт-трость'),
(21, 'https://a.lmcdn.ru/product/M/P/MP002XM1HI59_13974160_3_v2.jpg', 'Зонт-трость'),
(22, 'https://a.lmcdn.ru/product/M/P/MP002XM1RI9B_14985694_1_v2.jpg', 'Зонт складной WOOD CLASSIC S'),
(23, 'https://a.lmcdn.ru/product/M/P/MP002XM1RI9B_14985691_2_v2.jpg', 'Зонт складной WOOD CLASSIC S'),
(24, 'https://a.lmcdn.ru/product/M/P/MP002XM1RI9B_14985693_3_v2.jpg', 'Зонт складной WOOD CLASSIC S'),
(25, 'https://a.lmcdn.ru/product/M/P/MP002XM082DK_18025089_1_v1_2x.jpg', 'Рубашка Oxford Shirt'),
(26, 'https://a.lmcdn.ru/product/M/P/MP002XM082DK_18025090_2_v1_2x.jpg', 'Рубашка Oxford Shirt'),
(27, 'https://a.lmcdn.ru/product/M/P/MP002XM082DK_18025091_3_v1_2x.jpg', 'Рубашка Oxford Shirt'),
(28, 'https://a.lmcdn.ru/product/R/T/RTLAAR152701_15241296_1_v1_2x.jpg', 'Рубашка Versache Jeans'),
(29, 'https://a.lmcdn.ru/product/R/T/RTLAAR152701_15241297_2_v1_2x.jpg', 'Рубашка Versache Jeans'),
(30, 'https://a.lmcdn.ru/product/R/T/RTLAAR152701_15241298_3_v1_2x.jpg', 'Рубашка Versache Jeans'),
(31, 'https://a.lmcdn.ru/product/R/T/RTLABN987001_17546217_1_v1_2x.jpg', 'Платье DRESS TO IMPRESS'),
(32, 'https://a.lmcdn.ru/product/R/T/RTLABN987001_17546218_2_v1_2x.jpg', 'Платье DRESS TO IMPRESS'),
(33, 'https://a.lmcdn.ru/product/R/T/RTLABN987001_17546219_3_v1_2x.jpg', 'Платье DRESS TO IMPRESS'),
(34, 'https://a.lmcdn.ru/product/M/P/MP002XW085ED_14721510_1_v1.jpeg', 'Платье Barmariska'),
(35, 'https://a.lmcdn.ru/product/M/P/MP002XW085ED_14721512_2_v1.jpeg', 'Платье Barmariska'),
(36, 'https://a.lmcdn.ru/product/M/P/MP002XW085ED_14721511_3_v1.jpeg', 'Платье Barmariska'),
(37, 'https://a.lmcdn.ru/product/R/T/RTLACC317701_18345146_1_v1_2x.jpg', 'Кроссовки Ash'),
(38, 'https://a.lmcdn.ru/product/R/T/RTLACC317701_18354531_9_v1_2x.jpg', 'Кроссовки Ash'),
(39, 'https://a.lmcdn.ru/product/R/T/RTLACC317701_18345147_2_v1_2x.jpg', 'Кроссовки Ash'),
(40, 'https://a.lmcdn.ru/product/M/P/MP002XW0LAR3_18227585_1_v1.jpeg', 'Ботинки полнота C (3)'),
(41, 'https://a.lmcdn.ru/product/M/P/MP002XW0LAR3_18227586_2_v1.jpeg', 'Ботинки полнота C (3)'),
(42, 'https://a.lmcdn.ru/product/M/P/MP002XW0LAR3_18227587_3_v1.jpeg', 'Ботинки полнота C (3)'),
(43, 'https://a.lmcdn.ru/product/R/T/RTLABP022401_17666143_1_v1.jpg', 'Зонт складной'),
(44, 'https://a.lmcdn.ru/product/R/T/RTLABP022401_17666144_2_v1.jpg', 'Зонт складной'),
(45, 'https://a.lmcdn.ru/product/R/T/RTLABP022401_17666145_3_v1.jpg', 'Зонт складной');

-- --------------------------------------------------------

--
-- Структура таблицы `imagesproduct`
--

DROP TABLE IF EXISTS `imagesproduct`;
CREATE TABLE `imagesproduct` (
  `id` int NOT NULL,
  `image_id` int NOT NULL,
  `product_id` int NOT NULL,
  `preview` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `imagesproduct`
--

INSERT INTO `imagesproduct` (`id`, `image_id`, `product_id`, `preview`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 0),
(3, 3, 1, 0),
(4, 4, 2, 1),
(5, 5, 2, 0),
(6, 6, 2, 0),
(7, 7, 3, 1),
(8, 8, 3, 0),
(9, 9, 3, 0),
(10, 10, 4, 1),
(11, 11, 4, 0),
(12, 12, 4, 0),
(13, 13, 5, 1),
(14, 14, 5, 0),
(15, 15, 5, 0),
(16, 16, 6, 1),
(17, 17, 6, 0),
(18, 18, 6, 0),
(19, 19, 7, 1),
(20, 20, 7, 0),
(21, 21, 7, 0),
(22, 22, 8, 1),
(23, 23, 8, 0),
(24, 24, 8, 0),
(25, 25, 9, 1),
(26, 26, 9, 0),
(27, 27, 9, 0),
(28, 28, 10, 1),
(29, 29, 10, 0),
(30, 30, 10, 0),
(31, 31, 11, 1),
(32, 32, 11, 0),
(33, 33, 11, 0),
(34, 34, 12, 1),
(35, 35, 12, 0),
(36, 36, 12, 0),
(37, 37, 13, 1),
(38, 38, 13, 0),
(39, 39, 13, 0),
(40, 40, 14, 1),
(41, 41, 14, 0),
(42, 42, 14, 0),
(43, 43, 15, 1),
(44, 44, 15, 0),
(45, 45, 15, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int NOT NULL,
  `title` varchar(50) NOT NULL,
  `price` decimal(8,2) UNSIGNED NOT NULL,
  `price_discount` decimal(8,2) UNSIGNED NOT NULL,
  `price_promo` decimal(8,2) UNSIGNED NOT NULL,
  `description` varchar(500) NOT NULL,
  `availability` tinyint(1) NOT NULL DEFAULT '1',
  `amount_product` int NOT NULL DEFAULT '0',
  `brand` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `title`, `price`, `price_discount`, `price_promo`, `description`, `availability`, `amount_product`, `brand`) VALUES
(1, 'Рубашка Medicine', '2699.00', '2499.00', '2227.00', 'Рубашка Medicine выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка и манжеты на пуговицах; карман на груди.', 1, 255, 'Medicine'),
(2, 'Nike ботинки', '12000.00', '11540.00', '11200.00', 'Интересный релиз Nike, в рамках которого специалисты бренда решили выпустить культовую модель Air Force в демисезонном варианте. Эффектный верх из иск. кожи и текстиля. дополнен стегаными деталями акцентами и резиновым носком', 1, 245, 'Nike'),
(3, 'Зонт GUCCI', '3200.00', '3000.00', '2840.00', 'Красный зонт с асимметричным принтом в виде гороха и фантазийного орнамента поможет подчеркнуть романтичность натуры.', 1, 458, 'Gucci'),
(4, 'GIUSEPPE DI MORABITO', '7530.00', '7500.00', '7484.00', 'Приталенное мини-платье насыщенного оттенка фуксии сшили из мягкой гладкой кожи с деликатным блеском.', 1, 1452, 'Morabito'),
(5, 'Кроссовки LITE RACER 2.0', '6399.00', '3510.00', '3210.00', 'Кроссовки в беговом стиле выполнены из дышащего сетчатого текстиля.', 1, 4215, 'adidas'),
(6, 'Ботинки Strobbs', '5999.00', '4520.00', '4000.00', 'Ботинки, идеальные для дождливой погоды', 1, 214, 'Strobbs'),
(7, 'Зонт-трость', '5200.00', '3250.00', '3012.00', '', 0, 5452, 'Lamberti'),
(8, 'Зонт складной WOOD CLASSIC S', '6000.00', '5240.00', '3420.00', '', 1, 3213, 'Samsonite'),
(9, 'Рубашка Oxford Shirt', '5990.00', '3777.00', '3410.00', 'Рубашка выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка и манжеты на пуговицах; карман на груди.', 1, 312, 'Lyle & Scott'),
(10, 'Рубашка Versache Jeans', '63500.00', '57150.00', '55400.00', 'Рубашка выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка и манжеты на пуговицах; карман на груди.', 1, 545, 'Versache Jeans'),
(11, 'Платье DRESS TO IMPRESS', '47300.00', '40205.00', '39500.00', 'Платье отличного качетсва.', 1, 6423, 'Pinco'),
(12, 'Платье Barmariska', '6699.00', '2713.00', '2545.00', 'Платье отличного качетсва.', 1, 523, 'Barmariska'),
(13, 'Кроссовки Ash', '17900.00', '17500.00', '17000.00', 'Кроссовки для повседнего выхода.', 1, 632, 'Ash'),
(14, 'Ботинки полнота C (3)', '5499.00', '3999.00', '3645.00', 'Ботинки, идеальные для дождливой погоды.', 1, 642, 'Instreet'),
(15, 'Зонт складной', '8200.00', '7250.00', '7012.00', '', 1, 987, 'Moschino');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categoryproduct`
--
ALTER TABLE `categoryproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `imagesproduct`
--
ALTER TABLE `imagesproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_id` (`image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `categoryproduct`
--
ALTER TABLE `categoryproduct`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT для таблицы `imagesproduct`
--
ALTER TABLE `imagesproduct`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `categoryproduct`
--
ALTER TABLE `categoryproduct`
  ADD CONSTRAINT `categoryproduct_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `categoryproduct_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Ограничения внешнего ключа таблицы `imagesproduct`
--
ALTER TABLE `imagesproduct`
  ADD CONSTRAINT `imagesproduct_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`),
  ADD CONSTRAINT `imagesproduct_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
