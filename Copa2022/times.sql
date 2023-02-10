-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Dez-2022 às 23:04
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `votos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `times`
--

CREATE TABLE `times` (
  `id` int(11) NOT NULL,
  `selecoes` varchar(220) NOT NULL,
  `qntvoto` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `times`
--

INSERT INTO `times` (`id`, `selecoes`, `qntvoto`) VALUES
(1, 'Catar', 2),
(2, 'Equador', 1),
(3, 'Holanda', 0),
(4, 'Senegal', 0),
(5, 'Estados Unidos', 0),
(6, 'Inglaterra', 0),
(7, 'Irã', 0),
(8, 'País de Gales\r\n', 0),
(9, 'Argentina\r\n', 0),
(10, 'Arábia Saudita', 0),
(11, 'México\r\n', 0),
(12, 'Polônia', 0),
(13, 'França', 0),
(14, 'Dinamarca\r\n', 0),
(15, 'Tunísia', 0),
(16, 'Austrália\r\n', 0),
(17, 'Espanha\r\n', 0),
(18, 'Alemanha\r\n', 0),
(19, 'Japão\r\n', 0),
(20, 'Costa Rica', 0),
(21, 'Bélgica', 0),
(22, 'Canadá\r\n', 0),
(23, 'Marrocos', 0),
(24, 'Croácia\r\n', 0),
(25, 'Brasil', 1),
(26, 'Sérvia', 0),
(27, 'Suíça\r\n', 0),
(28, 'Camarões\r\n', 0),
(29, 'Portugal', 0),
(30, 'Gana', 0),
(31, 'Uruguai\r\n', 0),
(32, 'Coreia do Sul', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `times`
--
ALTER TABLE `times`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `times`
--
ALTER TABLE `times`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
