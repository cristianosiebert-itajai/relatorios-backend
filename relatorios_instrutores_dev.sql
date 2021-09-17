-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 17-Set-2021 às 16:45
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `relatorios_instrutores_dev`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aularegistros`
--

DROP TABLE IF EXISTS `aularegistros`;
CREATE TABLE IF NOT EXISTS `aularegistros` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `registro_id` int(11) NOT NULL,
  `aula` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aularegistros`
--

INSERT INTO `aularegistros` (`id`, `registro_id`, `aula`, `createdAt`, `updatedAt`) VALUES
(3, 44, 3, '2021-08-13 13:49:20', '2021-08-13 13:49:20'),
(4, 44, 5, '2021-08-13 13:49:20', '2021-08-13 13:49:20'),
(5, 45, 2, '2021-08-13 13:55:12', '2021-08-13 13:55:12'),
(6, 45, 4, '2021-08-13 13:55:12', '2021-08-13 13:55:12'),
(7, 45, 3, '2021-08-13 13:55:12', '2021-08-13 13:55:12'),
(8, 48, 2, '2021-08-24 12:44:21', '2021-08-24 12:44:21'),
(9, 48, 4, '2021-08-24 12:44:21', '2021-08-24 12:44:21'),
(22, 43, 4, '2021-08-24 14:03:36', '2021-08-24 14:03:36'),
(23, 43, 5, '2021-08-24 14:03:36', '2021-08-24 14:03:36'),
(24, 43, 1, '2021-08-24 14:03:36', '2021-08-24 14:03:36'),
(25, 49, 4, '2021-08-24 14:29:29', '2021-08-24 14:29:29'),
(26, 49, 3, '2021-08-24 14:29:29', '2021-08-24 14:29:29'),
(27, 54, 2, '2021-08-24 12:44:21', '2021-08-24 19:15:47'),
(28, 54, 4, '2021-08-24 12:44:21', '2021-08-24 19:15:47'),
(29, 55, 2, '2021-08-24 12:44:21', '2021-08-24 19:19:07'),
(30, 55, 4, '2021-08-24 12:44:21', '2021-08-24 19:19:07'),
(31, 56, 2, '2021-08-24 12:44:21', '2021-08-24 19:20:26'),
(32, 56, 4, '2021-08-24 12:44:21', '2021-08-24 19:20:26'),
(33, 57, 2, '2021-08-24 12:44:21', '2021-08-24 19:21:20'),
(34, 57, 4, '2021-08-24 12:44:21', '2021-08-24 19:21:20'),
(35, 58, 2, '2021-08-24 12:44:21', '2021-08-24 19:31:06'),
(36, 58, 4, '2021-08-24 12:44:21', '2021-08-24 19:31:06'),
(37, 59, 2, '2021-08-24 12:44:21', '2021-08-24 19:48:19'),
(38, 59, 4, '2021-08-24 12:44:21', '2021-08-24 19:48:19'),
(52, 72, 3, '2021-09-14 12:31:08', '2021-09-14 12:31:08'),
(53, 67, 4, '2021-09-14 12:31:18', '2021-09-14 12:31:18'),
(54, 68, 4, '2021-09-14 12:31:26', '2021-09-14 12:31:26'),
(55, 69, 4, '2021-09-14 12:31:36', '2021-09-14 12:31:36'),
(56, 70, 4, '2021-09-14 12:31:41', '2021-09-14 12:31:41'),
(57, 71, 4, '2021-09-14 12:31:46', '2021-09-14 12:31:46'),
(59, 73, 3, '2021-09-14 12:32:06', '2021-09-14 12:32:06'),
(61, 74, 3, '2021-09-14 12:32:22', '2021-09-14 12:32:22'),
(63, 75, 3, '2021-09-14 12:32:42', '2021-09-14 12:32:42'),
(76, 81, 4, '2021-09-14 12:41:34', '2021-09-14 12:41:34'),
(78, 82, 4, '2021-09-14 12:42:21', '2021-09-14 12:42:21'),
(80, 83, 4, '2021-09-14 12:42:36', '2021-09-14 12:42:36'),
(82, 84, 4, '2021-09-14 12:42:54', '2021-09-14 12:42:54'),
(84, 85, 1, '2021-09-14 12:43:47', '2021-09-14 12:43:47'),
(86, 86, 1, '2021-09-14 12:44:11', '2021-09-14 12:44:11'),
(88, 87, 1, '2021-09-14 12:44:34', '2021-09-14 12:44:34'),
(90, 88, 1, '2021-09-14 12:45:05', '2021-09-14 12:45:05'),
(92, 89, 1, '2021-09-14 12:45:25', '2021-09-14 12:45:25'),
(93, 80, 1, '2021-09-14 12:46:43', '2021-09-14 12:46:43'),
(94, 79, 1, '2021-09-14 12:46:56', '2021-09-14 12:46:56'),
(95, 78, 1, '2021-09-14 12:47:10', '2021-09-14 12:47:10'),
(96, 77, 1, '2021-09-14 12:47:19', '2021-09-14 12:47:19'),
(97, 76, 1, '2021-09-14 12:47:29', '2021-09-14 12:47:29'),
(99, 90, 3, '2021-09-14 12:48:57', '2021-09-14 12:48:57'),
(103, 92, 3, '2021-09-14 12:50:05', '2021-09-14 12:50:05'),
(106, 91, 3, '2021-09-14 12:50:47', '2021-09-14 12:50:47'),
(107, 93, 3, '2021-09-14 12:50:59', '2021-09-14 12:50:59'),
(109, 94, 4, '2021-09-14 12:51:33', '2021-09-14 12:51:33'),
(112, 95, 4, '2021-09-14 12:52:10', '2021-09-14 12:52:10'),
(114, 96, 4, '2021-09-14 12:52:20', '2021-09-14 12:52:20'),
(116, 97, 4, '2021-09-14 12:52:36', '2021-09-14 12:52:36'),
(118, 98, 2, '2021-09-14 12:55:47', '2021-09-14 12:55:47'),
(120, 99, 2, '2021-09-14 12:56:16', '2021-09-14 12:56:16'),
(122, 100, 2, '2021-09-14 12:56:36', '2021-09-14 12:56:36'),
(124, 101, 2, '2021-09-14 12:56:51', '2021-09-14 12:56:51'),
(126, 102, 3, '2021-09-14 13:02:16', '2021-09-14 13:02:16'),
(128, 103, 3, '2021-09-14 13:03:18', '2021-09-14 13:03:18'),
(130, 104, 3, '2021-09-14 13:03:38', '2021-09-14 13:03:38'),
(132, 105, 3, '2021-09-14 13:03:59', '2021-09-14 13:03:59'),
(134, 106, 3, '2021-09-14 13:04:24', '2021-09-14 13:04:24'),
(136, 107, 4, '2021-09-14 13:05:02', '2021-09-14 13:05:02'),
(139, 108, 4, '2021-09-14 13:06:28', '2021-09-14 13:06:28'),
(141, 109, 4, '2021-09-14 13:06:46', '2021-09-14 13:06:46'),
(143, 110, 4, '2021-09-14 13:07:25', '2021-09-14 13:07:25'),
(145, 111, 4, '2021-09-14 14:30:15', '2021-09-14 14:30:15'),
(148, 113, 2, '2021-09-14 17:29:18', '2021-09-14 17:29:18'),
(149, 113, 3, '2021-09-14 17:29:18', '2021-09-14 17:29:18'),
(150, 114, 1, '2021-09-14 17:30:55', '2021-09-14 17:30:55'),
(151, 114, 2, '2021-09-14 17:30:55', '2021-09-14 17:30:55');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplinas`
--

DROP TABLE IF EXISTS `disciplinas`;
CREATE TABLE IF NOT EXISTS `disciplinas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `disciplinas`
--

INSERT INTO `disciplinas` (`id`, `nome`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Matemática', '2021-08-11 12:50:06', '2021-08-11 12:50:06', NULL),
(2, 'Língua Portuguesa', '2021-08-11 12:50:20', '2021-08-11 12:50:20', NULL),
(3, 'Arte', '2021-08-11 12:50:33', '2021-08-11 12:50:33', NULL),
(4, 'História', '2021-08-11 12:50:44', '2021-08-11 12:50:44', NULL),
(5, 'Geografia', '2021-08-11 12:50:53', '2021-08-11 12:50:53', NULL),
(6, 'Ciências', '2021-08-11 12:51:01', '2021-08-11 12:51:01', NULL),
(9, 'Música', '2021-08-11 12:51:34', '2021-08-11 12:51:34', NULL),
(10, 'Ensino Religioso', '2021-08-11 12:51:52', '2021-08-11 12:51:52', NULL),
(11, 'Outro', '2021-08-11 12:52:07', '2021-08-11 12:52:07', NULL),
(14, 'Inglês', '2021-09-03 19:59:20', '2021-09-03 19:59:20', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `inventarios`
--

DROP TABLE IF EXISTS `inventarios`;
CREATE TABLE IF NOT EXISTS `inventarios` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` text NOT NULL,
  `patrimonio` text,
  `tipo_periferico_id` int(11) NOT NULL,
  `tipo_periferico_outro_nome` text,
  `status_id` int(11) NOT NULL,
  `foto` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `deletedBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `inventarios`
--

INSERT INTO `inventarios` (`id`, `nome`, `patrimonio`, `tipo_periferico_id`, `tipo_periferico_outro_nome`, `status_id`, `foto`, `createdAt`, `updatedAt`, `deletedAt`, `createdBy`, `updatedBy`, `deletedBy`) VALUES
(1, 'PC Servidor', '111148', 1, NULL, 1, NULL, '2021-09-06 17:58:46', '2021-09-06 19:27:34', NULL, 1, 1, NULL),
(2, 'Teste', NULL, 3, NULL, 2, NULL, '2021-09-06 18:32:24', '2021-09-06 19:20:54', '2021-09-06 19:20:54', 1, 1, 1),
(3, 'teste', NULL, 1, NULL, 1, NULL, '2021-09-06 19:48:33', '2021-09-06 19:49:06', '2021-09-06 19:49:06', 1, 1, 1),
(4, 'teste', NULL, 1, NULL, 1, NULL, '2021-09-06 19:49:52', '2021-09-06 19:52:10', '2021-09-06 19:52:10', 1, 1, 1),
(5, 'teste', NULL, 1, NULL, 1, 'uploads/perifericos/pc2021-09-08T12-05-59.098Z.jpg', '2021-09-06 19:52:20', '2021-09-08 12:05:59', NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `inventariostatuses`
--

DROP TABLE IF EXISTS `inventariostatuses`;
CREATE TABLE IF NOT EXISTS `inventariostatuses` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` varchar(100) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `inventariostatuses`
--

INSERT INTO `inventariostatuses` (`id`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'Funcional', '2021-09-06 12:44:59', '2021-09-06 12:44:59'),
(2, 'Em manutenção', '2021-09-06 12:45:13', '2021-09-06 12:45:13'),
(3, 'Inutilizado', '2021-09-06 12:45:26', '2021-09-06 12:45:26');

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissaos`
--

DROP TABLE IF EXISTS `permissaos`;
CREATE TABLE IF NOT EXISTS `permissaos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `cria_registro_publico` tinyint(1) NOT NULL,
  `cria_registro_privado` tinyint(1) NOT NULL,
  `ver_registro_privado_outros` tinyint(1) NOT NULL,
  `cria_comentarios` tinyint(1) NOT NULL,
  `ver_usuarios` tinyint(1) NOT NULL,
  `criar_usuarios` tinyint(1) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `permissaos`
--

INSERT INTO `permissaos` (`id`, `nome`, `cria_registro_publico`, `cria_registro_privado`, `ver_registro_privado_outros`, `cria_comentarios`, `ver_usuarios`, `criar_usuarios`, `createdAt`, `updatedAt`) VALUES
(1, 'SUPERADMIN', 1, 1, 1, 1, 1, 1, '2021-08-10 12:46:53', '2021-08-10 12:46:53'),
(2, 'SME', 1, 0, 1, 1, 1, 0, '2021-08-10 13:00:19', '2021-08-10 13:00:19'),
(3, 'Escola', 0, 0, 1, 1, 0, 0, '2021-08-10 13:00:51', '2021-08-10 13:00:51'),
(4, 'Usuário', 1, 1, 0, 1, 0, 0, '2021-08-10 13:02:14', '2021-08-10 13:02:14');

-- --------------------------------------------------------

--
-- Estrutura da tabela `registrocomentarios`
--

DROP TABLE IF EXISTS `registrocomentarios`;
CREATE TABLE IF NOT EXISTS `registrocomentarios` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `registro_id` int(11) NOT NULL,
  `usuario_comentario_id` int(11) DEFAULT NULL,
  `comentario` text NOT NULL,
  `comentario_pai_id` int(11) DEFAULT NULL,
  `data_comentario` datetime NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `registrocomentarios`
--

INSERT INTO `registrocomentarios` (`id`, `registro_id`, `usuario_comentario_id`, `comentario`, `comentario_pai_id`, `data_comentario`, `ativo`, `createdAt`, `updatedAt`) VALUES
(116, 62, 2, 'teste', NULL, '2021-09-13 14:18:20', 1, '2021-09-13 14:18:20', '2021-09-13 14:18:20');

-- --------------------------------------------------------

--
-- Estrutura da tabela `registrofotos`
--

DROP TABLE IF EXISTS `registrofotos`;
CREATE TABLE IF NOT EXISTS `registrofotos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `registro_id` int(11) NOT NULL,
  `filepath` text NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `registrofotos`
--

INSERT INTO `registrofotos` (`id`, `registro_id`, `filepath`, `createdAt`, `updatedAt`) VALUES
(8, 43, 'uploads/Moon2021-08-13T13-46-30.382Z.jpg', '2021-08-13 13:46:30', '2021-08-13 13:46:30'),
(10, 47, 'uploads/vangogh2021-08-13T13-56-59.091Z.jpg', '2021-08-13 13:56:59', '2021-08-13 13:56:59');

-- --------------------------------------------------------

--
-- Estrutura da tabela `registros`
--

DROP TABLE IF EXISTS `registros`;
CREATE TABLE IF NOT EXISTS `registros` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `tipo_registro` int(11) NOT NULL,
  `disciplina` int(11) DEFAULT NULL,
  `disciplina_titulo` text,
  `turma` int(11) DEFAULT NULL,
  `data_inicio` datetime NOT NULL,
  `data_fim` datetime NOT NULL,
  `is_em_sala` tinyint(1) DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL,
  `descricao` text NOT NULL,
  `turno` int(11) NOT NULL,
  `visibilidade` tinyint(1) NOT NULL,
  `titulo_outro` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `deletedBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `registros`
--

INSERT INTO `registros` (`id`, `user_id`, `tipo_registro`, `disciplina`, `disciplina_titulo`, `turma`, `data_inicio`, `data_fim`, `is_em_sala`, `local`, `descricao`, `turno`, `visibilidade`, `titulo_outro`, `createdAt`, `updatedAt`, `deletedAt`, `createdBy`, `updatedBy`, `deletedBy`) VALUES
(43, '116942958992099852767', 1, 4, NULL, 901, '2021-08-13 00:00:00', '2021-08-13 00:00:00', 0, NULL, 'teste', 1, 0, NULL, '2021-08-13 13:46:30', '2021-09-13 19:09:16', '2021-09-13 19:09:16', 1, 1, 1),
(44, '116942958992099852767', 1, 1, NULL, 401, '2021-08-13 00:00:00', '2021-08-13 00:00:00', 1, NULL, 'Substituição de aula - tema: fração', 2, 1, NULL, '2021-08-13 13:49:20', '2021-08-31 11:53:39', '2021-08-31 11:53:39', 1, 1, 1),
(45, '116942958992099852767', 1, 11, 'Scratch', 501, '2021-08-13 00:00:00', '2021-08-13 00:00:00', 0, NULL, 'Aula de scratch', 1, 1, NULL, '2021-08-13 13:55:12', '2021-09-13 19:09:14', '2021-09-13 19:09:14', 1, 1, 1),
(46, '116942958992099852767', 2, NULL, NULL, NULL, '2021-08-13 00:00:00', '2021-08-13 00:00:00', 0, 'Teste de ajuda de impressora', 'Teste', 1, 1, NULL, '2021-08-13 13:55:53', '2021-09-03 17:32:12', '2021-09-03 17:32:12', 1, 1, 1),
(47, '116942958992099852767', 2, NULL, NULL, NULL, '2021-08-31 00:00:00', '2021-08-31 00:00:00', 0, 'van gogh3', 'teste', 1, 1, NULL, '2021-08-13 13:56:59', '2021-09-13 19:09:11', '2021-09-13 19:09:11', 1, 1, 1),
(48, '116942958992099852767', 1, 1, NULL, 901, '2021-08-24 00:00:00', '2021-08-24 00:00:00', 0, NULL, 'teste', 1, 1, NULL, '2021-08-24 12:44:21', '2021-09-13 19:09:13', '2021-09-13 19:09:13', 1, 1, 1),
(49, '116942958992099852767', 1, 1, NULL, 901, '2021-08-24 00:00:00', '2021-08-24 00:00:00', 0, NULL, 'teste', 1, 0, NULL, '2021-08-24 12:44:21', '2021-08-24 19:30:42', '2021-08-24 19:30:42', 1, 1, 1),
(50, '116942958992099852767', 1, 1, NULL, 901, '2021-08-24 00:00:00', '2021-08-24 00:00:00', 0, NULL, 'teste', 1, 0, NULL, '2021-08-24 12:44:21', '2021-08-24 19:30:39', '2021-08-24 19:30:39', 1, 1, 1),
(51, '116942958992099852767', 1, 1, NULL, 901, '2021-08-24 00:00:00', '2021-08-24 00:00:00', 0, NULL, 'teste', 1, 0, NULL, '2021-08-24 19:14:03', '2021-08-24 19:30:36', '2021-08-24 19:30:36', 1, 1, 1),
(52, '116942958992099852767', 1, 1, NULL, 901, '2021-08-24 00:00:00', '2021-08-24 00:00:00', 0, NULL, 'teste', 1, 0, NULL, '2021-08-24 19:14:48', '2021-08-24 19:30:34', '2021-08-24 19:30:34', 1, 1, 1),
(53, '116942958992099852767', 1, 1, NULL, 901, '2021-08-24 00:00:00', '2021-08-24 00:00:00', 0, NULL, 'teste', 1, 0, NULL, '2021-08-24 19:14:55', '2021-08-24 19:30:32', '2021-08-24 19:30:32', 1, 1, 1),
(54, '116942958992099852767', 1, 1, NULL, 901, '2021-08-24 00:00:00', '2021-08-24 00:00:00', 0, NULL, 'teste', 1, 0, NULL, '2021-08-24 19:15:47', '2021-08-24 19:30:30', '2021-08-24 19:30:30', 1, 1, 1),
(55, '116942958992099852767', 1, 1, NULL, 901, '2021-08-24 00:00:00', '2021-08-24 00:00:00', 0, NULL, 'teste', 1, 0, NULL, '2021-08-24 19:19:07', '2021-08-24 19:30:28', '2021-08-24 19:30:28', 1, 1, 1),
(56, '116942958992099852767', 1, 1, NULL, 901, '2021-08-24 00:00:00', '2021-08-24 00:00:00', 0, NULL, 'teste', 1, 0, NULL, '2021-08-24 19:20:25', '2021-08-24 19:29:15', '2021-08-24 19:29:15', 1, 1, 1),
(57, '116942958992099852767', 1, 1, NULL, 901, '2021-08-24 00:00:00', '2021-08-24 00:00:00', 0, NULL, 'teste', 1, 0, NULL, '2021-08-24 19:21:19', '2021-08-24 19:29:04', '2021-08-24 19:29:04', 1, 1, 1),
(58, '116942958992099852767', 1, 1, NULL, 901, '2021-08-24 00:00:00', '2021-08-24 00:00:00', 0, NULL, 'teste', 1, 0, NULL, '2021-08-24 19:31:06', '2021-08-24 19:31:10', '2021-08-24 19:31:10', 1, 1, 1),
(59, '116942958992099852767', 1, 1, NULL, 901, '2021-08-24 00:00:00', '2021-08-24 00:00:00', 0, NULL, 'teste', 1, 0, NULL, '2021-08-24 19:48:19', '2021-08-24 19:48:23', '2021-08-24 19:48:23', 1, 1, 1),
(60, '116942958992099852767', 2, NULL, NULL, NULL, '2021-09-03 00:00:00', '2021-09-03 00:00:00', 0, 'teste', 'teste', 2, 1, NULL, '2021-09-03 17:34:31', '2021-09-03 17:41:15', '2021-09-03 17:41:15', 1, 1, 1),
(61, '116942958992099852767', 2, NULL, NULL, NULL, '2021-08-31 00:00:00', '2021-08-31 00:00:00', 0, 'rwarw', 'rwarw', 1, 1, NULL, '2021-09-03 18:38:29', '2021-09-03 18:41:07', '2021-09-03 18:41:07', 1, 1, 1),
(62, '116942958992099852767', 2, NULL, NULL, NULL, '2021-08-31 00:00:00', '2021-08-31 00:00:00', 0, 'testando feed', 'teste', 1, 1, NULL, '2021-09-03 18:49:19', '2021-09-13 19:09:08', '2021-09-13 19:09:08', 1, 1, 1),
(63, '116942958992099852767', 5, NULL, NULL, NULL, '2021-09-01 00:00:00', '2021-09-30 00:00:00', 0, 'Laboratório de Informática', 'Finalização do desenvolvimento do sistema de relatórios para instrutores de informática.\n\nFinalização das mudanças, testes e publicação do sistema.', 4, 0, NULL, '2021-09-13 19:11:17', '2021-09-13 19:43:04', NULL, 1, 1, NULL),
(64, '116942958992099852767', 6, NULL, NULL, NULL, '2021-10-01 00:00:00', '2021-11-30 00:00:00', 0, 'EBYLA', 'Período de 2 meses de Licença Prêmio vencida em 2017.\nDe out/2021 à dez/2021.\nRetorno no dia 01/12/2021', 4, 0, 'Licença Prêmio', '2021-09-13 19:13:06', '2021-09-13 19:25:24', '2021-09-13 19:25:24', 1, 1, 1),
(65, '116942958992099852767', 6, NULL, NULL, NULL, '2021-10-01 00:00:00', '2021-11-30 00:00:00', 0, 'EBYLA', 'Período de 2 meses de Licença Prêmio vencida em 2017. \nDe out/2021 à dez/2021. \nRetorno no dia 01/12/2021', 4, 0, 'Licença Prêmio', '2021-09-13 19:24:31', '2021-09-13 19:31:41', NULL, 1, 1, NULL),
(66, '116942958992099852767', 6, NULL, NULL, NULL, '2021-11-01 00:00:00', '2021-11-30 00:00:00', 0, 'EBYLA', 'Período de 2 meses de Licença Prêmio vencida em 2017.\nDe out/2021 à dez/2021.\nRetorno no dia 01/12/2021', 4, 0, 'Licença Prêmio', '2021-09-13 19:33:09', '2021-09-13 19:33:09', NULL, 1, 1, NULL),
(67, '116942958992099852767', 1, 2, NULL, 901, '2021-09-01 00:00:00', '2021-09-01 00:00:00', 0, NULL, 'Treinamento de simulados para SAEB.\n\nQuizes do site - https://profwarles.blogspot.com/2016/03/9-ano-portugues-quiz.html', 1, 0, NULL, '2021-09-13 19:41:07', '2021-09-14 12:31:18', NULL, 1, 1, NULL),
(68, '116942958992099852767', 1, 2, NULL, 901, '2021-09-08 00:00:00', '2021-09-08 00:00:00', 0, NULL, 'Treinamento de simulados para SAEB.\n\nQuizes do site - https://profwarles.blogspot.com/2016/03/9-ano-portugues-quiz.html', 1, 0, NULL, '2021-09-13 19:47:28', '2021-09-14 12:31:26', NULL, 1, 1, NULL),
(69, '116942958992099852767', 1, 2, NULL, 901, '2021-09-15 00:00:00', '2021-09-15 00:00:00', 0, NULL, 'Treinamento de simulados para SAEB.\n\nQuizes do site - https://profwarles.blogspot.com/2016/03/9-ano-portugues-quiz.html', 1, 0, NULL, '2021-09-14 12:14:48', '2021-09-14 12:31:36', NULL, 1, 1, NULL),
(70, '116942958992099852767', 1, 2, NULL, 901, '2021-09-22 00:00:00', '2021-09-22 00:00:00', 0, NULL, 'Treinamento de simulados para SAEB.\n\nQuizes do site - https://profwarles.blogspot.com/2016/03/9-ano-portugues-quiz.html', 1, 0, NULL, '2021-09-14 12:15:14', '2021-09-14 12:31:41', NULL, 1, 1, NULL),
(71, '116942958992099852767', 1, 2, NULL, 901, '2021-09-29 00:00:00', '2021-09-29 00:00:00', 0, NULL, 'Treinamento de simulados para SAEB.\n\nQuizes do site - https://profwarles.blogspot.com/2016/03/9-ano-portugues-quiz.html', 1, 0, NULL, '2021-09-14 12:15:29', '2021-09-14 12:31:46', NULL, 1, 1, NULL),
(72, '116942958992099852767', 1, 1, NULL, 901, '2021-09-03 00:00:00', '2021-09-03 00:00:00', 0, NULL, 'Treinamento de simulados para SAEB.\n\nQuizes do site - https://profwarles.blogspot.com/2013/01/blog-post_15.html', 1, 0, NULL, '2021-09-14 12:29:40', '2021-09-14 12:31:08', NULL, 1, 1, NULL),
(73, '116942958992099852767', 1, 1, NULL, 901, '2021-09-10 00:00:00', '2021-09-10 00:00:00', 0, NULL, 'Treinamento de simulados para SAEB.\n\nQuizes do site - https://profwarles.blogspot.com/2013/01/blog-post_15.html', 1, 0, NULL, '2021-09-14 12:31:57', '2021-09-14 12:32:06', NULL, 1, 1, NULL),
(74, '116942958992099852767', 1, 1, NULL, 901, '2021-09-17 00:00:00', '2021-09-17 00:00:00', 0, NULL, 'Treinamento de simulados para SAEB.\n\nQuizes do site - https://profwarles.blogspot.com/2013/01/blog-post_15.html', 1, 0, NULL, '2021-09-14 12:32:10', '2021-09-14 12:32:22', NULL, 1, 1, NULL),
(75, '116942958992099852767', 1, 1, NULL, 901, '2021-09-24 00:00:00', '2021-09-24 00:00:00', 0, NULL, 'Treinamento de simulados para SAEB.\n\nQuizes do site - https://profwarles.blogspot.com/2013/01/blog-post_15.html', 1, 0, NULL, '2021-09-14 12:32:26', '2021-09-14 12:32:42', NULL, 1, 1, NULL),
(76, '116942958992099852767', 1, 2, NULL, 101, '2021-09-02 00:00:00', '2021-09-02 00:00:00', 0, NULL, 'Treinamento para SAEB, com atividades online e off-line.\n\nAplicativos utilizados:\nJogos do site Ludo Educativo (como jogo da memória, completar as palavras, etc)\nPrograma TuxMath e TuxTyping, para aprimorar o reconhecimento das letras do alfabeto, velocidade de digitação, e compreensão rápida de cálculos \nPrograma GCompris que possui uma variedade de jogos eduicativos infantis, adequados para as crianças em fase de alfabetização.matemáticos.', 1, 0, NULL, '2021-09-14 12:33:45', '2021-09-14 12:47:29', NULL, 1, 1, NULL),
(77, '116942958992099852767', 1, 1, NULL, 101, '2021-09-09 00:00:00', '2021-09-09 00:00:00', 0, NULL, 'Treinamento para SAEB, com atividades online e off-line.\n\nAplicativos utilizados:\nJogos do site Ludo Educativo (como jogo da memória, completar as palavras, etc)\nPrograma TuxMath e TuxTyping, para aprimorar o reconhecimento das letras do alfabeto, velocidade de digitação, e compreensão rápida de cálculos matemáticos.\nPrograma GCompris que possui uma variedade de jogos eduicativos infantis, adequados para as crianças em fase de alfabetização.', 1, 0, NULL, '2021-09-14 12:37:07', '2021-09-14 12:47:19', NULL, 1, 1, NULL),
(78, '116942958992099852767', 1, 2, NULL, 101, '2021-09-16 00:00:00', '2021-09-16 00:00:00', 0, NULL, 'Treinamento para SAEB, com atividades online e off-line.\n\nAplicativos utilizados:\nJogos do site Ludo Educativo (como jogo da memória, completar as palavras, etc)\nPrograma TuxMath e TuxTyping, para aprimorar o reconhecimento das letras do alfabeto, velocidade de digitação, e compreensão rápida de cálculos matemáticos.\nPrograma GCompris que possui uma variedade de jogos eduicativos infantis, adequados para as crianças em fase de alfabetização.', 1, 0, NULL, '2021-09-14 12:37:22', '2021-09-14 12:47:10', NULL, 1, 1, NULL),
(79, '116942958992099852767', 1, 1, NULL, 101, '2021-09-23 00:00:00', '2021-09-23 00:00:00', 0, NULL, 'Treinamento para SAEB, com atividades online e off-line.\n\nAplicativos utilizados:\nJogos do site Ludo Educativo (como jogo da memória, completar as palavras, etc)\nPrograma TuxMath e TuxTyping, para aprimorar o reconhecimento das letras do alfabeto, velocidade de digitação, e compreensão rápida de cálculos matemáticos.\nPrograma GCompris que possui uma variedade de jogos eduicativos infantis, adequados para as crianças em fase de alfabetização.', 1, 0, NULL, '2021-09-14 12:37:40', '2021-09-14 12:46:56', NULL, 1, 1, NULL),
(80, '116942958992099852767', 1, 1, NULL, 101, '2021-09-30 00:00:00', '2021-09-30 00:00:00', 0, NULL, 'Treinamento para SAEB, com atividades online e off-line.\n\nAplicativos utilizados:\nJogos do site Ludo Educativo (como jogo da memória, completar as palavras, etc)\nPrograma TuxMath e TuxTyping, para aprimorar o reconhecimento das letras do alfabeto, velocidade de digitação, e compreensão rápida de cálculos matemáticos.\nPrograma GCompris que possui uma variedade de jogos eduicativos infantis, adequados para as crianças em fase de alfabetização.', 1, 0, NULL, '2021-09-14 12:37:58', '2021-09-14 12:46:42', NULL, 1, 1, NULL),
(81, '116942958992099852767', 1, 2, NULL, 501, '2021-09-06 00:00:00', '2021-09-06 00:00:00', 0, NULL, 'Treinamento de simulados para SAEB.\n\nQuizes do site - https://profwarles.blogspot.com/2016/03/5-ano-portugues-ensino-fundamental-quiz.html', 1, 0, NULL, '2021-09-14 12:40:01', '2021-09-14 12:41:33', NULL, 1, 1, NULL),
(82, '116942958992099852767', 1, 2, NULL, 501, '2021-09-13 00:00:00', '2021-09-13 00:00:00', 0, NULL, 'Treinamento de simulados para SAEB.\n\nQuizes do site - https://profwarles.blogspot.com/2016/03/5-ano-portugues-ensino-fundamental-quiz.html', 1, 0, NULL, '2021-09-14 12:42:05', '2021-09-14 12:42:21', NULL, 1, 1, NULL),
(83, '116942958992099852767', 1, 2, NULL, 501, '2021-09-20 00:00:00', '2021-09-20 00:00:00', 0, NULL, 'Treinamento de simulados para SAEB.\n\nQuizes do site - https://profwarles.blogspot.com/2016/03/5-ano-portugues-ensino-fundamental-quiz.html', 1, 0, NULL, '2021-09-14 12:42:27', '2021-09-14 12:42:36', NULL, 1, 1, NULL),
(84, '116942958992099852767', 1, 2, NULL, 501, '2021-09-27 00:00:00', '2021-09-27 00:00:00', 0, NULL, 'Treinamento de simulados para SAEB.\n\nQuizes do site - https://profwarles.blogspot.com/2016/03/5-ano-portugues-ensino-fundamental-quiz.html', 1, 0, NULL, '2021-09-14 12:42:44', '2021-09-14 12:42:54', NULL, 1, 1, NULL),
(85, '116942958992099852767', 1, 1, NULL, 501, '2021-09-02 00:00:00', '2021-09-02 00:00:00', 0, NULL, 'Treinamento de simulados para SAEB.\n\nQuizes do site - https://profwarles.blogspot.com/2016/03/5-ano-matematica-quiz.html', 1, 0, NULL, '2021-09-14 12:43:10', '2021-09-14 12:43:47', NULL, 1, 1, NULL),
(86, '116942958992099852767', 1, 1, NULL, 501, '2021-09-09 00:00:00', '2021-09-09 00:00:00', 0, NULL, 'Treinamento de simulados para SAEB.\n\nQuizes do site - https://profwarles.blogspot.com/2016/03/5-ano-matematica-quiz.html', 1, 0, NULL, '2021-09-14 12:44:02', '2021-09-14 12:44:11', NULL, 1, 1, NULL),
(87, '116942958992099852767', 1, 1, NULL, 501, '2021-09-16 00:00:00', '2021-09-16 00:00:00', 0, NULL, 'Treinamento de simulados para SAEB.\n\nQuizes do site - https://profwarles.blogspot.com/2016/03/5-ano-matematica-quiz.html', 1, 0, NULL, '2021-09-14 12:44:19', '2021-09-14 12:44:33', NULL, 1, 1, NULL),
(88, '116942958992099852767', 1, 1, NULL, 501, '2021-09-23 00:00:00', '2021-09-23 00:00:00', 0, NULL, 'Treinamento de simulados para SAEB.\n\nQuizes do site - https://profwarles.blogspot.com/2016/03/5-ano-matematica-quiz.html', 1, 0, NULL, '2021-09-14 12:44:49', '2021-09-14 12:45:05', NULL, 1, 1, NULL),
(89, '116942958992099852767', 1, 1, NULL, 501, '2021-09-30 00:00:00', '2021-09-30 00:00:00', 0, NULL, 'Treinamento de simulados para SAEB.\n\nQuizes do site - https://profwarles.blogspot.com/2016/03/5-ano-matematica-quiz.html', 1, 0, NULL, '2021-09-14 12:45:16', '2021-09-14 12:45:25', NULL, 1, 1, NULL),
(90, '116942958992099852767', 1, 1, NULL, 202, '2021-09-06 00:00:00', '2021-09-06 00:00:00', 0, NULL, 'Treinamento para SAEB, com atividades online e off-line.\n\nAplicativos utilizados:\nJogos do site Ludo Educativo (como jogo da memória, completar as palavras, etc)\nPrograma TuxMath e TuxTyping, para aprimorar o reconhecimento das letras do alfabeto, velocidade de digitação, e compreensão rápida de cálculos matemáticos.\nPrograma GCompris que possui uma variedade de jogos eduicativos infantis, adequados para as crianças em fase de alfabetização.', 2, 0, NULL, '2021-09-14 12:48:23', '2021-09-14 12:48:57', NULL, 1, 1, NULL),
(91, '116942958992099852767', 1, 2, NULL, 202, '2021-09-13 00:00:00', '2021-09-13 00:00:00', 0, NULL, 'Treinamento para SAEB, com atividades online e off-line.\n\nAplicativos utilizados:\nJogos do site Ludo Educativo (como jogo da memória, completar as palavras, etc)\nPrograma TuxMath e TuxTyping, para aprimorar o reconhecimento das letras do alfabeto, velocidade de digitação, e compreensão rápida de cálculos matemáticos.\nPrograma GCompris que possui uma variedade de jogos eduicativos infantis, adequados para as crianças em fase de alfabetização.', 2, 0, NULL, '2021-09-14 12:49:32', '2021-09-14 12:50:47', NULL, 1, 1, NULL),
(92, '116942958992099852767', 1, 1, NULL, 202, '2021-09-20 00:00:00', '2021-09-20 00:00:00', 0, NULL, 'Treinamento para SAEB, com atividades online e off-line.\n\nAplicativos utilizados:\nJogos do site Ludo Educativo (como jogo da memória, completar as palavras, etc)\nPrograma TuxMath e TuxTyping, para aprimorar o reconhecimento das letras do alfabeto, velocidade de digitação, e compreensão rápida de cálculos matemáticos.\nPrograma GCompris que possui uma variedade de jogos eduicativos infantis, adequados para as crianças em fase de alfabetização.', 2, 0, NULL, '2021-09-14 12:49:56', '2021-09-14 12:50:05', NULL, 1, 1, NULL),
(93, '116942958992099852767', 1, 2, NULL, 202, '2021-09-27 00:00:00', '2021-09-27 00:00:00', 0, NULL, 'Treinamento para SAEB, com atividades online e off-line.\n\nAplicativos utilizados:\nJogos do site Ludo Educativo (como jogo da memória, completar as palavras, etc)\nPrograma TuxMath e TuxTyping, para aprimorar o reconhecimento das letras do alfabeto, velocidade de digitação, e compreensão rápida de cálculos matemáticos.\nPrograma GCompris que possui uma variedade de jogos eduicativos infantis, adequados para as crianças em fase de alfabetização.', 2, 0, NULL, '2021-09-14 12:50:12', '2021-09-14 12:50:59', NULL, 1, 1, NULL),
(94, '116942958992099852767', 1, 1, NULL, 201, '2021-09-06 00:00:00', '2021-09-06 00:00:00', 0, NULL, 'Treinamento para SAEB, com atividades online e off-line.\n\nAplicativos utilizados:\nJogos do site Ludo Educativo (como jogo da memória, completar as palavras, etc)\nPrograma TuxMath e TuxTyping, para aprimorar o reconhecimento das letras do alfabeto, velocidade de digitação, e compreensão rápida de cálculos matemáticos.\nPrograma GCompris que possui uma variedade de jogos eduicativos infantis, adequados para as crianças em fase de alfabetização.', 2, 0, NULL, '2021-09-14 12:51:08', '2021-09-14 12:51:33', NULL, 1, 1, NULL),
(95, '116942958992099852767', 1, 2, NULL, 201, '2021-09-13 00:00:00', '2021-09-13 00:00:00', 0, NULL, 'Treinamento para SAEB, com atividades online e off-line.\n\nAplicativos utilizados:\nJogos do site Ludo Educativo (como jogo da memória, completar as palavras, etc)\nPrograma TuxMath e TuxTyping, para aprimorar o reconhecimento das letras do alfabeto, velocidade de digitação, e compreensão rápida de cálculos matemáticos.\nPrograma GCompris que possui uma variedade de jogos eduicativos infantis, adequados para as crianças em fase de alfabetização.', 2, 0, NULL, '2021-09-14 12:51:42', '2021-09-14 12:52:09', NULL, 1, 1, NULL),
(96, '116942958992099852767', 1, 1, NULL, 201, '2021-09-20 00:00:00', '2021-09-20 00:00:00', 0, NULL, 'Treinamento para SAEB, com atividades online e off-line.\n\nAplicativos utilizados:\nJogos do site Ludo Educativo (como jogo da memória, completar as palavras, etc)\nPrograma TuxMath e TuxTyping, para aprimorar o reconhecimento das letras do alfabeto, velocidade de digitação, e compreensão rápida de cálculos matemáticos.\nPrograma GCompris que possui uma variedade de jogos eduicativos infantis, adequados para as crianças em fase de alfabetização.', 2, 0, NULL, '2021-09-14 12:52:11', '2021-09-14 12:52:20', NULL, 1, 1, NULL),
(97, '116942958992099852767', 1, 2, NULL, 201, '2021-09-27 00:00:00', '2021-09-27 00:00:00', 0, NULL, 'Treinamento para SAEB, com atividades online e off-line.\n\nAplicativos utilizados:\nJogos do site Ludo Educativo (como jogo da memória, completar as palavras, etc)\nPrograma TuxMath e TuxTyping, para aprimorar o reconhecimento das letras do alfabeto, velocidade de digitação, e compreensão rápida de cálculos matemáticos.\nPrograma GCompris que possui uma variedade de jogos eduicativos infantis, adequados para as crianças em fase de alfabetização.', 2, 0, NULL, '2021-09-14 12:52:27', '2021-09-14 12:52:36', NULL, 1, 1, NULL),
(98, '116942958992099852767', 1, 1, NULL, 401, '2021-09-07 00:00:00', '2021-09-07 00:00:00', 0, NULL, 'Treinamento para SAEB, com atividades online e off-line.\n\nAplicativos utilizados:\nJogos do site Ludo Educativo (como jogo da memória, completar as palavras, etc)\nPrograma TuxMath e TuxTyping, para aprimorar o reconhecimento das letras do alfabeto, velocidade de digitação, e compreensão rápida de cálculos matemáticos.\nPrograma GCompris que possui uma variedade de jogos eduicativos infantis, adequados para as crianças em fase de alfabetização.\nQuiz de português: https://profwarles.blogspot.com/2016/03/4-ano-portugues-ef-quiz.html', 1, 0, NULL, '2021-09-14 12:53:34', '2021-09-14 12:55:47', NULL, 1, 1, NULL),
(99, '116942958992099852767', 1, 2, NULL, 401, '2021-09-14 00:00:00', '2021-09-14 00:00:00', 0, NULL, 'Treinamento para SAEB, com atividades online e off-line.\n\nAplicativos utilizados:\nJogos do site Ludo Educativo (como jogo da memória, completar as palavras, etc)\nPrograma TuxMath e TuxTyping, para aprimorar o reconhecimento das letras do alfabeto, velocidade de digitação, e compreensão rápida de cálculos matemáticos.\nPrograma GCompris que possui uma variedade de jogos eduicativos infantis, adequados para as crianças em fase de alfabetização.\nQuiz de português: https://profwarles.blogspot.com/2016/03/4-ano-portugues-ef-quiz.html', 1, 0, NULL, '2021-09-14 12:56:05', '2021-09-14 12:56:16', NULL, 1, 1, NULL),
(100, '116942958992099852767', 1, 1, NULL, 401, '2021-09-21 00:00:00', '2021-09-21 00:00:00', 0, NULL, 'Treinamento para SAEB, com atividades online e off-line.\n\nAplicativos utilizados:\nJogos do site Ludo Educativo (como jogo da memória, completar as palavras, etc)\nPrograma TuxMath e TuxTyping, para aprimorar o reconhecimento das letras do alfabeto, velocidade de digitação, e compreensão rápida de cálculos matemáticos.\nPrograma GCompris que possui uma variedade de jogos eduicativos infantis, adequados para as crianças em fase de alfabetização.\nQuiz de português: https://profwarles.blogspot.com/2016/03/4-ano-portugues-ef-quiz.html', 1, 0, NULL, '2021-09-14 12:56:25', '2021-09-14 12:56:35', NULL, 1, 1, NULL),
(101, '116942958992099852767', 1, 2, NULL, 401, '2021-09-28 00:00:00', '2021-09-28 00:00:00', 0, NULL, 'Treinamento para SAEB, com atividades online e off-line.\n\nAplicativos utilizados:\nJogos do site Ludo Educativo (como jogo da memória, completar as palavras, etc)\nPrograma TuxMath e TuxTyping, para aprimorar o reconhecimento das letras do alfabeto, velocidade de digitação, e compreensão rápida de cálculos matemáticos.\nPrograma GCompris que possui uma variedade de jogos eduicativos infantis, adequados para as crianças em fase de alfabetização.\nQuiz de português: https://profwarles.blogspot.com/2016/03/4-ano-portugues-ef-quiz.html', 1, 0, NULL, '2021-09-14 12:56:41', '2021-09-14 12:56:51', NULL, 1, 1, NULL),
(102, '116942958992099852767', 1, 1, NULL, 102, '2021-09-01 00:00:00', '2021-09-01 00:00:00', 0, NULL, 'Treinamento para SAEB, com atividades online e off-line.\n\nAplicativos utilizados:\nJogos do site Ludo Educativo (como jogo da memória, completar as palavras, etc)\nPrograma TuxMath e TuxTyping, para aprimorar o reconhecimento das letras do alfabeto, velocidade de digitação, e compreensão rápida de cálculos matemáticos.\nPrograma GCompris que possui uma variedade de jogos eduicativos infantis, adequados para as crianças em fase de alfabetização.', 1, 0, NULL, '2021-09-14 13:01:54', '2021-09-14 13:02:16', NULL, 1, 1, NULL),
(103, '116942958992099852767', 1, 2, NULL, 102, '2021-09-08 00:00:00', '2021-09-08 00:00:00', 0, NULL, 'Treinamento para SAEB, com atividades online e off-line.\n\nAplicativos utilizados:\nJogos do site Ludo Educativo (como jogo da memória, completar as palavras, etc)\nPrograma TuxMath e TuxTyping, para aprimorar o reconhecimento das letras do alfabeto, velocidade de digitação, e compreensão rápida de cálculos matemáticos.\nPrograma GCompris que possui uma variedade de jogos eduicativos infantis, adequados para as crianças em fase de alfabetização.', 1, 0, NULL, '2021-09-14 13:03:08', '2021-09-14 13:03:18', NULL, 1, 1, NULL),
(104, '116942958992099852767', 1, 1, NULL, 102, '2021-09-15 00:00:00', '2021-09-15 00:00:00', 0, NULL, 'Treinamento para SAEB, com atividades online e off-line.\n\nAplicativos utilizados:\nJogos do site Ludo Educativo (como jogo da memória, completar as palavras, etc)\nPrograma TuxMath e TuxTyping, para aprimorar o reconhecimento das letras do alfabeto, velocidade de digitação, e compreensão rápida de cálculos matemáticos.\nPrograma GCompris que possui uma variedade de jogos eduicativos infantis, adequados para as crianças em fase de alfabetização.', 1, 0, NULL, '2021-09-14 13:03:27', '2021-09-14 13:03:37', NULL, 1, 1, NULL),
(105, '116942958992099852767', 1, 1, NULL, 102, '2021-09-22 00:00:00', '2021-09-22 00:00:00', 0, NULL, 'Treinamento para SAEB, com atividades online e off-line.\n\nAplicativos utilizados:\nJogos do site Ludo Educativo (como jogo da memória, completar as palavras, etc)\nPrograma TuxMath e TuxTyping, para aprimorar o reconhecimento das letras do alfabeto, velocidade de digitação, e compreensão rápida de cálculos matemáticos.\nPrograma GCompris que possui uma variedade de jogos eduicativos infantis, adequados para as crianças em fase de alfabetização.', 1, 0, NULL, '2021-09-14 13:03:46', '2021-09-14 13:03:59', NULL, 1, 1, NULL),
(106, '116942958992099852767', 1, 2, NULL, 102, '2021-09-29 00:00:00', '2021-09-29 00:00:00', 0, NULL, 'Treinamento para SAEB, com atividades online e off-line.\n\nAplicativos utilizados:\nJogos do site Ludo Educativo (como jogo da memória, completar as palavras, etc)\nPrograma TuxMath e TuxTyping, para aprimorar o reconhecimento das letras do alfabeto, velocidade de digitação, e compreensão rápida de cálculos matemáticos.\nPrograma GCompris que possui uma variedade de jogos eduicativos infantis, adequados para as crianças em fase de alfabetização.', 1, 0, NULL, '2021-09-14 13:04:12', '2021-09-14 13:04:24', NULL, 1, 1, NULL),
(107, '116942958992099852767', 1, 1, NULL, 301, '2021-09-01 00:00:00', '2021-09-01 00:00:00', 0, NULL, 'Treinamento para SAEB, com atividades online e off-line.\n\nAplicativos utilizados:\nJogos do site Ludo Educativo (como jogo da memória, completar as palavras, etc)\nPrograma TuxMath e TuxTyping, para aprimorar o reconhecimento das letras do alfabeto, velocidade de digitação, e compreensão rápida de cálculos matemáticos.\nPrograma GCompris que possui uma variedade de jogos eduicativos infantis, adequados para as crianças em fase de alfabetização.', 1, 0, NULL, '2021-09-14 13:04:48', '2021-09-14 13:05:02', NULL, 1, 1, NULL),
(108, '116942958992099852767', 1, 2, NULL, 301, '2021-09-08 00:00:00', '2021-09-08 00:00:00', 0, NULL, 'Treinamento para SAEB, com atividades online e off-line.\n\nAplicativos utilizados:\nJogos do site Ludo Educativo (como jogo da memória, completar as palavras, etc)\nPrograma TuxMath e TuxTyping, para aprimorar o reconhecimento das letras do alfabeto, velocidade de digitação, e compreensão rápida de cálculos matemáticos.\nPrograma GCompris que possui uma variedade de jogos eduicativos infantis, adequados para as crianças em fase de alfabetização.', 1, 0, NULL, '2021-09-14 13:05:27', '2021-09-14 13:06:28', NULL, 1, 1, NULL),
(109, '116942958992099852767', 1, 1, NULL, 301, '2021-09-15 00:00:00', '2021-09-15 00:00:00', 0, NULL, 'Treinamento para SAEB, com atividades online e off-line.\n\nAplicativos utilizados:\nJogos do site Ludo Educativo (como jogo da memória, completar as palavras, etc)\nPrograma TuxMath e TuxTyping, para aprimorar o reconhecimento das letras do alfabeto, velocidade de digitação, e compreensão rápida de cálculos matemáticos.\nPrograma GCompris que possui uma variedade de jogos eduicativos infantis, adequados para as crianças em fase de alfabetização.', 1, 0, NULL, '2021-09-14 13:06:31', '2021-09-14 13:06:46', NULL, 1, 1, NULL),
(110, '116942958992099852767', 1, 2, NULL, 301, '2021-09-22 00:00:00', '2021-09-22 00:00:00', 0, NULL, 'Treinamento para SAEB, com atividades online e off-line.\n\nAplicativos utilizados:\nJogos do site Ludo Educativo (como jogo da memória, completar as palavras, etc)\nPrograma TuxMath e TuxTyping, para aprimorar o reconhecimento das letras do alfabeto, velocidade de digitação, e compreensão rápida de cálculos matemáticos.\nPrograma GCompris que possui uma variedade de jogos eduicativos infantis, adequados para as crianças em fase de alfabetização.', 1, 0, NULL, '2021-09-14 13:07:09', '2021-09-14 13:07:25', NULL, 1, 1, NULL),
(111, '116942958992099852767', 1, 2, NULL, 301, '2021-09-22 00:00:00', '2021-09-22 00:00:00', 0, NULL, 'Treinamento para SAEB, com atividades online e off-line.\n\nAplicativos utilizados:\nJogos do site Ludo Educativo (como jogo da memória, completar as palavras, etc)\nPrograma TuxMath e TuxTyping, para aprimorar o reconhecimento das letras do alfabeto, velocidade de digitação, e compreensão rápida de cálculos matemáticos.\nPrograma GCompris que possui uma variedade de jogos eduicativos infantis, adequados para as crianças em fase de alfabetização.', 1, 0, NULL, '2021-09-14 13:07:48', '2021-09-14 14:30:15', NULL, 1, 1, NULL),
(112, '116942958992099852767', 2, NULL, NULL, NULL, '2021-09-14 00:00:00', '2021-09-14 00:00:00', 0, 'Orientação Escolar', 'Configuração de impressora na máquina da orientação.', 2, 0, NULL, '2021-09-14 14:30:28', '2021-09-14 17:17:44', NULL, 1, 1, NULL),
(113, '116942958992099852767', 1, 2, NULL, 901, '2021-09-01 00:00:00', '2021-09-01 00:00:00', 0, NULL, 'Uso do laboratório para projeção de vídeo sobre Orações subordinadas + Quiz online da matéria após a exibição.', 1, 0, NULL, '2021-09-14 17:29:18', '2021-09-14 17:29:18', NULL, 1, 1, NULL),
(114, '116942958992099852767', 1, 2, NULL, 901, '2021-09-15 00:00:00', '2021-09-15 00:00:00', 0, NULL, 'Exibição do filme \"escritores da liberdade\" seguido de simulado de língua portuguesa para SAEB.', 1, 0, NULL, '2021-09-14 17:30:55', '2021-09-14 17:30:55', NULL, 1, 1, NULL),
(115, '116942958992099852767', 6, NULL, NULL, NULL, '2021-09-06 00:00:00', '2021-09-10 00:00:00', 0, 'Pátio', 'Instalação das caixas de som para Homenagem Cívica na semana da Pátria.', 4, 0, 'Homenagem Cívica', '2021-09-14 17:35:32', '2021-09-14 17:35:32', NULL, 1, 1, NULL),
(116, '116942958992099852767', 4, NULL, NULL, NULL, '2021-09-15 00:00:00', '2021-09-15 00:00:00', 0, 'EBYLA', 'Pesquisa de novos simulados para o SAEB.', 1, 0, NULL, '2021-09-15 12:32:30', '2021-09-15 12:32:30', NULL, 1, 1, NULL),
(117, '116942958992099852767', 2, NULL, NULL, NULL, '2021-09-17 00:00:00', '2021-09-17 00:00:00', 0, 'Laboratório de Informática', 'Auxílio com configuração do Microsoft Word para a prof de Matemática.', 1, 0, NULL, '2021-09-17 10:52:09', '2021-09-17 10:52:09', NULL, 1, 1, NULL),
(118, '116942958992099852767', 2, NULL, NULL, NULL, '2021-09-17 00:00:00', '2021-09-17 00:00:00', 0, 'Sala Multi', 'Auxílio com download de arquivo e utilização do Libre Office.', 1, 0, NULL, '2021-09-17 10:52:37', '2021-09-17 10:52:37', NULL, 1, 1, NULL),
(119, '116942958992099852767', 5, NULL, NULL, NULL, '2021-09-17 00:00:00', '2021-09-17 00:00:00', 0, 'Laboratório de Informática', 'Publicação do sistema de relatórios no GITHUB.', 1, 0, NULL, '2021-09-17 10:53:07', '2021-09-17 10:53:07', NULL, 1, 1, NULL),
(120, '116942958992099852767', 6, NULL, NULL, NULL, '2021-09-17 00:00:00', '2021-09-17 00:00:00', 0, 'DITEC', 'Apresentação do sistema de relatórios para a equipe de programação e publicação.', 2, 0, 'Apresentação do sistema de relatórios', '2021-09-17 10:53:55', '2021-09-17 10:53:55', NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sequelizemeta`
--

DROP TABLE IF EXISTS `sequelizemeta`;
CREATE TABLE IF NOT EXISTS `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20210809124820-disciplinas-table.js'),
('20210809124831-permissoes-table.js'),
('20210809124849-registros-table.js'),
('20210809124857-registros_comentarios-table.js'),
('20210809124905-registros_fotos-table.js'),
('20210809124916-supervisora_usuario-table.js'),
('20210809124931-tipos_registro-table.js'),
('20210809124941-usuarios-table.js'),
('20210809124948-usuarios_permitidos-table.js'),
('20210810112429-aulas-registros-table.js'),
('20210810112646-inventario.js'),
('20210810112748-inventario-status.js'),
('20210810112800-tipo-periferico.js');

-- --------------------------------------------------------

--
-- Estrutura da tabela `supervisorausuarios`
--

DROP TABLE IF EXISTS `supervisorausuarios`;
CREATE TABLE IF NOT EXISTS `supervisorausuarios` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usuario_superior_email` varchar(50) NOT NULL,
  `usuario_email` varchar(50) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `supervisorausuarios`
--

INSERT INTO `supervisorausuarios` (`id`, `usuario_superior_email`, `usuario_email`, `createdAt`, `updatedAt`) VALUES
(5, 'marinice.formighieri29656@edu.itajai.sc.gov.br', 'cristiano.siebert@edu.itajai.sc.gov.br', '2021-09-13 18:00:01', '2021-09-13 18:48:06');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipoperifericos`
--

DROP TABLE IF EXISTS `tipoperifericos`;
CREATE TABLE IF NOT EXISTS `tipoperifericos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tipoperifericos`
--

INSERT INTO `tipoperifericos` (`id`, `nome`, `createdAt`, `updatedAt`) VALUES
(1, 'Computador/Notebook', '2021-09-06 12:47:59', '2021-09-06 12:47:59'),
(2, 'Impressora', '2021-09-06 12:49:00', '2021-09-06 12:49:00'),
(3, 'Telefone Móvel', '2021-09-06 12:49:10', '2021-09-06 12:49:10'),
(4, 'Televisão', '2021-09-06 12:49:15', '2021-09-06 12:49:15'),
(5, 'Projetor', '2021-09-06 12:49:18', '2021-09-06 12:49:18'),
(6, 'Roteador', '2021-09-06 12:49:21', '2021-09-06 12:49:21'),
(7, 'Switch', '2021-09-06 12:49:26', '2021-09-06 12:49:26'),
(8, 'Console de jogos', '2021-09-06 12:49:36', '2021-09-06 12:49:36'),
(9, 'Monitor', '2021-09-06 12:49:41', '2021-09-06 12:49:41'),
(10, 'Teclado', '2021-09-06 12:49:45', '2021-09-06 12:49:45'),
(11, 'Mouse', '2021-09-06 12:49:48', '2021-09-06 12:49:48'),
(12, 'Scanner', '2021-09-06 12:50:05', '2021-09-06 12:50:05'),
(13, 'Cabos de rede', '2021-09-06 12:50:39', '2021-09-06 12:50:39'),
(14, 'Tocadores de DVD/Blu-Ray', '2021-09-06 12:50:49', '2021-09-06 12:50:49'),
(15, 'Caixas de Som', '2021-09-06 12:50:55', '2021-09-06 12:50:55'),
(16, 'Microfone', '2021-09-06 12:51:00', '2021-09-06 12:51:00'),
(17, 'Arduino', '2021-09-06 12:51:36', '2021-09-06 12:51:36'),
(18, 'Raspberry Pi', '2021-09-06 12:52:03', '2021-09-06 12:52:03'),
(19, 'Fone de ouvido', '2021-09-06 12:52:17', '2021-09-06 12:52:17'),
(20, 'Estabilizador', '2021-09-06 12:52:32', '2021-09-06 12:52:32'),
(21, 'Outro', '2021-09-06 12:56:21', '2021-09-06 12:56:21');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tiporegistros`
--

DROP TABLE IF EXISTS `tiporegistros`;
CREATE TABLE IF NOT EXISTS `tiporegistros` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tiporegistros`
--

INSERT INTO `tiporegistros` (`id`, `nome`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Aula', '2021-08-10 13:05:39', '2021-08-10 13:05:39', NULL),
(2, 'Auxílio', '2021-08-10 13:05:51', '2021-08-10 13:05:51', NULL),
(3, 'Manutenção', '2021-08-10 13:06:04', '2021-08-10 13:06:04', NULL),
(4, 'Planejamento', '2021-08-10 13:06:18', '2021-08-10 13:06:18', NULL),
(5, 'Projeto', '2021-08-10 13:06:28', '2021-08-10 13:06:28', NULL),
(6, 'Outro', '2021-08-10 13:06:49', '2021-08-10 13:06:49', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuariopermitidos`
--

DROP TABLE IF EXISTS `usuariopermitidos`;
CREATE TABLE IF NOT EXISTS `usuariopermitidos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `permissao` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuariopermitidos`
--

INSERT INTO `usuariopermitidos` (`id`, `email`, `permissao`, `createdAt`, `updatedAt`) VALUES
(19, 'cristiano.siebert@edu.itajai.sc.gov.br', 1, '2021-08-10 16:57:00', '2021-08-10 16:57:00'),
(20, 'marinice.formighieri29656@edu.itajai.sc.gov.br', 3, '2021-09-13 12:53:20', '2021-09-13 12:53:20');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `google_id` varchar(100) NOT NULL,
  `nome` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `foto` text NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  `permissao` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `google_id`, `nome`, `email`, `foto`, `ativo`, `permissao`, `createdAt`, `updatedAt`) VALUES
(1, '116942958992099852767', 'Cristiano Roberto Siebert', 'cristiano.siebert@edu.itajai.sc.gov.br', 'https://lh3.googleusercontent.com/a-/AOh14GjY5rPNugz9-ihOywv9zWbBw2gA5wjrt4whlDHj=s96-c', 1, 1, '2021-08-10 12:52:27', '2021-08-10 12:52:27'),
(2, '117955734756513340346', 'Marinice Formighieri', 'marinice.formighieri29656@edu.itajai.sc.gov.br', 'https://lh3.googleusercontent.com/a-/AOh14GjYn5SsEWWerEAUzoFPRwWFXojWxMYP5hlV9an-=s96-c', 1, 3, '2021-09-13 13:30:00', '2021-09-13 13:30:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
