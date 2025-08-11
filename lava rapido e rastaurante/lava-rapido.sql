-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11/08/2025 às 13:17
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
-- Banco de dados: `lava-rapido`
--
CREATE DATABASE IF NOT EXISTS `lava-rapido` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lava-rapido`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `atendimento`
--

CREATE TABLE `atendimento` (
  `codatendimento` int(11) NOT NULL,
  `totalgeral` decimal(10,2) NOT NULL,
  `dataatendimento` date NOT NULL,
  `fk_codatendimento_servico` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atendimento`
--

INSERT INTO `atendimento` (`codatendimento`, `totalgeral`, `dataatendimento`, `fk_codatendimento_servico`) VALUES
(1, 250.00, '2025-01-15', 1),
(2, 150.00, '2025-02-10', 2),
(3, 300.00, '2025-03-05', 3),
(4, 200.00, '2025-04-22', 4),
(5, 400.00, '2025-05-19', 5),
(6, 100.00, '2025-06-08', 6),
(7, 350.00, '2025-07-01', 7),
(8, 275.00, '2025-07-15', 8),
(9, 180.00, '2025-07-28', 9),
(10, 220.00, '2025-08-10', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `atendimento_servico`
--

CREATE TABLE `atendimento_servico` (
  `codatendimento_servico` int(11) NOT NULL,
  `totalservico` decimal(10,2) NOT NULL,
  `qtde` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atendimento_servico`
--

INSERT INTO `atendimento_servico` (`codatendimento_servico`, `totalservico`, `qtde`) VALUES
(1, 250.00, 2),
(2, 150.00, 1),
(3, 300.00, 3),
(4, 200.00, 2),
(5, 400.00, 4),
(6, 100.00, 1),
(7, 350.00, 3),
(8, 275.00, 2),
(9, 180.00, 1),
(10, 220.00, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `carro`
--

CREATE TABLE `carro` (
  `codcarro` int(11) NOT NULL,
  `ano` int(11) NOT NULL,
  `fk_codcliente` int(11) DEFAULT NULL,
  `fk_codmodelo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `carro`
--

INSERT INTO `carro` (`codcarro`, `ano`, `fk_codcliente`, `fk_codmodelo`) VALUES
(1, 2018, 1, 1),
(2, 2019, 2, 2),
(3, 2017, 3, 3),
(4, 2020, 4, 4),
(5, 2021, 5, 5),
(6, 2016, 6, 6),
(7, 2015, 7, 7),
(8, 2022, 8, 8),
(9, 2023, 9, 9),
(10, 2024, 10, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `codcliente` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `datanascimento` date NOT NULL,
  `telefone` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fk_codendereco` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`codcliente`, `nome`, `datanascimento`, `telefone`, `email`, `fk_codendereco`) VALUES
(1, 'João Silva', '1985-03-15', 119999999, 'joao@gmail.com', 1),
(2, 'Maria Souza', '1990-07-22', 219888888, 'maria@gmail.com', 2),
(3, 'Pedro Santos', '1978-11-30', 319777777, 'pedro@gmail.com', 3),
(4, 'Ana Oliveira', '1995-02-17', 419666666, 'ana@gmail.com', 4),
(5, 'Carlos Lima', '1982-09-05', 119555555, 'carlos@gmail.com', 5),
(6, 'Juliana Rocha', '1987-06-12', 219444444, 'juliana@gmail.com', 6),
(7, 'Fernando Costa', '1975-04-09', 319333333, 'fernando@gmail.com', 7),
(8, 'Patrícia Mendes', '1993-01-25', 419222222, 'patricia@gmail.com', 8),
(9, 'Lucas Moreira', '1989-10-03', 519111111, 'lucas@gmail.com', 9),
(10, 'Amanda Ribeiro', '1997-12-19', 719000000, 'amanda@gmail.com', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `endereco`
--

CREATE TABLE `endereco` (
  `codendereco` int(11) NOT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `estado` char(2) DEFAULT NULL,
  `cep` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `endereco`
--

INSERT INTO `endereco` (`codendereco`, `rua`, `num`, `bairro`, `cidade`, `estado`, `cep`) VALUES
(1, 'Rua das Flores', 123, 'Centro', 'São Paulo', 'SP', '01001000'),
(2, 'Av. Brasil', 456, 'Jardins', 'Rio de Janeiro', 'RJ', '22041001'),
(3, 'Rua A', 789, 'Industrial', 'Belo Horizonte', 'MG', '30130000'),
(4, 'Rua B', 321, 'Centro', 'Curitiba', 'PR', '80010000'),
(5, 'Av. Paulista', 1111, 'Bela Vista', 'São Paulo', 'SP', '01311000'),
(6, 'Rua das Palmeiras', 222, 'Botafogo', 'Rio de Janeiro', 'RJ', '22250040'),
(7, 'Av. Amazonas', 333, 'Centro', 'Belo Horizonte', 'MG', '30180000'),
(8, 'Rua XV de Novembro', 444, 'Centro', 'Curitiba', 'PR', '80020010'),
(9, 'Av. Independência', 555, 'Centro', 'Porto Alegre', 'RS', '90035900'),
(10, 'Rua do Comércio', 666, 'Comercial', 'Salvador', 'BA', '40020000');

-- --------------------------------------------------------

--
-- Estrutura para tabela `marca`
--

CREATE TABLE `marca` (
  `codmarca` int(11) NOT NULL,
  `marca` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `marca`
--

INSERT INTO `marca` (`codmarca`, `marca`) VALUES
(4, 'Chevrolet'),
(8, 'Fiat'),
(3, 'Ford'),
(2, 'Honda'),
(6, 'Hyundai'),
(7, 'Nissan'),
(9, 'Peugeot'),
(10, 'Renault'),
(1, 'Toyota'),
(5, 'Volkswagen');

-- --------------------------------------------------------

--
-- Estrutura para tabela `modelo`
--

CREATE TABLE `modelo` (
  `codmodelo` int(11) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `fk_codmarca` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `modelo`
--

INSERT INTO `modelo` (`codmodelo`, `modelo`, `fk_codmarca`) VALUES
(1, 'Corolla', 1),
(2, 'Civic', 2),
(3, 'Focus', 3),
(4, 'Onix', 4),
(5, 'Golf', 5),
(6, 'HB20', 6),
(7, 'Sentra', 7),
(8, 'Argo', 8),
(9, '208', 9),
(10, 'Clio', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `servico`
--

CREATE TABLE `servico` (
  `codservico` int(11) NOT NULL,
  `servico` varchar(255) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `frk_codatendimento_servico` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `servico`
--

INSERT INTO `servico` (`codservico`, `servico`, `valor`, `frk_codatendimento_servico`) VALUES
(1, 'Troca de óleo', 120.00, 1),
(2, 'Alinhamento', 150.00, 2),
(3, 'Balanceamento', 100.00, 3),
(4, 'Revisão geral', 200.00, 4),
(5, 'Troca de pneus', 400.00, 5),
(6, 'Lavagem completa', 100.00, 6),
(7, 'Troca de filtro', 150.00, 7),
(8, 'Freio', 275.00, 8),
(9, 'Troca de bateria', 180.00, 9),
(10, 'Check-up eletrônico', 220.00, 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `atendimento`
--
ALTER TABLE `atendimento`
  ADD PRIMARY KEY (`codatendimento`),
  ADD KEY `fk_codatendimento_servico` (`fk_codatendimento_servico`);

--
-- Índices de tabela `atendimento_servico`
--
ALTER TABLE `atendimento_servico`
  ADD PRIMARY KEY (`codatendimento_servico`);

--
-- Índices de tabela `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`codcarro`),
  ADD KEY `fk_codcliente` (`fk_codcliente`),
  ADD KEY `fk_codmodelo` (`fk_codmodelo`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codcliente`),
  ADD KEY `fk_codendereco` (`fk_codendereco`);

--
-- Índices de tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`codendereco`);

--
-- Índices de tabela `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`codmarca`),
  ADD UNIQUE KEY `marca` (`marca`);

--
-- Índices de tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codmodelo`),
  ADD UNIQUE KEY `modelo` (`modelo`),
  ADD KEY `fk_codmarca` (`fk_codmarca`);

--
-- Índices de tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`codservico`),
  ADD UNIQUE KEY `servico` (`servico`),
  ADD KEY `frk_codatendimento_servico` (`frk_codatendimento_servico`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `atendimento`
--
ALTER TABLE `atendimento`
  MODIFY `codatendimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `atendimento_servico`
--
ALTER TABLE `atendimento_servico`
  MODIFY `codatendimento_servico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `carro`
--
ALTER TABLE `carro`
  MODIFY `codcarro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `codcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `codendereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `marca`
--
ALTER TABLE `marca`
  MODIFY `codmarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `modelo`
--
ALTER TABLE `modelo`
  MODIFY `codmodelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `codservico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `atendimento`
--
ALTER TABLE `atendimento`
  ADD CONSTRAINT `atendimento_ibfk_1` FOREIGN KEY (`fk_codatendimento_servico`) REFERENCES `atendimento_servico` (`codatendimento_servico`);

--
-- Restrições para tabelas `carro`
--
ALTER TABLE `carro`
  ADD CONSTRAINT `carro_ibfk_1` FOREIGN KEY (`fk_codcliente`) REFERENCES `cliente` (`codcliente`),
  ADD CONSTRAINT `carro_ibfk_2` FOREIGN KEY (`fk_codmodelo`) REFERENCES `modelo` (`codmodelo`);

--
-- Restrições para tabelas `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`fk_codendereco`) REFERENCES `endereco` (`codendereco`);

--
-- Restrições para tabelas `modelo`
--
ALTER TABLE `modelo`
  ADD CONSTRAINT `modelo_ibfk_1` FOREIGN KEY (`fk_codmarca`) REFERENCES `marca` (`codmarca`);

--
-- Restrições para tabelas `servico`
--
ALTER TABLE `servico`
  ADD CONSTRAINT `servico_ibfk_1` FOREIGN KEY (`frk_codatendimento_servico`) REFERENCES `atendimento_servico` (`codatendimento_servico`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
