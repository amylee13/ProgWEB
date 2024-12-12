-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12/12/2024 às 19:30
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
-- Banco de dados: `progwebtarde`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `endereco` text NOT NULL,
  `data_nascimento` date NOT NULL,
  `data_atualizacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `email`, `telefone`, `endereco`, `data_nascimento`, `data_atualizacao`) VALUES
(1, 'João Silva', 'joao.silva@email.com', '(11) 98765-4321', 'Rua das Flores, 123, São Paulo - SP', '1990-04-10', '2024-12-11 17:59:23'),
(2, 'Maria Oliveira', 'maria.oliveira@email.com', '(21) 99876-5432', 'Av. Copacabana, 456, Rio de Janeiro - RJ', '1985-02-15', '2024-12-11 17:59:23'),
(3, 'Carlos Pereira', 'carlos.pereira@email.com', '(31) 96325-7845', 'Rua São Bento, 789, Belo Horizonte - MG', '1992-08-22', '2024-12-11 17:59:23'),
(4, 'Ana Costa', 'ana.costa@email.com', '(41) 94456-1234', 'Av. Sete de Setembro, 321, Curitiba - PR', '1988-11-30', '2024-12-11 17:59:23'),
(5, 'Lucas Souza', 'lucas.souza@email.com', '(51) 93456-7890', 'Rua dos Três Pinheiros, 234, Porto Alegre - RS', '1995-06-05', '2024-12-11 17:59:23'),
(6, 'Fernanda Almeida', 'fernanda.almeida@email.com', '(61) 97456-8901', 'Quadra 12, Conjunto 5, Brasília - DF', '1991-09-03', '2024-12-11 17:59:23'),
(7, 'Ricardo Santos', 'ricardo.santos@email.com', '(81) 99823-1123', 'Rua Boa Viagem, 101, Recife - PE', '1982-12-14', '2024-12-11 17:59:23'),
(8, 'Beatriz Ferreira', 'beatriz.ferreira@email.com', '(62) 95467-1234', 'Av. Goiás, 456, Goiânia - GO', '1994-01-20', '2024-12-11 17:59:23'),
(9, 'Gustavo Martins', 'gustavo.martins@email.com', '(71) 99345-6789', 'Rua do Bom Jesus, 567, Salvador - BA', '1986-05-28', '2024-12-11 17:59:23'),
(10, 'Paula Rocha', 'paula.rocha@email.com', '(83) 98876-5432', 'Rua das Palmeiras, 890, João Pessoa - PB', '1990-07-18', '2024-12-11 17:59:23'),
(11, 'Eduardo Lima', 'eduardo.lima@email.com', '(27) 99123-4567', 'Av. Vitória, 1234, Vitória - ES', '1993-03-25', '2024-12-11 17:59:23'),
(12, 'Camila Silva', 'camila.silva@email.com', '(85) 92345-6789', 'Rua do Sol, 234, Fortaleza - CE', '1987-09-17', '2024-12-11 17:59:23'),
(13, 'Felipe Souza', 'felipe.souza@email.com', '(48) 98765-4321', 'Rua do Lago, 543, Florianópolis - SC', '1996-10-04', '2024-12-11 17:59:23'),
(14, 'Juliana Costa', 'juliana.costa@email.com', '(61) 96123-4567', 'Setor Sul, Bloco C, Brasília - DF', '1990-12-12', '2024-12-11 17:59:23'),
(15, 'Marcos Lima', 'marcos.lima@email.com', '(19) 99321-7654', 'Av. Paulista, 245, Campinas - SP', '1989-01-11', '2024-12-11 17:59:23'),
(16, 'Larissa Oliveira', 'larissa.oliveira@email.com', '(34) 96254-9876', 'Rua dos Três Corações, 432, Uberlândia - MG', '1992-07-29', '2024-12-11 17:59:23'),
(17, 'Felipe Rodrigues', 'felipe.rodrigues@email.com', '(71) 97543-6789', 'Rua da Paz, 876, Salvador - BA', '1994-04-09', '2024-12-11 17:59:23'),
(18, 'Juliana Martins', 'juliana.martins@email.com', '(61) 92234-5678', 'Asa Norte, Bloco F, Brasília - DF', '1990-05-26', '2024-12-11 17:59:23'),
(19, 'Daniel Costa', 'daniel.costa@email.com', '(47) 92456-1234', 'Rua do Centro, 432, Joinville - SC', '1984-02-15', '2024-12-11 17:59:23'),
(20, 'Tânia Almeida', 'tania.almeida@email.com', '(77) 95678-4321', 'Rua das Acácias, 987, Barreiras - BA', '1983-11-22', '2024-12-11 17:59:23'),
(21, 'carlos', 'eeeeee', '33', '3', '0000-00-00', '2024-12-11 20:19:45'),
(23, 'carlo', '3', '4', '3', '2000-08-14', '2024-12-12 17:42:15'),
(26, 'carlos', 'emilly@1309', '66', 'y', '2024-12-12', '2024-12-12 17:34:21');

-- --------------------------------------------------------

--
-- Estrutura para tabela `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `data` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `login`
--

INSERT INTO `login` (`id`, `nome`, `usuario`, `email`, `senha`, `data`) VALUES
(1, '8', 'bbazotti', '8', 'd41d8cd98f00b204e9800998ecf8427e', '2024-11-18 15:56:59'),
(2, 'Breno Bozetti', 'bbozotti', 'bbozotti@gmail.com', '6a9edcb7b63821802aa44d35d531c9fc', '2024-11-18 16:10:27'),
(4, 'teste', 't@t.com', 't@t.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-12-10 14:01:10');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `tamanho` enum('P','PP','M','GG') NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `cor` varchar(255) NOT NULL,
  `preco` float NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `tamanho`, `categoria`, `marca`, `cor`, `preco`, `imagem`, `data`) VALUES
(5, 'Calça jeans', 'Calça jeans essência urbana feita de tecido', 'M', 'Calças', 'Marisa', 'Naval', 190, '', '2024-12-03 18:13:35'),
(6, 'Camiseta de gola', 'Camiseta linea casual feita de algodão ', 'GG', 'Camisetas', 'Nike', 'Preto', 120, '', '2024-12-03 18:23:58'),
(8, 'vestido cinza', 'e', 'P', 'vestido', 'renner', 'cinza', 123, '', '2024-12-06 18:26:48'),
(12, 'vestido arco iris', 'iiiiiiii', 'P', 'vestido', 'renner', 'azul ', 0, '', '2024-12-09 18:24:39');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING HASH,
  ADD UNIQUE KEY `usuario` (`usuario`) USING HASH;

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roupa` (`nome`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
