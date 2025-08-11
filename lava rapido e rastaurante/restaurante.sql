-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11/08/2025 às 13:29
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `restaurante`
--
CREATE DATABASE IF NOT EXISTS `restaurante` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `restaurante`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `vlr_cliente` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `vlr_cliente`) VALUES
(1, 150.00),
(2, 200.00),
(3, 50.00),
(4, 80.00),
(5, 120.00),
(6, 300.00),
(7, 100.00),
(8, 250.00),
(9, 60.00),
(10, 90.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `conta`
--

CREATE TABLE `conta` (
  `id_conta` int(11) NOT NULL,
  `hora_entrada` datetime NOT NULL,
  `hora_saida` datetime DEFAULT NULL,
  `vlr_total` decimal(10,2) DEFAULT NULL,
  `numero_mesa` int(11) NOT NULL,
  `id_garcom` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `conta`
--

INSERT INTO `conta` (`id_conta`, `hora_entrada`, `hora_saida`, `vlr_total`, `numero_mesa`, `id_garcom`, `id_cliente`) VALUES
(1, '2025-08-10 18:00:00', '2025-08-10 19:30:00', 120.00, 1, 1, 1),
(2, '2025-08-10 18:15:00', '2025-08-10 20:00:00', 200.00, 2, 2, 2),
(3, '2025-08-10 19:00:00', NULL, NULL, 3, 3, 3),
(4, '2025-08-10 17:45:00', '2025-08-10 18:50:00', 80.00, 4, 4, 4),
(5, '2025-08-10 18:30:00', '2025-08-10 20:15:00', 300.00, 5, 5, 6),
(6, '2025-08-10 19:10:00', NULL, NULL, 6, 6, 7),
(7, '2025-08-10 18:05:00', '2025-08-10 19:00:00', 90.00, 7, 7, 10),
(8, '2025-08-10 19:30:00', NULL, NULL, 8, 8, 8),
(9, '2025-08-10 18:20:00', '2025-08-10 19:40:00', 60.00, 9, 9, 9),
(10, '2025-08-10 17:50:00', '2025-08-10 18:30:00', 100.00, 10, 10, 7);

-- --------------------------------------------------------

--
-- Estrutura para tabela `garcom`
--

CREATE TABLE `garcom` (
  `id_garcom` int(11) NOT NULL,
  `nome_garcom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `garcom`
--

INSERT INTO `garcom` (`id_garcom`, `nome_garcom`) VALUES
(1, 'Carlos Silva'),
(2, 'Ana Pereira'),
(3, 'João Souza'),
(4, 'Mariana Alves'),
(5, 'Pedro Costa'),
(6, 'Luiza Ramos'),
(7, 'Ricardo Lima'),
(8, 'Fernanda Dias'),
(9, 'Bruno Rocha'),
(10, 'Patrícia Nunes');

-- --------------------------------------------------------

--
-- Estrutura para tabela `item_cardapio`
--

CREATE TABLE `item_cardapio` (
  `id_item` int(11) NOT NULL,
  `descricao_item` varchar(255) NOT NULL,
  `preco` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `item_cardapio`
--

INSERT INTO `item_cardapio` (`id_item`, `descricao_item`, `preco`) VALUES
(1, 'Pizza Margherita', 35.00),
(2, 'Hamburguer Clássico', 25.00),
(3, 'Refrigerante 350ml', 7.00),
(4, 'Salada Caesar', 20.00),
(5, 'Espaguete à Bolonhesa', 40.00),
(6, 'Suco Natural Laranja', 10.00),
(7, 'Bife Acebolado', 50.00),
(8, 'Água Mineral 500ml', 5.00),
(9, 'Sobremesa Pudim', 15.00),
(10, 'Café Expresso', 8.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `item_pedido`
--

CREATE TABLE `item_pedido` (
  `id_item` int(11) NOT NULL,
  `id_conta` int(11) NOT NULL,
  `descricao_item` varchar(255) NOT NULL,
  `qtd_item` int(11) NOT NULL,
  `vlr_total_item` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `item_pedido`
--

INSERT INTO `item_pedido` (`id_item`, `id_conta`, `descricao_item`, `qtd_item`, `vlr_total_item`) VALUES
(1, 1, 'Pizza Margherita', 1, 35.00),
(2, 2, 'Hamburguer Clássico', 3, 75.00),
(3, 1, 'Refrigerante 350ml', 1, 7.00),
(4, 2, 'Salada Caesar', 2, 40.00),
(5, 5, 'Espaguete à Bolonhesa', 1, 40.00),
(6, 9, 'Suco Natural Laranja', 4, 40.00),
(7, 5, 'Bife Acebolado', 2, 100.00),
(8, 10, 'Água Mineral 500ml', 2, 10.00),
(9, 4, 'Sobremesa Pudim', 1, 15.00),
(10, 7, 'Café Expresso', 3, 24.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `mesa`
--

CREATE TABLE `mesa` (
  `numero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `mesa`
--

INSERT INTO `mesa` (`numero`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices de tabela `conta`
--
ALTER TABLE `conta`
  ADD PRIMARY KEY (`id_conta`),
  ADD KEY `numero_mesa` (`numero_mesa`),
  ADD KEY `id_garcom` (`id_garcom`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Índices de tabela `garcom`
--
ALTER TABLE `garcom`
  ADD PRIMARY KEY (`id_garcom`);

--
-- Índices de tabela `item_cardapio`
--
ALTER TABLE `item_cardapio`
  ADD PRIMARY KEY (`id_item`);

--
-- Índices de tabela `item_pedido`
--
ALTER TABLE `item_pedido`
  ADD PRIMARY KEY (`id_item`,`id_conta`),
  ADD KEY `id_conta` (`id_conta`);

--
-- Índices de tabela `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`numero`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `conta`
--
ALTER TABLE `conta`
  ADD CONSTRAINT `conta_ibfk_1` FOREIGN KEY (`numero_mesa`) REFERENCES `mesa` (`numero`),
  ADD CONSTRAINT `conta_ibfk_2` FOREIGN KEY (`id_garcom`) REFERENCES `garcom` (`id_garcom`),
  ADD CONSTRAINT `conta_ibfk_3` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);

--
-- Restrições para tabelas `item_pedido`
--
ALTER TABLE `item_pedido`
  ADD CONSTRAINT `item_pedido_ibfk_1` FOREIGN KEY (`id_item`) REFERENCES `item_cardapio` (`id_item`),
  ADD CONSTRAINT `item_pedido_ibfk_2` FOREIGN KEY (`id_conta`) REFERENCES `conta` (`id_conta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
