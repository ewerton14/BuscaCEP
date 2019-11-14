-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15-Nov-2019 às 11:22
-- Versão do servidor: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistemacep`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `consultacep`
--

CREATE TABLE `consultacep` (
  `id` int(11) NOT NULL,
  `cep` varchar(50) NOT NULL,
  `rua` varchar(50) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `consultacep`
--

INSERT INTO `consultacep` (`id`, `cep`, `rua`, `bairro`, `cidade`, `estado`) VALUES
(8, '08381-155', 'Rua Takao Minami', 'Jardim da Laranjeira (Zona Leste)', 'SÃ£o Paulo', 'SP'),
(9, '08395-220', 'Travessa AntÃ´nio Duni', 'Conjunto Promorar Rio Claro', 'SÃ£o Paulo', 'SP');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `consultacep`
--
ALTER TABLE `consultacep`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `consultacep`
--
ALTER TABLE `consultacep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
