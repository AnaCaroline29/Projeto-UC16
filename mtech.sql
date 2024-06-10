-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11/06/2024 às 01:16
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
-- Banco de dados: `mtech`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_chamados`
--

CREATE TABLE `tb_chamados` (
  `id_chamadosmanutencao` int(11) NOT NULL,
  `id_usuarios` int(11) NOT NULL,
  `id_equipamentos` int(11) NOT NULL,
  `Numerodeserie` varchar(50) NOT NULL,
  `descricaofalha` text NOT NULL,
  `datahorafalha` date NOT NULL,
  `descricaosolucao` text NOT NULL,
  `datahorafechamento` date DEFAULT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_chamados`
--

INSERT INTO `tb_chamados` (`id_chamadosmanutencao`, `id_usuarios`, `id_equipamentos`, `Numerodeserie`, `descricaofalha`, `datahorafalha`, `descricaosolucao`, `datahorafechamento`, `status`) VALUES
(1, 3, 3, '123456', 'Portas avariadas\r\nCabo de energia avariado', '2024-06-08', '', '2024-06-13', 'Aberto'),
(2, 3, 1, '99999', 'Resolução de vídeo fora do padrão', '2024-06-08', 'Atualização de Software', '2024-06-20', 'Encerrado');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_departamentos`
--

CREATE TABLE `tb_departamentos` (
  `id_departamentos` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_departamentos`
--

INSERT INTO `tb_departamentos` (`id_departamentos`, `nome`) VALUES
(1, 'RH'),
(2, 'TI'),
(3, 'LOGÍSTICA'),
(5, 'PPCP'),
(6, 'Marketing');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_descreservas`
--

CREATE TABLE `tb_descreservas` (
  `id` int(11) NOT NULL,
  `id_descreservas` int(11) NOT NULL,
  `id_reservas` int(11) NOT NULL,
  `id_equipamentos` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `valorunit` varchar(150) NOT NULL,
  `quantidade` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_descreservas`
--

INSERT INTO `tb_descreservas` (`id`, `id_descreservas`, `id_reservas`, `id_equipamentos`, `nome`, `valorunit`, `quantidade`) VALUES
(1, 0, 16, 1, 'Notebook POSITIVO', '2150.98', '1'),
(2, 0, 16, 3, 'Switch X Portas', '3500.62', '1'),
(3, 0, 16, 1, 'Notebook POSITIVO', '2150.98', '1'),
(4, 0, 17, 1, 'Notebook POSITIVO', '2150.98', '1'),
(5, 0, 17, 3, 'Switch X Portas', '3500.62', '1'),
(6, 0, 18, 1, 'Notebook POSITIVO', '2150.98', '1'),
(7, 0, 18, 3, 'Switch X Portas', '3500.62', '1'),
(8, 0, 19, 1, 'Notebook POSITIVO', '2150.98', '1'),
(9, 0, 19, 3, 'Switch X Portas', '3500.62', '1'),
(10, 0, 20, 1, 'Notebook POSITIVO', '2150.98', '1'),
(11, 0, 20, 1, 'Notebook POSITIVO', '2150.98', '1'),
(12, 0, 20, 3, 'Switch X Portas', '3500.62', '1'),
(13, 0, 20, 1, 'Notebook POSITIVO', '2150.98', '1'),
(14, 0, 20, 3, 'Switch X Portas', '3500.62', '1'),
(15, 0, 21, 1, 'Notebook POSITIVO', '2150.98', '1'),
(16, 0, 21, 3, 'Switch X Portas', '3500.62', '1'),
(17, 0, 22, 1, 'Notebook POSITIVO', '2150.98', '10'),
(18, 0, 22, 3, 'Switch X Portas', '3500.62', '20'),
(19, 0, 23, 1, 'Notebook POSITIVO', '2150.98', '1000'),
(20, 0, 23, 3, 'Switch X Portas', '3500.62', '999'),
(21, 0, 24, 1, 'Notebook POSITIVO', '2150.98', '1'),
(22, 0, 24, 3, 'Switch X Portas', '3500.62', '1'),
(23, 0, 24, 1, 'Notebook POSITIVO', '2150.98', '1'),
(24, 0, 24, 1, 'Notebook POSITIVO', '2150.98', '1'),
(25, 0, 25, 1, 'Notebook POSITIVO', '2150.98', '1'),
(26, 0, 25, 3, 'Switch X Portas', '3500.62', '1'),
(27, 0, 25, 1, 'Notebook POSITIVO', '2150.98', '1'),
(28, 0, 26, 1, 'Notebook POSITIVO', '2150.98', '1'),
(29, 0, 26, 3, 'Switch X Portas', '3500.62', '1'),
(30, 0, 27, 1, 'Notebook POSITIVO', '2150.98', '1'),
(31, 0, 27, 3, 'Switch X Portas', '3500.62', '1'),
(32, 0, 27, 3, 'Switch X Portas', '3500.62', '1'),
(33, 0, 27, 3, 'Switch X Portas', '3500.62', '1'),
(34, 0, 28, 1, 'Notebook POSITIVO', '2150.98', '1'),
(35, 0, 28, 3, 'Switch X Portas', '3500.62', '1'),
(36, 0, 28, 1, 'Notebook POSITIVO', '2150.98', '1'),
(37, 0, 29, 1, 'Notebook POSITIVO', '2150.98', '1'),
(38, 0, 29, 3, 'Switch X Portas', '3500.62', '1'),
(39, 0, 30, 1, 'Notebook POSITIVO', '2150.98', '1'),
(40, 0, 30, 3, 'Switch X Portas', '3500.62', '1'),
(41, 0, 30, 1, 'Notebook POSITIVO', '2150.98', '1'),
(42, 0, 31, 1, 'Notebook POSITIVO', '2150.98', '10'),
(43, 0, 31, 3, 'Switch X Portas', '3500.62', '5'),
(44, 0, 32, 1, 'Notebook POSITIVO', '2150.98', '10'),
(45, 0, 32, 3, 'Switch X Portas', '3500.62', '45'),
(46, 0, 32, 1, 'Notebook POSITIVO', '2150.98', '1'),
(47, 0, 32, 3, 'Switch X Portas', '3500.62', '1'),
(48, 0, 33, 1, 'Notebook POSITIVO', '2150.98', '120'),
(49, 0, 33, 3, 'Switch X Portas', '3500.62', '50');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_equipamentos`
--

CREATE TABLE `tb_equipamentos` (
  `id_equipamentos` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `modelo` varchar(150) NOT NULL,
  `categoria` varchar(20) NOT NULL,
  `descricao` text NOT NULL,
  `valorunit` float(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_equipamentos`
--

INSERT INTO `tb_equipamentos` (`id_equipamentos`, `nome`, `modelo`, `categoria`, `descricao`, `valorunit`) VALUES
(1, 'Notebook POSITIVO', 'XPTO2', 'OFFICE', 'Máquina utilizada no escritório pela equipe de gestão.', 2150.98),
(3, 'Switch X Portas', 'D-Link', 'REDE', 'Usado para rede da área financeira', 3500.62),
(4, 'Roteador', 'TP-LINK', 'REDE', '', 700.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_reservas`
--

CREATE TABLE `tb_reservas` (
  `id_reservas` int(11) NOT NULL,
  `id_usuarios` int(11) NOT NULL,
  `datareserva` date NOT NULL,
  `datainiciolocacao` date NOT NULL,
  `datafimlocacao` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `proposta` varchar(50) NOT NULL,
  `id_descreservas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_reservas`
--

INSERT INTO `tb_reservas` (`id_reservas`, `id_usuarios`, `datareserva`, `datainiciolocacao`, `datafimlocacao`, `status`, `proposta`, `id_descreservas`) VALUES
(16, 3, '2024-06-04', '2024-06-04', '2024-06-04', 'Em análise', '', 2147483647),
(17, 3, '2024-06-04', '2024-06-04', '2024-06-04', 'Em análise', '', 2147483647),
(18, 3, '2024-06-04', '2024-06-05', '2024-06-06', 'Em análise', '', 66500000),
(19, 3, '2024-06-11', '2024-06-12', '2024-06-13', 'Em análise', '', 66500000),
(20, 3, '2024-06-24', '2024-06-25', '2024-06-26', 'Em análise', '', 2147483647),
(21, 3, '2024-06-04', '2024-06-05', '2024-06-06', 'Em análise', '', 2147483647),
(22, 3, '2024-06-05', '2024-06-06', '2024-06-08', 'Em análise', '', 2147483647),
(23, 3, '2024-06-11', '2024-06-18', '2024-06-25', 'Em análise', '', 2147483647),
(24, 3, '2024-06-11', '2024-06-12', '2024-06-13', 'Em análise', '', 2147483647),
(25, 3, '2024-06-03', '2024-06-04', '2024-06-05', 'Em análise', '', 2147483647),
(26, 3, '2024-06-05', '2024-06-06', '2024-06-07', 'Em análise', '', 2147483647),
(27, 3, '2024-06-04', '2024-06-05', '2024-06-06', 'Em análise', '', 665000000),
(28, 3, '2024-06-11', '2024-06-12', '2024-06-13', 'Em análise', '', 2147483647),
(29, 3, '2024-06-03', '2024-06-04', '2024-06-05', 'Em análise', '', 6660),
(30, 3, '2024-06-07', '2024-06-08', '2024-06-09', 'Em análise', '', 666101),
(31, 3, '2024-06-03', '2024-06-04', '2024-06-05', 'Em análise', '', 666102),
(32, 3, '2024-06-10', '2024-06-11', '2024-06-19', 'Em análise', '', 6661055),
(33, 3, '2024-06-17', '2024-06-18', '2024-06-19', 'Atendido', 'uploads/Contrato.pdf', 666105);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_tipousuario`
--

CREATE TABLE `tb_tipousuario` (
  `id_tipousuario` int(11) NOT NULL,
  `tipo_usuario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_tipousuario`
--

INSERT INTO `tb_tipousuario` (`id_tipousuario`, `tipo_usuario`) VALUES
(1, 'ADMIN'),
(2, 'USER'),
(4, 'CONVIDADO');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_usuarios`
--

CREATE TABLE `tb_usuarios` (
  `id_usuarios` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(150) NOT NULL,
  `cpf_cnpj` varchar(50) NOT NULL,
  `logradouro` varchar(150) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cep` varchar(20) NOT NULL,
  `telefone` varchar(50) NOT NULL,
  `id_tipousuario` int(11) NOT NULL,
  `id_departamentos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`id_usuarios`, `nome`, `email`, `senha`, `cpf_cnpj`, `logradouro`, `numero`, `bairro`, `cep`, `telefone`, `id_tipousuario`, `id_departamentos`) VALUES
(2, 'Admin User', 'admin@example.com', 'admin123', '12345678901', 'Rua Exemplo', '123', 'Bairro Exemplo', '12345678', '123456789', 1, 1),
(3, 'Xunda Santos Silva', 'xunda@gmail.com', '123456', '999999', 'Rua Teste', '123', 'Teste', '07156486', '(11) 99898-4024', 2, 1),
(4, 'Antonio Nunes', 'Antonio@hotmail.com', '123456789', '4845645645464', 'casa', '241', 'algum', '07165847', '11965874150', 2, 3);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_chamados`
--
ALTER TABLE `tb_chamados`
  ADD PRIMARY KEY (`id_chamadosmanutencao`),
  ADD KEY `id_usuarios` (`id_usuarios`),
  ADD KEY `id_equipamentos` (`id_equipamentos`);

--
-- Índices de tabela `tb_departamentos`
--
ALTER TABLE `tb_departamentos`
  ADD PRIMARY KEY (`id_departamentos`);

--
-- Índices de tabela `tb_descreservas`
--
ALTER TABLE `tb_descreservas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_reservas` (`id_reservas`),
  ADD KEY `id_equipamentos` (`id_equipamentos`);

--
-- Índices de tabela `tb_equipamentos`
--
ALTER TABLE `tb_equipamentos`
  ADD PRIMARY KEY (`id_equipamentos`);

--
-- Índices de tabela `tb_reservas`
--
ALTER TABLE `tb_reservas`
  ADD PRIMARY KEY (`id_reservas`),
  ADD KEY `id_usuarios` (`id_usuarios`);

--
-- Índices de tabela `tb_tipousuario`
--
ALTER TABLE `tb_tipousuario`
  ADD PRIMARY KEY (`id_tipousuario`);

--
-- Índices de tabela `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD PRIMARY KEY (`id_usuarios`),
  ADD KEY `id_tipousuario` (`id_tipousuario`),
  ADD KEY `id_departamentos` (`id_departamentos`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_chamados`
--
ALTER TABLE `tb_chamados`
  MODIFY `id_chamadosmanutencao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_departamentos`
--
ALTER TABLE `tb_departamentos`
  MODIFY `id_departamentos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tb_descreservas`
--
ALTER TABLE `tb_descreservas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de tabela `tb_equipamentos`
--
ALTER TABLE `tb_equipamentos`
  MODIFY `id_equipamentos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tb_reservas`
--
ALTER TABLE `tb_reservas`
  MODIFY `id_reservas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de tabela `tb_tipousuario`
--
ALTER TABLE `tb_tipousuario`
  MODIFY `id_tipousuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `id_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tb_chamados`
--
ALTER TABLE `tb_chamados`
  ADD CONSTRAINT `tb_chamados_ibfk_1` FOREIGN KEY (`id_usuarios`) REFERENCES `tb_usuarios` (`id_usuarios`),
  ADD CONSTRAINT `tb_chamados_ibfk_2` FOREIGN KEY (`id_equipamentos`) REFERENCES `tb_equipamentos` (`id_equipamentos`);

--
-- Restrições para tabelas `tb_descreservas`
--
ALTER TABLE `tb_descreservas`
  ADD CONSTRAINT `tb_descreservas_ibfk_1` FOREIGN KEY (`id_reservas`) REFERENCES `tb_reservas` (`id_reservas`),
  ADD CONSTRAINT `tb_descreservas_ibfk_2` FOREIGN KEY (`id_equipamentos`) REFERENCES `tb_equipamentos` (`id_equipamentos`);

--
-- Restrições para tabelas `tb_reservas`
--
ALTER TABLE `tb_reservas`
  ADD CONSTRAINT `tb_reservas_ibfk_1` FOREIGN KEY (`id_usuarios`) REFERENCES `tb_usuarios` (`id_usuarios`);

--
-- Restrições para tabelas `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD CONSTRAINT `tb_usuarios_ibfk_1` FOREIGN KEY (`id_tipousuario`) REFERENCES `tb_tipousuario` (`id_tipousuario`),
  ADD CONSTRAINT `tb_usuarios_ibfk_2` FOREIGN KEY (`id_departamentos`) REFERENCES `tb_departamentos` (`id_departamentos`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
