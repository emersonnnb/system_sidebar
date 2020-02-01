-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 31/01/2020 às 23:39
-- Versão do servidor: 5.7.28-0ubuntu0.18.04.4
-- Versão do PHP: 7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `gap`
--
CREATE DATABASE IF NOT EXISTS `gap` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `gap`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `id_produto` int(11) NOT NULL,
  `dat_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nome` varchar(30) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `preco` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `categoria` varchar(255) DEFAULT NULL,
  `situacao` varchar(255) DEFAULT NULL,
  `uni_medida` varchar(255) DEFAULT NULL,
  `cod_ean` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `produto`
--

INSERT INTO `produto` (`id_produto`, `dat_cadastro`, `nome`, `descricao`, `preco`, `tipo`, `categoria`, `situacao`, `uni_medida`, `cod_ean`) VALUES
(1, '2019-11-28 02:31:43', 'Trakinas', 'Biscoito trakinas morango', '2,00', 'simples', 'Biscoitos', '1', 'UN', '78912345611'),
(2, '2019-11-28 03:04:07', 'wef', 'wefwe', '1', 'e', 'wqed', 'wqed', 'qdew', 'qwd'),
(3, '2019-11-28 03:04:12', 'wef', 'wefwe', '1', 'e', 'wqed', 'wqed', 'qdew', 'qwd');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tipo_acesso` int(11) DEFAULT NULL,
  `situacao` varchar(255) DEFAULT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `numero` int(255) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `cep` int(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `data_cadastro`, `nome`, `email`, `tipo_acesso`, `situacao`, `rua`, `numero`, `complemento`, `estado`, `cidade`, `cep`, `senha`, `user`) VALUES
(1, '2019-11-28 02:31:43', 'emerson ', 'teste@teste.com.br', 1, 'ativo', NULL, NULL, NULL, NULL, NULL, NULL, '7c4a8d09ca3762af61e59520943dc26494f8941b', 'admin'),
(2, '2019-11-28 02:52:57', 'Emerson de oliveira barbosa', 'emersonnnb@hotmail.com', 1, 'ativo', 'teste', 1, 'sdvfvc', 'Rio de Janeiro', 'Belford Roxo', 123445, 'e10adc3949ba59abbe56e057f20f883e', 'wervwr');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id_produto`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
