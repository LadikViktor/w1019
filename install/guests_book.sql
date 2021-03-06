-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 26 2020 г., 21:36
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `guests_book`
--
CREATE DATABASE IF NOT EXISTS `guests_book` DEFAULT CHARACTER SET utf16 COLLATE utf16_bin;
USE `guests_book`;

-- --------------------------------------------------------

--
-- Структура таблицы `gb`
--

CREATE TABLE `gb` (
  `id` int(11) NOT NULL COMMENT '№',
  `text` text COLLATE utf16_bin NOT NULL COMMENT 'Текст',
  `name` varchar(60) COLLATE utf16_bin NOT NULL COMMENT 'Имя'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Дамп данных таблицы `gb`
--

INSERT INTO `gb` (`id`, `text`, `name`) VALUES
(1, 'Hello', 'Vasya'),
(2, 'Hello', 'Vasya'),
(8, 'addssss', 'somedddd'),
(13, 'addss', 'nameass'),
(14, 'add', 'soe'),
(15, 'add', 's');

-- --------------------------------------------------------

--
-- Структура таблицы `guestbook`
--

CREATE TABLE `guestbook` (
  `id` int(11) NOT NULL COMMENT '№',
  `text` text COLLATE utf16_bin NOT NULL COMMENT 'Текст',
  `phonenumber` varchar(50) COLLATE utf16_bin NOT NULL COMMENT 'Телефон',
  `email` varchar(50) COLLATE utf16_bin NOT NULL COMMENT 'Почта',
  `name` varchar(50) COLLATE utf16_bin NOT NULL COMMENT 'Имя'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Дамп данных таблицы `guestbook`
--

INSERT INTO `guestbook` (`id`, `text`, `phonenumber`, `email`, `name`) VALUES
(1, 'aaa', 'dd', 'ff@mail.ru', 'dd');

-- --------------------------------------------------------

--
-- Структура таблицы `phonebook`
--

CREATE TABLE `phonebook` (
  `id` int(11) NOT NULL COMMENT '№',
  `phone` varchar(50) COLLATE utf16_bin NOT NULL COMMENT 'Телефон',
  `adress` varchar(100) COLLATE utf16_bin NOT NULL COMMENT 'Адрес',
  `name` varchar(60) COLLATE utf16_bin NOT NULL COMMENT 'Имя'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Дамп данных таблицы `phonebook`
--

INSERT INTO `phonebook` (`id`, `phone`, `adress`, `name`) VALUES
(1, '1234567', 'number', 'Petya'),
(2, '7654321', 'number', 'Nick'),
(3, '22222', 'numb', 'Name'),
(4, '333333', 'ggggg', 'fffff'),
(5, '33333', 'street', 'Mike'),
(6, '3', 'f', 'e'),
(7, '', '', ''),
(8, '1234567', 'adress', 'name');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `gb`
--
ALTER TABLE `gb`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `guestbook`
--
ALTER TABLE `guestbook`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `phonebook`
--
ALTER TABLE `phonebook`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `gb`
--
ALTER TABLE `gb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '№', AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `guestbook`
--
ALTER TABLE `guestbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '№', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `phonebook`
--
ALTER TABLE `phonebook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '№', AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;