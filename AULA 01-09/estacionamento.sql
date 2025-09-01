-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/09/2025 às 14:06
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
-- Banco de dados: `estacionamento`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `andar`
--

CREATE TABLE `andar` (
  `codlugar` int(11) NOT NULL,
  `capacidade` int(11) DEFAULT NULL,
  `andar` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `andar`
--

INSERT INTO `andar` (`codlugar`, `capacidade`, `andar`) VALUES
(1, 50, 'Térreo'),
(2, 40, '1º Andar'),
(3, 30, '2º Andar'),
(4, 60, '3º Andar'),
(5, 45, '4º Andar'),
(6, 35, '5º Andar'),
(7, 55, '6º Andar'),
(8, 25, 'Subsolo 1'),
(9, 20, 'Subsolo 2'),
(10, 15, 'Cobertura');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `cpf` varchar(20) NOT NULL,
  `datanasci` datetime DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`cpf`, `datanasci`, `nome`) VALUES
('00000000000', '1994-04-04 00:00:00', 'Bruna Fernandes'),
('11111111111', '1980-01-15 00:00:00', 'João Silva'),
('22222222222', '1990-05-20 00:00:00', 'Maria Souza'),
('33333333333', '1985-10-30 00:00:00', 'Carlos Pereira'),
('44444444444', '1995-08-12 00:00:00', 'Ana Lima'),
('55555555555', '1982-03-25 00:00:00', 'Paulo Costa'),
('66666666666', '1993-07-07 00:00:00', 'Juliana Alves'),
('77777777777', '1988-11-11 00:00:00', 'Lucas Rocha'),
('88888888888', '1991-12-22 00:00:00', 'Fernanda Martins'),
('99999999999', '1987-09-09 00:00:00', 'Ricardo Dias');

-- --------------------------------------------------------

--
-- Estrutura para tabela `estaciona`
--

CREATE TABLE `estaciona` (
  `cod` int(11) NOT NULL,
  `horsaida` datetime DEFAULT NULL,
  `dtentrada` datetime DEFAULT NULL,
  `horentrada` datetime DEFAULT NULL,
  `dtsaida` datetime DEFAULT NULL,
  `placa` varchar(7) DEFAULT NULL,
  `codlugar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estaciona`
--

INSERT INTO `estaciona` (`cod`, `horsaida`, `dtentrada`, `horentrada`, `dtsaida`, `placa`, `codlugar`) VALUES
(1, '2025-09-01 18:00:00', '2025-09-01 00:00:00', '0000-00-00 00:00:00', '2025-09-01 00:00:00', 'ABC1234', 1),
(2, '2025-09-01 19:30:00', '2025-09-01 00:00:00', '0000-00-00 00:00:00', '2025-09-01 00:00:00', 'DEF5678', 2),
(3, '2025-09-01 17:45:00', '2025-09-01 00:00:00', '0000-00-00 00:00:00', '2025-09-01 00:00:00', 'GHI9012', 3),
(4, '2025-09-01 20:00:00', '2025-09-01 00:00:00', '0000-00-00 00:00:00', '2025-09-01 00:00:00', 'JKL3456', 4),
(5, '2025-09-01 18:30:00', '2025-09-01 00:00:00', '0000-00-00 00:00:00', '2025-09-01 00:00:00', 'MNO7890', 5),
(6, '2025-09-01 19:00:00', '2025-09-01 00:00:00', '0000-00-00 00:00:00', '2025-09-01 00:00:00', 'PQR1234', 6),
(7, '2025-09-01 21:00:00', '2025-09-01 00:00:00', '0000-00-00 00:00:00', '2025-09-01 00:00:00', 'STU5678', 7),
(8, '2025-09-01 19:45:00', '2025-09-01 00:00:00', '0000-00-00 00:00:00', '2025-09-01 00:00:00', 'VWX9012', 8),
(9, '2025-09-01 20:15:00', '2025-09-01 00:00:00', '0000-00-00 00:00:00', '2025-09-01 00:00:00', 'YZA3456', 9),
(10, '2025-09-01 21:30:00', '2025-09-01 00:00:00', '0000-00-00 00:00:00', '2025-09-01 00:00:00', 'BCD7890', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `modelo`
--

CREATE TABLE `modelo` (
  `codmodelo` int(11) NOT NULL,
  `modelo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `modelo`
--

INSERT INTO `modelo` (`codmodelo`, `modelo`) VALUES
(1, 'Civic'),
(2, 'Corolla'),
(3, 'Gol'),
(4, 'Uno'),
(5, 'HB20'),
(6, 'Onix'),
(7, 'Fiesta'),
(8, 'Palio'),
(9, 'Compass'),
(10, 'Argo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `placa` varchar(7) NOT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `codmodelo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `veiculo`
--

INSERT INTO `veiculo` (`placa`, `cor`, `cpf`, `codmodelo`) VALUES
('ABC1234', 'Vermelho', '11111111111', 2),
('BCD7890', 'Branco', '00000000000', 10),
('DEF5678', 'Branco', '22222222222', 2),
('GHI9012', 'Prata', '33333333333', 3),
('JKL3456', 'Vermelho', '44444444444', 4),
('MNO7890', 'Azul', '55555555555', 5),
('PQR1234', 'Cinza', '66666666666', 6),
('STU5678', 'Verde', '77777777777', 7),
('VWX9012', 'Amarelo', '88888888888', 8),
('YZA3456', 'Preto', '99999999999', 9);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `andar`
--
ALTER TABLE `andar`
  ADD PRIMARY KEY (`codlugar`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices de tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD PRIMARY KEY (`cod`),
  ADD KEY `placa` (`placa`),
  ADD KEY `codlugar` (`codlugar`);

--
-- Índices de tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codmodelo`);

--
-- Índices de tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`placa`),
  ADD KEY `cpf` (`cpf`),
  ADD KEY `codmodelo` (`codmodelo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `andar`
--
ALTER TABLE `andar`
  MODIFY `codlugar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `estaciona`
--
ALTER TABLE `estaciona`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `modelo`
--
ALTER TABLE `modelo`
  MODIFY `codmodelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `estaciona`
--
ALTER TABLE `estaciona`
  ADD CONSTRAINT `estaciona_ibfk_1` FOREIGN KEY (`placa`) REFERENCES `veiculo` (`placa`),
  ADD CONSTRAINT `estaciona_ibfk_2` FOREIGN KEY (`codlugar`) REFERENCES `andar` (`codlugar`);

--
-- Restrições para tabelas `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `cliente` (`cpf`),
  ADD CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`codmodelo`) REFERENCES `modelo` (`codmodelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
