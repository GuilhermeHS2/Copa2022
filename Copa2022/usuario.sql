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
-- Banco de dados: `cadastro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(110) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sexo` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_nasc` date DEFAULT NULL,
  `senha` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `email`, `telefone`, `sexo`, `data_nasc`, `senha`) VALUES
(3, 'emilia', 'emilia@gmail.com', '43996612110', 'feminino', '2022-11-26', '123'),
(4, 'Guilherme', 'cagasero2872@gmail.com', '43996612110', 'masculino', '2022-11-26', '12345'),
(5, 'teste', 'teste@gmail.com', '11111111', 'masculino', '2022-11-26', '123'),
(6, 'Bruno Felipe Santos da Silva', 'bruno-lipe1953@hotmail.com', '43996687696', 'masculino', '2000-06-02', 'panasonic.1'),
(7, 'gui', 'teste2@gmail.com', '111', 'masculino', '2022-11-29', '123'),
(8, 'joao', 'joao@gmail.com', '12', 'outro', '2022-11-29', '123'),
(9, 'gui', 'guizin@hotmail.com', '122', 'masculino', '2022-11-29', '123'),
(10, 'teste', 'teste01@gmail.com', '111111', 'masculino', '2022-12-04', '123'),
(11, 'teste2', 'teste02@gmail.com', '111111', 'feminino', '2022-12-04', '123'),
(12, 'leonardo', 'leo@gmail.com', '999541843', 'masculino', '2022-12-06', '123456');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
