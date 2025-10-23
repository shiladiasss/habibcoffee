-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23/10/2025 às 15:38
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `habib`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `nome` varchar(80) DEFAULT NULL,
  `cpf` bigint(11) NOT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `cep` int(11) DEFAULT NULL,
  `telefone` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `senha` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cadastro`
--

INSERT INTO `cadastro` (`nome`, `cpf`, `endereco`, `cep`, `telefone`, `email`, `data_nascimento`, `senha`) VALUES
('jonas felipe', 1, 'rua bentevi', 25820555, 2147483647, 'jonas@gmail.com', '2005-05-01', 'euamoaxerlis'),
('jonas namorado da xerlis', 2, 'rua curitiba 1417', 5584444, 459954115, 'jonasfelipe@gmail.com', '2005-05-01', 'euamoashila'),
('maria', 3, 'rua xuxuaxua', 85806150, 2147483647, 'maria@escola.com', '2000-10-08', 'xixa'),
('eduardo', 2147483647, 'rua xaxa', 85806150, 2147483647, 'eduardo@gmail.com', '2008-06-02', 'kakaka'),
('eyshila', 9830102939, 'rua tata', 85806150, 2147483647, 'eysjila@gmail.com', '2008-11-18', 'fiorello');

-- --------------------------------------------------------

--
-- Estrutura para tabela `carrinho`
--

CREATE TABLE `carrinho` (
  `cod_produto` int(11) NOT NULL,
  `data_compra` date DEFAULT NULL,
  `preco` decimal(10,0) DEFAULT NULL,
  `forma_pagamento` varchar(50) DEFAULT NULL,
  `nome_cliente` char(50) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `carrinho`
--

INSERT INTO `carrinho` (`cod_produto`, `data_compra`, `preco`, `forma_pagamento`, `nome_cliente`, `quantidade`, `total`) VALUES
(255, '2025-09-24', 50, '0', 'jonas', 2, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `empresa`
--

CREATE TABLE `empresa` (
  `nome` char(80) NOT NULL,
  `cnpj` int(11) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `telefone` int(11) NOT NULL,
  `email` varchar(180) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `empresa`
--

INSERT INTO `empresa` (`nome`, `cnpj`, `endereco`, `telefone`, `email`) VALUES
('habib', 85802000, 'rua assunção', 2147483647, 'eyshilafernanda2008@gmail.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices de tabela `carrinho`
--
ALTER TABLE `carrinho`
  ADD PRIMARY KEY (`cod_produto`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `cpf` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9830102940;

--
-- AUTO_INCREMENT de tabela `carrinho`
--
ALTER TABLE `carrinho`
  MODIFY `cod_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
