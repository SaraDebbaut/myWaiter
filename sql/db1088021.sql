-- phpMyAdmin SQL Dump
-- version 3.3.0
-- http://www.phpmyadmin.net
--
-- Machine: localhost
-- Genereertijd: 28 Feb 2012 om 20:59
-- Serverversie: 5.1.41
-- PHP-Versie: 5.2.11

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db1088021`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(65) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Gegevens worden uitgevoerd voor tabel `menu`
--

INSERT INTO `menu` (`id`, `name`) VALUES
(1, 'pizza'),
(2, 'pasta');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `id_menu` int(4) NOT NULL,
  `name` varchar(65) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Gegevens worden uitgevoerd voor tabel `products`
--

INSERT INTO `products` (`id`, `id_menu`, `name`) VALUES
(1, 1, 'vier kazen'),
(2, 1, 'polo'),
(3, 2, 'lazagne'),
(4, 2, 'ravioli');
