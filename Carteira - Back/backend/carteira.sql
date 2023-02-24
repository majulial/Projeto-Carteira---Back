-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Fev-2023 às 20:05
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `carteira`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `valores`
--

CREATE TABLE `valores` (
  `ID` int(11) NOT NULL,
  `entrada` double(10,2) DEFAULT NULL,
  `saida` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `valores`
--

INSERT INTO `valores` (`ID`, `entrada`, `saida`) VALUES
(13, 200.00, NULL),
(14, 150.00, NULL),
(16, NULL, 250.00),
(17, 0.00, NULL),
(18, 250.00, NULL),
(19, NULL, 500.00),
(20, 500.00, NULL),
(21, 500.00, NULL),
(22, 300.00, NULL),
(23, NULL, 500.00),
(24, NULL, 650.00),
(25, 500.00, NULL),
(26, 500.00, NULL),
(27, NULL, 200.00),
(28, NULL, 0.00),
(29, NULL, 0.00),
(30, 0.00, NULL),
(31, 0.00, NULL),
(32, 200.00, NULL),
(33, 300.00, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `valores`
--
ALTER TABLE `valores`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `valores`
--
ALTER TABLE `valores`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
