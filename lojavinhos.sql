-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Mar-2021 às 01:28
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `lojavinhos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(60) NOT NULL,
  `cpf` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `cpf`) VALUES
(1, 'Vinicius', '000.000.000.01'),
(2, 'Marcos', '000.000.000.02'),
(3, 'Joel', '000.000.000.03'),
(4, 'Gustavo', '000.000.000.04'),
(5, 'Raquel', '000.000.000.05'),
(6, 'Pamela', '000.000.000.06'),
(7, 'Bruno', '000.000.000.07'),
(8, 'Jonathan', '000.000.000.08'),
(9, 'Matheus', '000.000.000.09'),
(10, 'Rafael', '000.000.000.10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `historicocompras`
--

CREATE TABLE `historicocompras` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigo` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `cliente` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `historicocompras`
--

INSERT INTO `historicocompras` (`id`, `codigo`, `data`, `cliente`) VALUES
(2151, '3fde36a6-c9a1-4d27-9f0f-7c12ab0d1cdd', '2016-02-19', '000.000.000.01'),
(2152, '4a7c9be2-5231-4dff-b8e7-9a639286726e', '2015-10-22', '000.000.000.02'),
(2153, '4a7c9be2-5231-4dff-b8e7-9a639286726e', '2014-08-20', '000.000.000.03'),
(2154, 'b25433d4-366d-4cc7-8e21-2f6d9a4b8b51', '2016-12-04', '000.000.000.04'),
(2155, '7f33cbdc-e7d5-4e3b-ab96-e4d940c9710a', '2015-05-08', '000.000.000.04'),
(2156, '918b08fa-402b-4eaf-acc3-ebf8ecd864dc', '2016-10-10', '000.000.000.05'),
(2157, 'd71b54eb-1182-468e-9512-bda1ea8cb35d', '2014-05-08', '000.000.000.06'),
(2158, '30769c65-2c2d-4e59-9ed6-29f11851f993', '2016-10-07', '000.000.000.08'),
(2159, '0eed7137-26ae-4c94-94db-9211083c4d61', '2016-11-08', '000.000.000.09'),
(2160, 'fb5c14ac-6659-4693-b766-3f60a4e5518b', '2015-07-12', '000.000.000.10'),
(2161, 'c32e8495-4a81-4264-a7c6-873dc9412c00', '2015-02-07', '000.000.000.03'),
(2162, '138e8089-3b89-48e9-8ed1-ee937b598596', '2016-08-08', '000.000.000.05'),
(2163, 'da9026e6-a6da-4a63-ab1d-606ca74b40be', '2016-06-15', '000.000.000.02'),
(2164, 'e7c58b49-1707-49f7-af0c-0d99ed1c0498', '2015-08-17', '000.000.000.09'),
(2165, '570d1b25-8d21-4ea4-ab65-c35bb2dd8ec9', '2016-04-11', '000.000.000.03'),
(2166, 'c9bffa65-3d05-4fa3-9e19-b33f9eeb1254', '2016-04-10', '000.000.000.07'),
(2167, 'e996a81a-961a-47b7-8ba9-bdf16294c9eb', '2016-06-08', '000.000.000.07'),
(2168, '2536d496-9030-43ab-ad04-9a3e861395ae', '2016-07-04', '000.000.000.01'),
(2169, '1e571b0e-c09b-40ec-8191-cf1ef55fe1b1', '2016-06-03', '000.000.000.02'),
(2170, 'f838c843-9eab-4b4d-bf7e-b2d2f472dfb2', '2016-06-01', '000.000.000.05'),
(2171, 'c99f065b-5596-4e13-a745-9c713331a814', '2016-10-02', '000.000.000.05'),
(2172, 'a657fc5a-10d0-48ca-ac97-100ba13c6f72', '2016-08-04', '000.000.000.03'),
(2173, 'd18c1086-e9ef-4936-a239-050fc485ff43', '2015-12-07', '000.000.000.08'),
(2174, '4b517823-8ac9-47f2-80c9-651e2e396d73', '2016-07-15', '000.000.000.04'),
(2175, 'e1d37861-24b7-458f-a00d-efcf96d3d0d1', '2016-03-11', '000.000.000.07'),
(2176, '0b83c705-216a-4e7c-9947-9b702edcce1a', '2016-04-02', '000.000.000.07'),
(2177, 'f74f5755-ca62-4d67-86ee-fa557f1cc347', '2016-06-10', '000.000.000.03'),
(2178, '64ed4243-8a51-4d28-be67-909319e99c4e', '2016-07-08', '000.000.000.04'),
(2179, 'dc5d468b-5d16-451b-865a-0265228e8610', '2016-08-10', '000.000.000.07'),
(2180, '39130632-90f6-452a-9236-91d815ea7fdb', '2016-06-28', '000.000.000.06'),
(2181, '8d38d75f-e612-4d65-b597-2ff92b574a88', '2016-07-18', '000.000.000.08'),
(2182, 'ce42787a-05da-4701-a33e-aef56ee8cc2a', '2016-07-18', '000.000.000.08'),
(2183, 'beae2d56-7ca3-4280-ae36-ad3b2a1f742c', '2016-07-18', '000.000.000.08'),
(2184, 'e00f8cd0-94ff-4b29-bfd9-539e35e2cd75', '2016-07-18', '000.000.000.08'),
(2185, 'b503fbff-96c6-4da7-a3ff-daa03291c0b9', '2016-08-22', '000.000.000.10'),
(2186, '1194a8cb-b693-40dd-a3d2-23f9f343d36c', '2016-09-15', '000.000.000.08'),
(2187, '517ec2b6-1d3d-48a1-9ed4-a51e20ce18df', '2016-11-15', '000.000.000.09'),
(2188, '52e58136-4116-4b37-8559-b4006aa58285', '2016-11-10', '000.000.000.06'),
(2189, '70a1b917-d457-478b-a075-fba5554d6362', '2016-11-12', '000.000.000.04'),
(2190, 'e8cab51e-d4b3-43ce-84dc-1c6d360f4c0a', '2016-10-14', '000.000.000.05'),
(2191, 'd1339fc3-5a2d-4cc3-be74-a2e4ed2e72fa', '2016-10-07', '000.000.000.10'),
(2192, '603fce5f-4c78-40f8-b212-d7ed1e27571a', '2016-07-11', '000.000.000.08'),
(2193, '6f0bee3e-4988-4e23-83f6-c28af6ba0464', '2016-08-15', '000.000.000.03'),
(2194, '89f59951-1312-4f6f-8851-ef0b9c7c4d52', '2015-05-05', '000.000.000.02'),
(2195, 'fc41d3a1-1eef-49c5-905c-d19e747eb6c5', '2015-08-06', '000.000.000.04'),
(2196, '7405ad98-ca99-4fd3-994f-85be49633141', '2015-05-18', '000.000.000.04'),
(2197, 'b0d17108-5b79-41f2-a31c-77f2d05775d3', '2015-06-17', '000.000.000.04'),
(2198, '17f00e57-cc0c-4d5f-ac92-367855eb64a1', '2016-08-11', '000.000.000.08'),
(2199, '38ef8665-61df-4402-94f8-3c9b28ab7123', '2016-09-17', '000.000.000.06'),
(2200, '7a6aeaec-18db-4339-b87a-500dac29e1cb', '2016-11-03', '000.000.000.08');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) UNSIGNED NOT NULL,
  `idCodigo` varchar(60) DEFAULT NULL,
  `produto` varchar(60) DEFAULT NULL,
  `variedade` varchar(60) DEFAULT NULL,
  `pais` varchar(60) DEFAULT NULL,
  `categoria` varchar(60) DEFAULT NULL,
  `safra` int(11) DEFAULT NULL,
  `valor` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `idCodigo`, `produto`, `variedade`, `pais`, `categoria`, `safra`, `valor`) VALUES
(6049, '3fde36a6-c9a1-4d27-9f0f-7c12ab0d1cdd', 'Casa Silva Reserva', 'Cabernet Sauvignon', 'Chile', 'Tinto', 2014, 79),
(6050, '3fde36a6-c9a1-4d27-9f0f-7c12ab0d1cdd', 'Casa Silva Reserva', 'Carménère', 'Chile', 'Tinto', 2014, 79),
(6051, '4a7c9be2-5231-4dff-b8e7-9a639286726e', 'Casa Silva Reserva', 'Chardonnay', 'Chile', 'Branco', 2016, 79),
(6052, '4a7c9be2-5231-4dff-b8e7-9a639286726e', 'Casa Silva Reserva', 'Sauvignon Blanc', 'Chile', 'Branco', 2015, 79),
(6053, '4a7c9be2-5231-4dff-b8e7-9a639286726e', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', 2009, 120),
(6054, '4a7c9be2-5231-4dff-b8e7-9a639286726e', 'Casa Silva Gran Reserva', 'Syrah', 'Chile', 'Tinto', 2009, 120),
(6055, '4a7c9be2-5231-4dff-b8e7-9a639286726e', 'Punto Final Etiqueta Negra', 'Malbec', 'Argentina', 'Tinto', 2012, 59.9),
(6056, '4a7c9be2-5231-4dff-b8e7-9a639286726e', 'Punto Final', 'Sauvignon Blanc', 'Argentina', 'Branco', 2015, 59.9),
(6057, '4a7c9be2-5231-4dff-b8e7-9a639286726e', 'Punto Final', 'Malbec', 'Argentina', 'Rosé', 2016, 59.9),
(6058, 'b25433d4-366d-4cc7-8e21-2f6d9a4b8b51', 'Punto Final Etiqueta Branca', 'Malbec', 'Argentina', 'Tinto', 2010, 98),
(6059, 'b25433d4-366d-4cc7-8e21-2f6d9a4b8b51', 'Casa Valduga Raízes', 'Cabernet Sauvignon', 'Brasil', 'Tinto', 2013, 55),
(6060, 'b25433d4-366d-4cc7-8e21-2f6d9a4b8b51', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', 2013, 55),
(6061, '7f33cbdc-e7d5-4e3b-ab96-e4d940c9710a', 'Casa Valduga Raízes', 'Chardonnay', 'Brasil', 'Branco', 2013, 55),
(6062, '7f33cbdc-e7d5-4e3b-ab96-e4d940c9710a', 'Casa Valduga Gran Reserva', 'Chardonnay', 'Brasil', 'Branco', 2009, 110),
(6063, '918b08fa-402b-4eaf-acc3-ebf8ecd864dc', 'Casa Valduga Gran Reserva', 'Chardonnay', 'Brasil', 'Branco', 2009, 110),
(6064, '918b08fa-402b-4eaf-acc3-ebf8ecd864dc', 'Casa Valduga Villa Lobos', 'Cabernet Sauvignon', 'Brasil', 'Tinto', 2007, 140),
(6065, '918b08fa-402b-4eaf-acc3-ebf8ecd864dc', 'Finca La Emperatriz Crianza', 'Tempranillo', 'Espanha', 'Tinto', 2008, 158),
(6066, '918b08fa-402b-4eaf-acc3-ebf8ecd864dc', 'Maius Priorat', 'Garnacha', 'Espanha', 'Tinto', 2008, 158),
(6067, 'd71b54eb-1182-468e-9512-bda1ea8cb35d', 'Avondale', 'Muscat de Frontignon', 'Africa do Sul', 'Rosé', 2010, 66.8),
(6068, 'd71b54eb-1182-468e-9512-bda1ea8cb35d', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', 2012, 258),
(6069, 'd71b54eb-1182-468e-9512-bda1ea8cb35d', 'Saint Emilion Château La Clide Gran Cru', 'Merlot', 'França', 'Tinto', 2009, 298),
(6070, '30769c65-2c2d-4e59-9ed6-29f11851f993', 'Avondale', 'Muscat de Frontignon', 'Africa do Sul', 'Rosé', 2010, 66.8),
(6071, '30769c65-2c2d-4e59-9ed6-29f11851f993', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', 2012, 258),
(6072, '0eed7137-26ae-4c94-94db-9211083c4d61', 'Avondale', 'Muscat de Frontignon', 'Africa do Sul', 'Rosé', 2010, 66.8),
(6073, '0eed7137-26ae-4c94-94db-9211083c4d61', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', 2012, 258),
(6074, 'fb5c14ac-6659-4693-b766-3f60a4e5518b', 'Avondale', 'Muscat de Frontignon', 'Africa do Sul', 'Rosé', 2010, 66.8),
(6075, 'fb5c14ac-6659-4693-b766-3f60a4e5518b', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', 2012, 258),
(6076, 'fb5c14ac-6659-4693-b766-3f60a4e5518b', 'Finca La Emperatriz Crianza', 'Tempranillo', 'Espanha', 'Tinto', 2008, 158),
(6077, 'c32e8495-4a81-4264-a7c6-873dc9412c00', 'Avondale', 'Muscat de Frontignon', 'Africa do Sul', 'Rosé', 2010, 66.8),
(6078, 'c32e8495-4a81-4264-a7c6-873dc9412c00', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', 2012, 258),
(6079, 'c32e8495-4a81-4264-a7c6-873dc9412c00', 'Finca La Emperatriz Crianza', 'Tempranillo', 'Espanha', 'Tinto', 2008, 158),
(6080, 'c32e8495-4a81-4264-a7c6-873dc9412c00', 'Casa Silva Reserva', 'Cabernet Sauvignon', 'Chile', 'Tinto', 2014, 79),
(6081, 'c32e8495-4a81-4264-a7c6-873dc9412c00', 'Casa Silva Reserva', 'Carménère', 'Chile', 'Tinto', 2014, 79),
(6082, '138e8089-3b89-48e9-8ed1-ee937b598596', 'Avondale', 'Muscat de Frontignon', 'Africa do Sul', 'Rosé', 2010, 66.8),
(6083, '138e8089-3b89-48e9-8ed1-ee937b598596', 'Casa Silva Reserva', 'Sauvignon Blanc', 'Chile', 'Branco', 2015, 79),
(6084, '138e8089-3b89-48e9-8ed1-ee937b598596', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', 2009, 120),
(6085, 'da9026e6-a6da-4a63-ab1d-606ca74b40be', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', 2009, 120),
(6086, 'da9026e6-a6da-4a63-ab1d-606ca74b40be', 'Casa Valduga Villa Lobos', 'Cabernet Sauvignon', 'Brasil', 'Tinto', 2007, 140),
(6087, 'da9026e6-a6da-4a63-ab1d-606ca74b40be', 'Finca La Emperatriz Crianza', 'Tempranillo', 'Espanha', 'Tinto', 2008, 158),
(6088, 'e7c58b49-1707-49f7-af0c-0d99ed1c0498', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', 2009, 120),
(6089, 'e7c58b49-1707-49f7-af0c-0d99ed1c0498', 'Avondale', 'Muscat de Frontignon', 'Africa do Sul', 'Rosé', 2010, 66.8),
(6090, 'e7c58b49-1707-49f7-af0c-0d99ed1c0498', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', 2012, 258),
(6091, '570d1b25-8d21-4ea4-ab65-c35bb2dd8ec9', 'Avondale', 'Muscat de Frontignon', 'Africa do Sul', 'Rosé', 2010, 66.8),
(6092, '570d1b25-8d21-4ea4-ab65-c35bb2dd8ec9', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', 2012, 258),
(6093, '570d1b25-8d21-4ea4-ab65-c35bb2dd8ec9', 'Casa Valduga Raízes', 'Cabernet Sauvignon', 'Brasil', 'Tinto', 2013, 55),
(6094, '570d1b25-8d21-4ea4-ab65-c35bb2dd8ec9', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', 2013, 55),
(6095, 'c9bffa65-3d05-4fa3-9e19-b33f9eeb1254', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', 2012, 258),
(6096, 'c9bffa65-3d05-4fa3-9e19-b33f9eeb1254', 'Casa Valduga Raízes', 'Cabernet Sauvignon', 'Brasil', 'Tinto', 2013, 55),
(6097, 'c9bffa65-3d05-4fa3-9e19-b33f9eeb1254', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', 2013, 55),
(6098, 'e996a81a-961a-47b7-8ba9-bdf16294c9eb', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', 2012, 258),
(6099, 'e996a81a-961a-47b7-8ba9-bdf16294c9eb', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', 2013, 55),
(6100, '2536d496-9030-43ab-ad04-9a3e861395ae', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', 2012, 258),
(6101, '2536d496-9030-43ab-ad04-9a3e861395ae', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', 2012, 258),
(6102, '2536d496-9030-43ab-ad04-9a3e861395ae', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', 2013, 55),
(6103, '1e571b0e-c09b-40ec-8191-cf1ef55fe1b1', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', 2012, 258),
(6104, '1e571b0e-c09b-40ec-8191-cf1ef55fe1b1', 'Casa Valduga Raízes', 'Chardonnay', 'Brasil', 'Branco', 2013, 55),
(6105, '1e571b0e-c09b-40ec-8191-cf1ef55fe1b1', 'Casa Valduga Gran Reserva', 'Chardonnay', 'Brasil', 'Branco', 2009, 110),
(6106, 'f838c843-9eab-4b4d-bf7e-b2d2f472dfb2', 'Casa Valduga Raízes', 'Chardonnay', 'Brasil', 'Branco', 2013, 55),
(6107, 'f838c843-9eab-4b4d-bf7e-b2d2f472dfb2', 'Casa Valduga Gran Reserva', 'Chardonnay', 'Brasil', 'Branco', 2009, 110),
(6108, 'f838c843-9eab-4b4d-bf7e-b2d2f472dfb2', 'Avondale', 'Muscat de Frontignon', 'Africa do Sul', 'Rosé', 2010, 66.8),
(6109, 'f838c843-9eab-4b4d-bf7e-b2d2f472dfb2', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', 2012, 258),
(6110, 'f838c843-9eab-4b4d-bf7e-b2d2f472dfb2', 'Finca La Emperatriz Crianza', 'Tempranillo', 'Espanha', 'Tinto', 2008, 158),
(6111, 'c99f065b-5596-4e13-a745-9c713331a814', 'Casa Valduga Gran Reserva', 'Chardonnay', 'Brasil', 'Branco', 2009, 110),
(6112, 'c99f065b-5596-4e13-a745-9c713331a814', 'Casa Valduga Villa Lobos', 'Cabernet Sauvignon', 'Brasil', 'Tinto', 2007, 140),
(6113, 'c99f065b-5596-4e13-a745-9c713331a814', 'Finca La Emperatriz Crianza', 'Tempranillo', 'Espanha', 'Tinto', 2008, 158),
(6114, 'c99f065b-5596-4e13-a745-9c713331a814', 'Maius Priorat', 'Garnacha', 'Espanha', 'Tinto', 2008, 158),
(6115, 'a657fc5a-10d0-48ca-ac97-100ba13c6f72', 'Casa Valduga Gran Reserva', 'Chardonnay', 'Brasil', 'Branco', 2009, 110),
(6116, 'a657fc5a-10d0-48ca-ac97-100ba13c6f72', 'Casa Valduga Villa Lobos', 'Cabernet Sauvignon', 'Brasil', 'Tinto', 2007, 140),
(6117, 'a657fc5a-10d0-48ca-ac97-100ba13c6f72', 'Finca La Emperatriz Crianza', 'Tempranillo', 'Espanha', 'Tinto', 2008, 158),
(6118, 'd18c1086-e9ef-4936-a239-050fc485ff43', 'Casa Valduga Gran Reserva', 'Chardonnay', 'Brasil', 'Branco', 2009, 110),
(6119, 'd18c1086-e9ef-4936-a239-050fc485ff43', 'Casa Valduga Villa Lobos', 'Cabernet Sauvignon', 'Brasil', 'Tinto', 2007, 140),
(6120, '4b517823-8ac9-47f2-80c9-651e2e396d73', 'Casa Valduga Gran Reserva', 'Chardonnay', 'Brasil', 'Branco', 2009, 110),
(6121, '4b517823-8ac9-47f2-80c9-651e2e396d73', 'Casa Valduga Villa Lobos', 'Cabernet Sauvignon', 'Brasil', 'Tinto', 2007, 140),
(6122, '4b517823-8ac9-47f2-80c9-651e2e396d73', 'Punto Final Etiqueta Negra', 'Malbec', 'Argentina', 'Tinto', 2012, 59.9),
(6123, '4b517823-8ac9-47f2-80c9-651e2e396d73', 'Punto Final', 'Sauvignon Blanc', 'Argentina', 'Branco', 2015, 59.9),
(6124, 'e1d37861-24b7-458f-a00d-efcf96d3d0d1', 'Casa Valduga Gran Reserva', 'Chardonnay', 'Brasil', 'Branco', 2009, 110),
(6125, 'e1d37861-24b7-458f-a00d-efcf96d3d0d1', 'Casa Valduga Villa Lobos', 'Cabernet Sauvignon', 'Brasil', 'Tinto', 2007, 140),
(6126, '0b83c705-216a-4e7c-9947-9b702edcce1a', 'Casa Valduga Gran Reserva', 'Chardonnay', 'Brasil', 'Branco', 2009, 110),
(6127, '0b83c705-216a-4e7c-9947-9b702edcce1a', 'Casa Valduga Villa Lobos', 'Cabernet Sauvignon', 'Brasil', 'Tinto', 2007, 140),
(6128, '0b83c705-216a-4e7c-9947-9b702edcce1a', 'Casa Valduga Villa Lobos', 'Cabernet Sauvignon', 'Brasil', 'Tinto', 2007, 140),
(6129, 'f74f5755-ca62-4d67-86ee-fa557f1cc347', 'Casa Valduga Raízes', 'Cabernet Sauvignon', 'Brasil', 'Tinto', 2013, 55),
(6130, 'f74f5755-ca62-4d67-86ee-fa557f1cc347', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', 2013, 55),
(6131, 'f74f5755-ca62-4d67-86ee-fa557f1cc347', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', 2009, 120),
(6132, '64ed4243-8a51-4d28-be67-909319e99c4e', 'Casa Valduga Raízes', 'Cabernet Sauvignon', 'Brasil', 'Tinto', 2013, 55),
(6133, '64ed4243-8a51-4d28-be67-909319e99c4e', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', 2012, 258),
(6134, '64ed4243-8a51-4d28-be67-909319e99c4e', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', 2013, 55),
(6135, 'dc5d468b-5d16-451b-865a-0265228e8610', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', 2012, 258),
(6136, 'dc5d468b-5d16-451b-865a-0265228e8610', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', 2013, 55),
(6137, 'dc5d468b-5d16-451b-865a-0265228e8610', 'Casa Silva Reserva', 'Sauvignon Blanc', 'Chile', 'Branco', 2015, 79),
(6138, 'dc5d468b-5d16-451b-865a-0265228e8610', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', 2009, 120),
(6139, '39130632-90f6-452a-9236-91d815ea7fdb', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', 2012, 258),
(6140, '39130632-90f6-452a-9236-91d815ea7fdb', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', 2013, 55),
(6141, '39130632-90f6-452a-9236-91d815ea7fdb', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', 2009, 120),
(6142, '8d38d75f-e612-4d65-b597-2ff92b574a88', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', 2013, 55),
(6143, '8d38d75f-e612-4d65-b597-2ff92b574a88', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', 2009, 120),
(6144, 'ce42787a-05da-4701-a33e-aef56ee8cc2a', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', 2013, 55),
(6145, 'ce42787a-05da-4701-a33e-aef56ee8cc2a', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', 2009, 120),
(6146, 'ce42787a-05da-4701-a33e-aef56ee8cc2a', 'Wente Reliz Creek Pinot Noir', 'Pinot Noir', 'EUA', 'Tinto', 2012, 258),
(6147, 'ce42787a-05da-4701-a33e-aef56ee8cc2a', 'Casa Valduga Raízes', 'Chardonnay', 'Brasil', 'Branco', 2013, 55),
(6148, 'beae2d56-7ca3-4280-ae36-ad3b2a1f742c', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', 2013, 55),
(6149, 'beae2d56-7ca3-4280-ae36-ad3b2a1f742c', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', 2009, 120),
(6150, 'beae2d56-7ca3-4280-ae36-ad3b2a1f742c', 'Casa Valduga Raízes', 'Chardonnay', 'Brasil', 'Branco', 2013, 55),
(6151, 'e00f8cd0-94ff-4b29-bfd9-539e35e2cd75', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', 2013, 55),
(6152, 'e00f8cd0-94ff-4b29-bfd9-539e35e2cd75', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', 2009, 120),
(6153, 'e00f8cd0-94ff-4b29-bfd9-539e35e2cd75', 'Casa Valduga Raízes', 'Chardonnay', 'Brasil', 'Branco', 2013, 55),
(6154, 'b503fbff-96c6-4da7-a3ff-daa03291c0b9', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', 2013, 55),
(6155, 'b503fbff-96c6-4da7-a3ff-daa03291c0b9', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', 2009, 120),
(6156, 'b503fbff-96c6-4da7-a3ff-daa03291c0b9', 'Casa Valduga Raízes', 'Chardonnay', 'Brasil', 'Branco', 2013, 55),
(6157, 'b503fbff-96c6-4da7-a3ff-daa03291c0b9', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', 2009, 120),
(6158, '1194a8cb-b693-40dd-a3d2-23f9f343d36c', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', 2013, 55),
(6159, '1194a8cb-b693-40dd-a3d2-23f9f343d36c', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', 2009, 120),
(6160, '1194a8cb-b693-40dd-a3d2-23f9f343d36c', 'Casa Valduga Raízes', 'Chardonnay', 'Brasil', 'Branco', 2013, 55),
(6161, '517ec2b6-1d3d-48a1-9ed4-a51e20ce18df', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', 2013, 55),
(6162, '517ec2b6-1d3d-48a1-9ed4-a51e20ce18df', 'Casa Valduga Raízes', 'Chardonnay', 'Brasil', 'Branco', 2013, 55),
(6163, '52e58136-4116-4b37-8559-b4006aa58285', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', 2013, 55),
(6164, '52e58136-4116-4b37-8559-b4006aa58285', 'Casa Valduga Raízes', 'Chardonnay', 'Brasil', 'Branco', 2013, 55),
(6165, '52e58136-4116-4b37-8559-b4006aa58285', 'Casa Silva Reserva', 'Sauvignon Blanc', 'Chile', 'Branco', 2015, 79),
(6166, '70a1b917-d457-478b-a075-fba5554d6362', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', 2013, 55),
(6167, '70a1b917-d457-478b-a075-fba5554d6362', 'Casa Valduga Raízes', 'Chardonnay', 'Brasil', 'Branco', 2013, 55),
(6168, '70a1b917-d457-478b-a075-fba5554d6362', 'Casa Silva Reserva', 'Sauvignon Blanc', 'Chile', 'Branco', 2015, 79),
(6169, '70a1b917-d457-478b-a075-fba5554d6362', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', 2009, 120),
(6170, 'e8cab51e-d4b3-43ce-84dc-1c6d360f4c0a', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', 2013, 55),
(6171, 'e8cab51e-d4b3-43ce-84dc-1c6d360f4c0a', 'Casa Silva Reserva', 'Sauvignon Blanc', 'Chile', 'Branco', 2015, 79),
(6172, 'e8cab51e-d4b3-43ce-84dc-1c6d360f4c0a', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', 2009, 120),
(6173, 'd1339fc3-5a2d-4cc3-be74-a2e4ed2e72fa', 'Casa Silva Reserva', 'Sauvignon Blanc', 'Chile', 'Branco', 2015, 79),
(6174, 'd1339fc3-5a2d-4cc3-be74-a2e4ed2e72fa', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', 2009, 120),
(6175, '603fce5f-4c78-40f8-b212-d7ed1e27571a', 'Casa Silva Reserva', 'Sauvignon Blanc', 'Chile', 'Branco', 2015, 79),
(6176, '603fce5f-4c78-40f8-b212-d7ed1e27571a', 'Casa Silva Gran Reserva', 'Petit Verdot', 'Chile', 'Tinto', 2009, 120),
(6177, '603fce5f-4c78-40f8-b212-d7ed1e27571a', 'Casa Valduga Gran Reserva', 'Chardonnay', 'Brasil', 'Branco', 2009, 110),
(6178, '6f0bee3e-4988-4e23-83f6-c28af6ba0464', 'Casa Silva Reserva', 'Sauvignon Blanc', 'Chile', 'Branco', 2015, 79),
(6179, '89f59951-1312-4f6f-8851-ef0b9c7c4d52', 'Casa Silva Reserva', 'Sauvignon Blanc', 'Chile', 'Branco', 2015, 79),
(6180, '89f59951-1312-4f6f-8851-ef0b9c7c4d52', 'Casa Valduga Raízes', 'Merlot', 'Brasil', 'Tinto', 2013, 55),
(6181, '89f59951-1312-4f6f-8851-ef0b9c7c4d52', 'Casa Valduga Raízes', 'Chardonnay', 'Brasil', 'Branco', 2013, 55),
(6182, 'fc41d3a1-1eef-49c5-905c-d19e747eb6c5', 'Casa Valduga Raízes', 'Chardonnay', 'Brasil', 'Branco', 2013, 55),
(6183, '7405ad98-ca99-4fd3-994f-85be49633141', 'Casa Valduga Raízes', 'Chardonnay', 'Brasil', 'Branco', 2013, 55),
(6184, '7405ad98-ca99-4fd3-994f-85be49633141', 'Saint Emilion Château La Clide Gran Cru', 'Merlot', 'França', 'Tinto', 2009, 298),
(6185, 'b0d17108-5b79-41f2-a31c-77f2d05775d3', 'Saint Emilion Château La Clide Gran Cru', 'Merlot', 'França', 'Tinto', 2009, 298),
(6186, '17f00e57-cc0c-4d5f-ac92-367855eb64a1', 'Saint Emilion Château La Clide Gran Cru', 'Merlot', 'França', 'Tinto', 2009, 298),
(6187, '17f00e57-cc0c-4d5f-ac92-367855eb64a1', 'Saint Emilion Château La Clide Gran Cru', 'Merlot', 'França', 'Tinto', 2009, 298),
(6188, '38ef8665-61df-4402-94f8-3c9b28ab7123', 'Saint Emilion Château La Clide Gran Cru', 'Merlot', 'França', 'Tinto', 2009, 298),
(6189, '38ef8665-61df-4402-94f8-3c9b28ab7123', 'Saint Emilion Château La Clide Gran Cru', 'Merlot', 'França', 'Tinto', 2009, 298),
(6190, '38ef8665-61df-4402-94f8-3c9b28ab7123', 'Punto Final', 'Sauvignon Blanc', 'Argentina', 'Branco', 2015, 59.9),
(6191, '7a6aeaec-18db-4339-b87a-500dac29e1cb', 'Saint Emilion Château La Clide Gran Cru', 'Merlot', 'França', 'Tinto', 2009, 298),
(6192, '7a6aeaec-18db-4339-b87a-500dac29e1cb', 'Punto Final', 'Sauvignon Blanc', 'Argentina', 'Branco', 2015, 59.9);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD UNIQUE KEY `id_cliente` (`id`);

--
-- Índices para tabela `historicocompras`
--
ALTER TABLE `historicocompras`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `historicocompras`
--
ALTER TABLE `historicocompras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2201;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6193;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
