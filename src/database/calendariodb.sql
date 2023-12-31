-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09/11/2023 às 17:27
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `calendariodb`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `codigos`
--

CREATE TABLE `codigos` (
  `ProfessorID` int(11) NOT NULL,
  `nome_professor` varchar(255) NOT NULL,
  `Codigo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `codigos`
--

INSERT INTO `codigos` (`ProfessorID`, `nome_professor`, `Codigo`) VALUES
(1, 'Sandra Chacon', 'sc123'),
(2, 'Pedro Albino', 'pa123'),
(3, 'Aline Chagas', 'ac123'),
(4, 'Waldeck Lindoso', 'wl123'),
(5, 'Danilo Lucio', 'dl123'),
(6, 'Valeria Fagundes', 'vf123');

-- --------------------------------------------------------

--
-- Estrutura para tabela `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(220) NOT NULL,
  `color` varchar(45) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `events`
--

INSERT INTO `events` (`id`, `title`, `color`, `start`, `end`) VALUES
(1, 'Apresentação do Pitch', '#0049A6', '2023-11-09 19:00:00', '2023-11-09 00:00:00'),
(2, 'Recuperação AT2', '#0049A6', '2023-11-10 00:00:00', '2023-11-10 00:00:00'),
(3, 'Dia da Proclamação da República', '#F2782F', '2023-11-15 00:00:00', '2023-11-15 00:00:00'),
(4, 'Provas - AT2', '#F3A310', '2023-11-06 00:00:00', '2023-11-10 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_email`
--

CREATE TABLE `tb_email` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_email`
--

INSERT INTO `tb_email` (`id`, `email`) VALUES
(2, 'jdfsilva@etepd.com'),
(3, 'ajds@etepd.com'),
(4, 'abimael.vieira.2022@etepd.com'),
(5, 'ajan@etepd.com'),
(6, 'atrs@etepd.com'),
(7, 'ar@etepd.com'),
(8, 'aapj@etepd.com'),
(9, 'avbs@etepd.com'),
(10, 'ass@etepd.com'),
(11, 'araa@etepd.com'),
(12, 'adryel.ramalho23@etepd.com'),
(13, 'aos@etepd.com'),
(14, 'agcpnm@etepd.com'),
(15, 'agatha.olivera23@etepd.com'),
(16, 'albert.santos.2022@etepd.com'),
(17, 'albonarque.wally@etepd.com'),
(18, 'agf@etepd.com'),
(19, 'alcsc@etepd.com'),
(20, 'alex.silva23@etepd.com'),
(21, 'alex.correia.2022@etepd.com'),
(22, 'alexadre@etepd.com'),
(23, 'assantos@etepd.com'),
(24, 'accf@etepd.com'),
(25, 'arl@etepd.com'),
(26, 'alice.silva.2022@etepd.com'),
(27, 'alice.sales.2022@etepd.com'),
(28, 'alice.ramos23@etepd.com'),
(29, 'aline.valentim.2022@etepd.com'),
(30, 'acrm@etepd.com'),
(31, 'ajm1@etepd.com'),
(32, 'ajm@etepd.com'),
(33, 'alisson.ferreira.2022@etepd.com'),
(34, 'allan.reis.2022@etepd.com'),
(35, 'abaa@etepd.com'),
(36, 'acgl@etepd.com'),
(37, 'allyson.roberto.2022@etepd.com'),
(38, 'alysson.nascimento.2022@etepd.com'),
(39, 'amanda.silva.2022@etepd.com'),
(40, 'akrc@etepd.com'),
(41, 'accs@etepd.com'),
(42, 'afbs@etepd.com'),
(43, 'amon.pena.2022@etepd.com'),
(44, 'assp@etepd.com'),
(45, 'agcr@etepd.com'),
(46, 'abvs@etepd.com'),
(47, 'amss2@etepd.com'),
(48, 'akcsm@etepd.com'),
(49, 'ana.assis23@etepd.com'),
(50, 'aglf@etepd.com'),
(51, 'abff2@etepd.com'),
(52, 'alsof@etepd.com'),
(53, 'aegp@etepd.com'),
(54, 'abmsb@etepd.com'),
(55, 'altsp@etepd.com'),
(56, 'ana.silva.2022@etepd.com'),
(57, 'akas@etepd.com'),
(58, 'ana.castro23@etepd.com'),
(59, 'ananda.nascimento.2022@etepd.com'),
(60, 'aaas@etepd.com'),
(61, 'aaas1@etepd.com'),
(62, 'andre.santana.2022@etepd.com'),
(63, 'afsf@etepd.com'),
(64, 'andrel.lira.2022@etepd.com'),
(65, 'agcc@etepd.com'),
(66, 'aps@etepd.com'),
(67, 'apsj@etepd.com'),
(68, 'andre.nascimento@etepd.com'),
(69, 'andre.ribeiro@etepd.com'),
(70, 'aags@etepd.com'),
(71, 'abp@etepd.com'),
(72, 'avss@etepd.com'),
(73, 'anna.nascimento.2022@etepd.com'),
(74, 'adag@etepd.com'),
(75, 'alos@etepd.com'),
(76, 'arcn@etepd.com'),
(77, 'acs@etepd.com'),
(78, 'aquiles.silva.2022@etepd.com'),
(79, 'aan@etepd.com'),
(80, 'abm@etepd.com'),
(81, 'armando.gomes@etepd.com'),
(82, 'avlv@etepd.com'),
(83, 'arthur.melo.2022@etepd.com'),
(84, 'asg@etepd.com'),
(85, 'aaa@etepd.com'),
(86, 'arthur.cabra.2022@etepd.com'),
(87, 'afa@etepd.com'),
(88, 'abs@etepd.com'),
(89, 'agcabreu@etepd.com'),
(90, 'acom@etepd.com'),
(91, 'arthur.melo23@etepd.com'),
(92, 'arthur.espiritosanto23@etepd.com'),
(93, 'ansls@etepd.com'),
(94, 'adms@etepd.com'),
(95, 'barbara.silva.2022@etepd.com'),
(96, 'bao@etepd.com'),
(97, 'bclco@etepd.com'),
(98, 'bncm@etepd.com'),
(99, 'beto@etepd.com'),
(100, 'bas2@etepd.com'),
(101, 'blv@etepd.com'),
(102, 'bpds@etepd.com'),
(103, 'bpsilva@etepd.com'),
(104, 'burcg@etepd.com'),
(105, 'bsa2@etepd.com'),
(106, 'brenda.medeiros23@etepd.com'),
(107, 'brenda.santos.2022@etepd.com'),
(108, 'bps@etepd.com'),
(109, 'bcs@etepd.com'),
(110, 'bgcp@etepd.com'),
(111, 'bsm@etepd.com'),
(112, 'breno.costa2023@etepd.com'),
(113, 'breno.costa23@etepd.com'),
(114, 'bmjc@etepd.com'),
(115, 'bruna.candeias.2022@etepd.com'),
(116, 'belac@etepd.com'),
(117, 'bmga@etepd.com'),
(118, 'bhss@etepd.com'),
(119, 'baso@etepd.com'),
(120, 'bas@etepd.com'),
(121, 'bbon@etepd.com'),
(122, 'bms@etepd.com'),
(123, 'cehlf@etepd.com'),
(124, 'cvs@etepd.com'),
(125, 'cbss@etepd.com'),
(126, 'ccps@etepd.com'),
(127, 'caio.tenorio23@etepd.com'),
(128, 'cvff@etepd.com'),
(129, 'clc@etepd.com'),
(130, 'camila.gusmao.2022@etepd.com'),
(131, 'cdg@etepd.com'),
(132, 'cno@etepd.com'),
(133, 'cen@etepd.com'),
(134, 'cfcp@etepd.com'),
(135, 'carlos.santana.2022@etepd.com'),
(136, 'cgmsp@etepd.com'),
(137, 'carlos.silva23@etepd.com'),
(138, 'carlos.silva2023@etepd.com'),
(139, 'carlos.braga23@etepd.com'),
(140, 'csv@etepd.com'),
(141, 'caua.aguiar.2022@etepd.com'),
(142, 'chsa@etepd.com'),
(143, 'caua.sena23@etepd.com'),
(144, 'chsc@etepd.com'),
(145, 'caua.oliveira23@etepd.com'),
(146, 'cncf@etepd.com'),
(147, 'chos@etepd.com'),
(148, 'christopher.santana.2022@etepd.com'),
(149, 'cos@etepd.com'),
(150, 'coms@etepd.com'),
(151, 'cclc@etepd.com'),
(152, 'crsc@etepd.com'),
(153, 'clarice.lima.2022@etepd.com'),
(154, 'cts1@etepd.com'),
(155, 'cts@etepd.com'),
(156, 'crbfn@etepd.com'),
(157, 'cfsf@etepd.com'),
(158, 'cleython.santos23@etepd.com'),
(159, 'crs@etepd.com'),
(160, 'crs1@etepd.com'),
(161, 'car@etepd.com'),
(162, 'cvjmg@etepd.com'),
(163, 'cdo@etepd.com'),
(164, 'ccs@etepd.com'),
(165, 'cmcg@etepd.com'),
(166, 'drws@etepd.com'),
(167, 'dbpm@etepd.com'),
(168, 'dfs@etepd.com'),
(169, 'dabm@etepd.com'),
(170, 'daniel.lima23@etepd.com'),
(171, 'daniel.holanda23@etepd.com'),
(172, 'daal@etepd.com'),
(173, 'dpl@etepd.com'),
(174, 'dags@etepd.com'),
(175, 'dbca@etepd.com'),
(176, 'dlfss@etepd.com'),
(177, 'dfn@etepd.com'),
(178, 'davi.gomes23@etepd.com'),
(179, 'dmm@etepd.com'),
(180, 'davi.miranda23@etepd.com'),
(181, 'dmbh@etepd.com'),
(182, 'dabf@etepd.com'),
(183, 'dcs@etepd.com'),
(184, 'dasr@etepd.com'),
(185, 'david.rodrigues23@etepd.com'),
(186, 'dwsa@etepd.com'),
(187, 'dsps@etepd.com'),
(188, 'dvgs@etepd.com'),
(189, 'dlpm@etepd.com'),
(190, 'dabr@etepd.com'),
(191, 'das@etepd.com'),
(192, 'dsf1@etepd.com'),
(193, 'denilson.silva23@etepd.com'),
(194, 'dwso@etepd.com'),
(195, 'dlos@etepd.com'),
(196, 'drj@etepd.com'),
(197, 'dco@etepd.com'),
(198, 'dtsf@etepd.com'),
(199, 'dval@etepd.com'),
(200, 'dls@etepd.com'),
(201, 'dnn@etepd.com'),
(202, 'dimas.carneiro.2022@etepd.com'),
(203, 'diogo.andrade.2022@etepd.com'),
(204, 'dfbj@etepd.com'),
(205, 'dhac@etepd.com'),
(206, 'dno@etepd.com'),
(207, 'eydm@etepd.com'),
(208, 'edir.oliveira23@etepd.com'),
(209, 'edson.moura23@etepd.com'),
(210, 'elvmm@etepd.com'),
(211, 'epsl@etepd.com'),
(212, 'efs@etepd.com'),
(213, 'ecva@etepd.com'),
(214, 'egrinaldo.silva23@etepd.com'),
(215, 'ecss@etepd.com'),
(216, 'eliasafe.abad.2022@etepd.com'),
(217, 'ess2@etepd.com'),
(218, 'eliel.peixoto23@etepd.com'),
(219, 'eval@etepd.com'),
(220, 'ekf1@etepd.com'),
(221, 'ekf@etepd.com'),
(222, 'esa@etepd.com'),
(223, 'ebm@etepd.com'),
(224, 'ebc@etepd.com'),
(225, 'ersf@etepd.com'),
(226, 'elzo.souza23@etepd.com'),
(227, 'ecs@etepd.com'),
(228, 'esscs@etepd.com'),
(229, 'emvsa@etepd.com'),
(230, 'ess@etepd.com'),
(231, 'emerson.lima23@etepd.com'),
(232, 'emilly.ramos23@etepd.com'),
(233, 'em@etepd.com'),
(234, 'eats@etepd.com'),
(235, 'erick.souza23@etepd.com'),
(236, 'eflm@etepd.com'),
(237, 'erick.nazario23@etepd.com'),
(238, 'erick.pessoa23@etepd.com'),
(239, 'erick.cavalcanti23@etepd.com'),
(240, 'esdras.vieira.2022@etepd.com'),
(241, 'everthon.mota.2022@etepd.com'),
(242, 'eos@etepd.com'),
(243, 'esn@etepd.com'),
(244, 'ejsf@etepd.com'),
(245, 'efcgs@etepd.com'),
(246, 'eps@etepd.com'),
(247, 'fass@etepd.com'),
(248, 'fabrizio@etepd.com'),
(249, 'fal@etepd.com'),
(250, 'fats@etepd.com'),
(251, 'fma@etepd.com'),
(252, 'fgo@etepd.com'),
(253, 'fjgvs@etepd.com'),
(254, 'fcsc@etepd.com'),
(255, 'fernanda.pereira23@etepd.com'),
(256, 'fsg@etepd.com'),
(257, 'feds@etepd.com'),
(258, 'fflf@etepd.com'),
(259, 'fjaf@etepd.com'),
(260, 'flavio.silva.2022@etepd.com'),
(261, 'fels@etepd.com'),
(262, 'fsn@etepd.com'),
(263, 'fas@etepd.com'),
(264, 'fjfarias@etepd.com'),
(265, 'gpf@etepd.com'),
(266, 'gmms@etepd.com'),
(267, 'gnbo@etepd.com'),
(268, 'gsb@etepd.com'),
(269, 'ggws@etepd.com'),
(270, 'gsg@etepd.com'),
(271, 'gpg@etepd.com'),
(272, 'glsr@etepd.com'),
(273, 'gabriel.anjos.2022@etepd.com'),
(274, 'ghs@etepd.com'),
(275, 'gabriel.ribeiro.2022@etepd.com'),
(276, 'gmmt@etepd.com'),
(277, 'gabriel.silva.2022@etepd.com'),
(278, 'gaa@etepd.com'),
(279, 'gvsa@etepd.com'),
(280, 'gabriel.pedrosa23@etepd.com'),
(281, 'gsr@etepd.com'),
(282, 'ggs@etepd.com'),
(283, 'grvf@etepd.com'),
(284, 'gabriel.garabedian23@etepd.com'),
(285, 'gabriel.cavalcanti23@etepd.com'),
(286, 'gdg@etepd.com'),
(287, 'gabriel.vedova23@etepd.com'),
(288, 'grssc@etepd.com'),
(289, 'gmpl@etepd.com'),
(290, 'gmlg@etepd.com'),
(291, 'gabriela.dacosta23@etepd.com'),
(292, 'gpn@etepd.com'),
(293, 'gabriely.neves.2022@etepd.com'),
(294, 'gfss@etepd.com'),
(295, 'geibson.silva.2022@etepd.com'),
(296, 'gfs@etepd.com'),
(297, 'gmfs@etepd.com'),
(298, 'gjrn@etepd.com'),
(299, 'gfqj@etepd.com'),
(300, 'geovanna.silva23@etepd.com'),
(301, 'gefv@etepd.com'),
(302, 'gos@etepd.com'),
(303, 'gestao@etepd.com'),
(304, 'gkbe@etepd.com'),
(305, 'gsf@etepd.com'),
(306, 'gifb@etepd.com'),
(307, 'gleybson.nascimento.2022@etepd.com'),
(308, 'gkas@etepd.com'),
(309, 'gdfj@etepd.com'),
(310, 'gcfc@etepd.com'),
(311, 'guilherme.teodorico.2022@etepd.com'),
(312, 'gctc@etepd.com'),
(313, 'gcf@etepd.com'),
(314, 'gawl@etepd.com'),
(315, 'ggll@etepd.com'),
(316, 'guilherme.ino.2022@etepd.com'),
(317, 'gps@etepd.com'),
(318, 'guilherme.barros.2022@etepd.com'),
(319, 'guilherme.oliveira.2022@etepd.com'),
(320, 'gfs2@etepd.com'),
(321, 'gts@etepd.com'),
(322, 'ggvm@etepd.com'),
(323, 'guilherme.silva23@etepd.com'),
(324, 'gfbs@etepd.com'),
(325, 'ghar@etepd.com'),
(326, 'gustavo.lima23@etepd.com'),
(327, 'gpb@etepd.com'),
(328, 'hcs@etepd.com'),
(329, 'hvss@etepd.com'),
(330, 'hens@etepd.com'),
(331, 'habs@etepd.com'),
(332, 'heloisa.leite23@etepd.com'),
(333, 'hlnl@etepd.com'),
(334, 'heverton.silva.2022@etepd.com'),
(335, 'heytor.silva.2022@etepd.com'),
(336, 'hhsq@etepd.com'),
(337, 'hvlc@etepd.com'),
(338, 'hbh@etepd.com'),
(339, 'humberto.jorge@etepd.com'),
(340, 'htl@etepd.com'),
(341, 'hjsfs@etepd.com'),
(342, 'iss@etepd.com'),
(343, 'iago.pereira23@etepd.com'),
(344, 'ivss@etepd.com'),
(345, 'iecs1@etepd.com'),
(346, 'ips@etepd.com'),
(347, 'iibs@etepd.com'),
(348, 'ids@etepd.com'),
(349, 'igco@etepd.com'),
(350, 'isg@etepd.com'),
(351, 'iecs@etepd.com'),
(352, 'institucional@etepd.com'),
(353, 'ifbatista@etepd.com'),
(354, 'inbm@etepd.com'),
(355, 'isabel.oliveira.2022@etepd.com'),
(356, 'ivp@etepd.com'),
(357, 'icsm@etepd.com'),
(358, 'itsl@etepd.com'),
(359, 'imtl@etepd.com'),
(360, 'ibs@etepd.com'),
(361, 'isaque.silva23@etepd.com'),
(362, 'imm@etepd.com'),
(363, 'ibng@etepd.com'),
(364, 'ipcs@etepd.com'),
(365, 'irf@etepd.com'),
(366, 'irm@etepd.com'),
(367, 'izabella.silva.2022@etepd.com'),
(368, 'imrl@etepd.com'),
(369, 'izabelly.carvalho.2022@etepd.com'),
(370, 'izaque.junior23@etepd.com'),
(371, 'jfmc@etepd.com'),
(372, 'jss1@etepd.com'),
(373, 'jlsd@etepd.com'),
(374, 'jbs2@etepd.com'),
(375, 'jab@etepd.com'),
(376, 'jamilly.medeiros23@etepd.com'),
(377, 'jcxl@etepd.com'),
(378, 'jsbs@etepd.com'),
(379, 'janete.costapibid@etepd.com'),
(380, 'jmf2@etepd.com'),
(381, 'jeanderson.alves.2022@etepd.com'),
(382, 'jcs@etepd.com'),
(383, 'jsm@etepd.com'),
(384, 'jss2@etepd.com'),
(385, 'jsn@etepd.com'),
(386, 'joan.junior.2022@etepd.com'),
(387, 'joana.silva.2022@etepd.com'),
(388, 'jlmsf@etepd.com'),
(389, 'jprs@etepd.com'),
(390, 'jvfg@etepd.com'),
(391, 'joao.brito.2022@etepd.com'),
(392, 'jgso@etepd.com'),
(393, 'jpaf@etepd.com'),
(394, 'jbal@etepd.com'),
(395, 'jga2@etepd.com'),
(396, 'jembs@etepd.com'),
(397, 'jmcm@etepd.com'),
(398, 'pjsr@etepd.com'),
(399, 'jvpnl@etepd.com'),
(400, 'joao.crespo23@etepd.com'),
(401, 'jss@etepd.com'),
(402, 'joel.serafim.2022@etepd.com'),
(403, 'jofc@etepd.com'),
(404, 'jjss@etepd.com'),
(405, 'javs@etepd.com'),
(406, 'jms@etepd.com'),
(407, 'jonatan.silva23@etepd.com'),
(408, 'jonatas.souza.2022@etepd.com'),
(409, 'jmf@etepd.com'),
(410, 'jonathas.vicente23@etepd.com'),
(411, 'jrms@etepd.com'),
(412, 'jvab@etepd.com'),
(413, 'jose.rosa.2022@etepd.com'),
(414, 'jgms@etepd.com'),
(415, 'jasl@etepd.com'),
(416, 'jccs@etepd.com'),
(417, 'jccfj@etepd.com'),
(418, 'jmamk@etepd.com'),
(419, 'josue.moraes23@etepd.com'),
(420, 'jas@etepd.com'),
(421, 'jpsl@etepd.com'),
(422, 'jpgam@etepd.com'),
(423, 'dayvid.silva@etepd.com'),
(424, 'jrs1@etepd.com'),
(425, 'jvas@etepd.com'),
(426, 'joyce.costa.2022@etepd.com'),
(427, 'jdfc@etepd.com'),
(428, 'jln@etepd.com'),
(429, 'jipbs@etepd.com'),
(430, 'jsl@etepd.com'),
(431, 'jp@etepd.com'),
(432, 'jvcf@etepd.com'),
(433, 'jgss@etepd.com'),
(434, 'jftpd@etepd.com'),
(435, 'jpfm@etepd.com'),
(436, 'joao.pessoa23@etepd.com'),
(437, 'jvs@etepd.com'),
(438, 'joao.regis23@etepd.com'),
(439, 'joaopedro.silva23@etepd.com'),
(440, 'jpmb@etepd.com'),
(441, 'jpln@etepd.com'),
(442, 'joao.lima23@etepd.com'),
(443, 'jcjs@etepd.com'),
(444, 'jvmfa@etepd.com'),
(445, 'jpsar@etepd.com'),
(446, 'joaohenrique.silva23@etepd.com'),
(447, 'joaolucas.silva23@etepd.com'),
(448, 'jata@etepd.com'),
(449, 'julia.curcio.2022@etepd.com'),
(450, 'julia.bernardo.2022@etepd.com'),
(451, 'julia.lima23@etepd.com'),
(452, 'julia.andrade23@etepd.com'),
(453, 'jbs@etepd.com'),
(454, 'jjbd@etepd.com'),
(455, 'jcss@etepd.com'),
(456, 'julio.figueiredo23@etepd.com'),
(457, 'jullian.araujo@etepd.com'),
(458, 'julya.santos23@etepd.com'),
(459, 'julyana.silva23@etepd.com'),
(460, 'junior.rengel.2022@etepd.com'),
(461, 'juventude.code@etepd.com'),
(462, 'jvas1@etepd.com'),
(463, 'jctm@etepd.com'),
(464, 'julia.rocha23@etepd.com'),
(465, 'kfms@etepd.com'),
(466, 'kmbss@etepd.com'),
(467, 'kpm@etepd.com'),
(468, 'kaio.ferreira23@etepd.com'),
(469, 'kaio.silva23@etepd.com'),
(470, 'kaio.dosanjos23@etepd.com'),
(471, 'kss@etepd.com'),
(472, 'krsf@etepd.com'),
(473, 'kfv@etepd.com'),
(474, 'kkfs@etepd.com'),
(475, 'krs@etepd.com'),
(476, 'kaua.silva.2022@etepd.com'),
(477, 'kgfs@etepd.com'),
(478, 'krfn@etepd.com'),
(479, 'kauane.silva.2022@etepd.com'),
(480, 'kcsm@etepd.com'),
(481, 'kawan.silva23@etepd.com'),
(482, 'kawan.rafaelpibid@etepd.com'),
(483, 'kayky.silva23@etepd.com'),
(484, 'kayo.melo@etepd.com'),
(485, 'kpa@etepd.com'),
(486, 'klf@etepd.com'),
(487, 'kfa@etepd.com'),
(488, 'kars@etepd.com'),
(489, 'kasf@etepd.com'),
(490, 'ketillyn.oliveira.2022@etepd.com'),
(491, 'kas@etepd.com'),
(492, 'kfsn@etepd.com'),
(493, 'kleiton.silva23@etepd.com'),
(494, 'kess@etepd.com'),
(495, 'lna@etepd.com'),
(496, 'lfcmn@etepd.com'),
(497, 'lamoni.procidio.2022@etepd.com'),
(498, 'lbas@etepd.com'),
(499, 'lara.mota23@etepd.com'),
(500, 'larissa.gois23@etepd.com'),
(501, 'lcs@etepd.com'),
(502, 'lgls@etepd.com'),
(503, 'lncs@etepd.com'),
(504, 'ina@etepd.com'),
(505, 'lbla@etepd.com'),
(506, 'leandro.castro.2022@etepd.com'),
(507, 'ldl@etepd.com'),
(508, 'leandro.tome.2022@etepd.com'),
(509, 'lhlf@etepd.com'),
(510, 'leandro.farias23@etepd.com'),
(511, 'lss@etepd.com'),
(512, 'labl@etepd.com'),
(513, 'leticia.trindadepibid@etepd.com'),
(514, 'lof@etepd.com'),
(515, 'lbpo@etepd.com'),
(516, 'leticia.minucelli23@etepd.com'),
(517, 'lmb@etepd.com'),
(518, 'levi.lima.2022@etepd.com'),
(519, 'lrpl@etepd.com'),
(520, 'lhss@etepd.com'),
(521, 'lilian.santana.2022@etepd.com'),
(522, 'lggs2@etepd.com'),
(523, 'lmar@etepd.com'),
(524, 'lstfp@etepd.com'),
(525, 'lorena.muniz23@etepd.com'),
(526, 'lis@etepd.com'),
(527, 'lcmc@etepd.com'),
(528, 'lvrb@etepd.com'),
(529, 'lmcgm@etepd.com'),
(530, 'lvfs@etepd.com'),
(531, 'lgms@etepd.com'),
(532, 'lsc@etepd.com'),
(533, 'lucas.andrade.2022@etepd.com'),
(534, 'llps@etepd.com'),
(535, 'lucas.melo.2022@etepd.com'),
(536, 'lrb@etepd.com'),
(537, 'lmv@etepd.com'),
(538, 'lucas.souza.2022@etepd.com'),
(539, 'lucas.bernardino.2022@etepd.com'),
(540, 'lucas.tavares.2022@etepd.com'),
(541, 'lfbm@etepd.com'),
(542, 'lgos@etepd.com'),
(543, 'lfll@etepd.com'),
(544, 'lucas.silva.2022@etepd.com'),
(545, 'lmo@etepd.com'),
(546, 'lucas.gueiros23@etepd.com'),
(547, 'luccas.paula23@etepd.com'),
(548, 'lar@etepd.com'),
(549, 'lfxpaulino@etepd.com'),
(550, 'luciano.junior23@etepd.com'),
(551, 'lffs@etepd.com'),
(552, 'ldss@etepd.com'),
(553, 'luis.lima.2022@etepd.com'),
(554, 'lkrds@etepd.com'),
(555, 'luis.oliveira.2022@etepd.com'),
(556, 'lhsl@etepd.com'),
(557, 'lpao@etepd.com'),
(558, 'luisa.santos.2022@etepd.com'),
(559, 'luiz.santos.2022@etepd.com'),
(560, 'luiz.dantas.2022@etepd.com'),
(561, 'luiz.gustavo.2022@etepd.com'),
(562, 'lfas@etepd.com'),
(563, 'luiz.gabriel.2022@etepd.com'),
(564, 'lhcs@etepd.com'),
(565, 'lpns@etepd.com'),
(566, 'lfdl@etepd.com'),
(567, 'lhbs@etepd.com'),
(568, 'luise.silva23@etepd.com'),
(569, 'lbla2@etepd.com'),
(570, 'mso@etepd.com'),
(571, 'mgg@etepd.com'),
(572, 'mfcs@etepd.com'),
(573, 'msds@etepd.com'),
(574, 'magf@etepd.com'),
(575, 'mass@etepd.com'),
(576, 'mlla@etepd.com'),
(577, 'mlgs@etepd.com'),
(578, 'marcella.charamba23@etepd.com'),
(579, 'mms2@etepd.com'),
(580, 'mpbs@etepd.com'),
(581, 'mbs1@etepd.com'),
(582, 'marcos.bezerra.2022@etepd.com'),
(583, 'mvnsc@etepd.com'),
(584, 'mjn@etepd.com'),
(585, 'malr@etepd.com'),
(586, 'marcos.cabral23@etepd.com'),
(587, 'mamgs@etepd.com'),
(588, 'marcos.fraga.2022@etepd.com'),
(589, 'mvcr@etepd.com'),
(590, 'marcus.oliveira23@etepd.com'),
(591, 'mems@etepd.com'),
(592, 'mfvs@etepd.com'),
(593, 'mhbt@etepd.com'),
(594, 'maria.cabral.2022@etepd.com'),
(595, 'mlsm@etepd.com'),
(596, 'mlcl@etepd.com'),
(597, 'meln@etepd.com'),
(598, 'mefag@etepd.com'),
(599, 'mgmsb@etepd.com'),
(600, 'mjgf@etepd.com'),
(601, 'mefa@etepd.com'),
(602, 'maria.nascimento.2022@etepd.com'),
(603, 'mevp@etepd.com'),
(604, 'mgsc@etepd.com'),
(605, 'maria.melo.2022@etepd.com'),
(606, 'mlbm@etepd.com'),
(607, 'mvps@etepd.com'),
(608, 'mcaa@etepd.com'),
(609, 'mess@etepd.com'),
(610, 'mclr@etepd.com'),
(611, 'mlls@etepd.com'),
(612, 'mcss2@etepd.com'),
(613, 'maria.araujo.2022@etepd.com'),
(614, 'mlcs@etepd.com'),
(615, 'mfsm@etepd.com'),
(616, 'mgsm@etepd.com'),
(617, 'mcss@etepd.com'),
(618, 'maria.silva.2022@etepd.com'),
(619, 'mbsa@etepd.com'),
(620, 'mariaclara.placido23@etepd.com'),
(621, 'mcmc@etepd.com'),
(622, 'mariaeduarda.silva23@etepd.com'),
(623, 'mefm@etepd.com'),
(624, 'mlsnr@etepd.com'),
(625, 'mlmc@etepd.com'),
(626, 'mvpsouza@etepd.com'),
(627, 'mwsl@etepd.com'),
(628, 'maesa@etepd.com'),
(629, 'mgs@etepd.com'),
(630, 'mps@etepd.com'),
(631, 'mms3@etepd.com'),
(632, 'mariana.silva.2022@etepd.com'),
(633, 'mariana.araujo.2022@etepd.com'),
(634, 'meas@etepd.com'),
(635, 'marilia.nascimento23@etepd.com'),
(636, 'mmas@etepd.com'),
(637, 'mfs@etepd.com'),
(638, 'mbaf@etepd.com'),
(639, 'maryna.silva.2022@etepd.com'),
(640, 'mgsrego@etepd.com'),
(641, 'mgsr@etepd.com'),
(642, 'mbs@etepd.com'),
(643, 'mrsn@etepd.com'),
(644, 'maa@etepd.com'),
(645, 'mms@etepd.com'),
(646, 'mjbo@etepd.com'),
(647, 'mxs@etepd.com'),
(648, 'mateus.ferreira23@etepd.com'),
(649, 'matheus.silva.2022@etepd.com'),
(650, 'mhas@etepd.com'),
(651, 'mvvs@etepd.com'),
(652, 'mmts@etepd.com'),
(653, 'mls@etepd.com'),
(654, 'matheus.oliveira.2022@etepd.com'),
(655, 'matheus.prado.2022@etepd.com'),
(656, 'msf@etepd.com'),
(657, 'mcll@etepd.com'),
(658, 'mvs@etepd.com'),
(659, 'matheus.luiz23@etepd.com'),
(660, 'mglb@etepd.com'),
(661, 'mgsf@etepd.com'),
(662, 'mto@etepd.com'),
(663, 'mrn@etepd.com'),
(664, 'mcs@etepd.com'),
(665, 'mpln@etepd.com'),
(666, 'mgmp@etepd.com'),
(667, 'melissa.silva.2022@etepd.com'),
(668, 'micael.melo23@etepd.com'),
(669, 'mls2@etepd.com'),
(670, 'mss@etepd.com'),
(671, 'msnc@etepd.com'),
(672, 'miguel.rodrigues23@etepd.com'),
(673, 'miguel.correa23@etepd.com'),
(674, 'miguel.andrade.2022@etepd.com'),
(675, 'mlm@etepd.com'),
(676, 'mtm@etepd.com'),
(677, 'mfs1@etepd.com'),
(678, 'mmf@etepd.com'),
(679, 'monique.yazama23@etepd.com'),
(680, 'mrh@etepd.com'),
(681, 'mjsv@etepd.com'),
(682, 'mmcf@etepd.com'),
(683, 'mms1@etepd.com'),
(684, 'natalia.vieira.2022@etepd.com'),
(685, 'nmv@etepd.com'),
(686, 'nla@etepd.com'),
(687, 'nsl@etepd.com'),
(688, 'nesb@etepd.com'),
(689, 'nvsf@etepd.com'),
(690, 'nicolas.natario.2022@etepd.com'),
(691, 'nts@etepd.com'),
(692, 'nicole.martins23@etepd.com'),
(693, 'nicole.alcantara@etepd.com'),
(694, 'namo@etepd.com'),
(695, 'nnsg@etepd.com'),
(696, 'nars@etepd.com'),
(697, 'nmso@etepd.com'),
(698, 'osds@etepd.com'),
(699, 'onal@etepd.com'),
(700, 'oems@etepd.com'),
(701, 'phmo@etepd.com'),
(702, 'pablo.oliveira23@etepd.com'),
(703, 'psm@etepd.com'),
(704, 'pcc@etepd.com'),
(705, 'pgs@etepd.com'),
(706, 'pan@etepd.com'),
(707, 'pbrr@etepd.com'),
(708, 'paulo.silva.2022@etepd.com'),
(709, 'prpb@etepd.com'),
(710, 'phas@etepd.com'),
(711, 'pedro.cruz.2022@etepd.com'),
(712, 'pjpsl@etepd.com'),
(713, 'pedro.arruda.2022@etepd.com'),
(714, 'plmp@etepd.com'),
(715, 'pvlb@etepd.com'),
(716, 'phal@etepd.com'),
(717, 'phsar@etepd.com'),
(718, 'phos@etepd.com'),
(719, 'pedro.gomes.2022@etepd.com'),
(720, 'psg@etepd.com'),
(721, 'phms2@etepd.com'),
(722, 'pmsm@etepd.com'),
(723, 'phms@etepd.com'),
(724, 'pmca@etepd.com'),
(725, 'pedro.almeidasilva23@etepd.com'),
(726, 'poan@etepd.com'),
(727, 'pmab@etepd.com'),
(728, 'pfpvca@etepd.com'),
(729, 'pha@etepd.com'),
(730, 'plqcv@etepd.com'),
(731, 'pcs@etepd.com'),
(732, 'princesa.costa23@etepd.com'),
(733, 'professores@etepd.com'),
(734, 'protagonismo@etepd.com'),
(735, 'rmas@etepd.com'),
(736, 'rafael.mota.2022@etepd.com'),
(737, 'racs@etepd.com'),
(738, 'rjs1@etepd.com'),
(739, 'rcm@etepd.com'),
(740, 'rlgf@etepd.com'),
(741, 'rafael.silva23@etepd.com'),
(742, 'rmns@etepd.com'),
(743, 'rans@etepd.com'),
(744, 'rsl@etepd.com'),
(745, 'rfss@etepd.com'),
(746, 'raphael.guedes.2022@etepd.com'),
(747, 'raquel.chacon23@etepd.com'),
(748, 'raquel.lira23@etepd.com'),
(749, 'rfjpb@etepd.com'),
(750, 'rlfs@etepd.com'),
(751, 'raul.oliveira23@etepd.com'),
(752, 'rccc@etepd.com'),
(753, 'rayane.nascimentos.2022@etepd.com'),
(754, 'rsffm@etepd.com'),
(755, 'rmfs@etepd.com'),
(756, 'raos@etepd.com'),
(757, 'rclc@etepd.com'),
(758, 'beccalinhares@etepd.com'),
(759, 'rrbs@etepd.com'),
(760, 'renam.braga.2022@etepd.com'),
(761, 'renan.soares23@etepd.com'),
(762, 'rmpn@etepd.com'),
(763, 'rcs@etepd.com'),
(764, 'rfs@etepd.com'),
(765, 'representantes@etepd.com'),
(766, 'residente.pedagogico@etepd.com'),
(767, 'rsm@etepd.com'),
(768, 'rgpnm@etepd.com'),
(769, 'rsf@etepd.com'),
(770, 'rabs@etepd.com'),
(771, 'rian.ferreira.2022@etepd.com'),
(772, 'rfo@etepd.com'),
(773, 'rslof@etepd.com'),
(774, 'rlas@etepd.com'),
(775, 'rapmj@etepd.com'),
(776, 'richard.silva.2022@etepd.com'),
(777, 'rvlf@etepd.com'),
(778, 'rlss@etepd.com'),
(779, 'rgabs@etepd.com'),
(780, 'rildson.silva.2022@etepd.com'),
(781, 'rrc@etepd.com'),
(782, 'riquelme.barbosa23@etepd.com'),
(783, 'rcl@etepd.com'),
(784, 'roberta.cristiny23@etepd.com'),
(785, 'rsb@etepd.com'),
(786, 'robson.costa23@etepd.com'),
(787, 'rfoc@etepd.com'),
(788, 'rcng@etepd.com'),
(789, 'rbd@etepd.com'),
(790, 'rfl@etepd.com'),
(791, 'ronald.monteiro.2022@etepd.com'),
(792, 'rmbl@etepd.com'),
(793, 'rftm@etepd.com'),
(794, 'rhcn@etepd.com'),
(795, 'rtsa@etepd.com'),
(796, 'ryan.silva23@etepd.com'),
(797, 'sfpc@etepd.com'),
(798, 'srrs@etepd.com'),
(799, 'samara.nunes.2022@etepd.com'),
(800, 'svs@etepd.com'),
(801, 'stms@etepd.com'),
(802, 'slgb@etepd.com'),
(803, 'samuel.oliveira.2022@etepd.com'),
(804, 'scs@etepd.com'),
(805, 'sles@etepd.com'),
(806, 'sct@etepd.com'),
(807, 'smsf@etepd.com'),
(808, 'sarah.silva.2022@etepd.com'),
(809, 'ssaa@etepd.com'),
(810, 'sergio.sena2023@etepd.com'),
(811, 'swor@etepd.com'),
(812, 'scfp@etepd.com'),
(813, 'sgm@etepd.com'),
(814, 'srs@etepd.com'),
(815, 'silas.peixoto23@etepd.com'),
(816, 'srlr@etepd.com'),
(817, 'ssrlg@etepd.com'),
(818, 'scct@etepd.com'),
(819, 'sophia.ferreira23@etepd.com'),
(820, 'srar@etepd.com'),
(821, 'stefanny.silva.2022@etepd.com'),
(822, 'ssba@etepd.com'),
(823, 'sml@etepd.com'),
(824, 'sbs@etepd.com'),
(825, 'tcss@etepd.com'),
(826, 'talis.carvalho.2022@etepd.com'),
(827, 'tamara.oliveira23@etepd.com'),
(828, 'tfp@etepd.com'),
(829, 'tml@etepd.com'),
(830, 'tps@etepd.com'),
(831, 'tcspl@etepd.com'),
(832, 'teste@etepd.com'),
(833, 'test@etepd.com'),
(834, 'tbo@etepd.com'),
(835, 'tmgs@etepd.com'),
(836, 'tabk@etepd.com'),
(837, 'tfla@etepd.com'),
(838, 'tbjc@etepd.com'),
(839, 'tgsn@etepd.com'),
(840, 'tm@etepd.com'),
(841, 'thalyta.silva.2022@etepd.com'),
(842, 'tbbr@etepd.com'),
(843, 'tksl@etepd.com'),
(844, 'tro@etepd.com'),
(845, 'thiago.santos.2022@etepd.com'),
(846, 'tcr@etepd.com'),
(847, 'tta@etepd.com'),
(848, 'tab@etepd.com'),
(849, 'tvgsa@etepd.com'),
(850, 'tlmc@etepd.com'),
(851, 'tcsgb@etepd.com'),
(852, 'tmr@etepd.com'),
(853, 'thfm@etepd.com'),
(854, 'tmsa@etepd.com'),
(855, 'thomas.jeffersonpibid@etepd.com'),
(856, 'thsb@etepd.com'),
(857, 'transmissaopd@etepd.com'),
(858, 'tulio.gomes23@etepd.com'),
(859, 'tulio.figueiredo23@etepd.com'),
(860, 'ucs@etepd.com'),
(861, 'vasa@etepd.com'),
(862, 'valdir.silva23@etepd.com'),
(863, 'vpf@etepd.com'),
(864, 'vssj@etepd.com'),
(865, 'vfaj@etepd.com'),
(866, 'valtercio.barbosa.2022@etepd.com'),
(867, 'vlhs@etepd.com'),
(868, 'vlam@etepd.com'),
(869, 'vbs@etepd.com'),
(870, 'vps@etepd.com'),
(871, 'vfcv@etepd.com'),
(872, 'vgls@etepd.com'),
(873, 'vrgd@etepd.com'),
(874, 'vinicius.josepibid@etepd.com'),
(875, 'vinicius.braz.2022@etepd.com'),
(876, 'vcg@etepd.com'),
(877, 'vitor.vasconcelos23@etepd.com'),
(878, 'vitor.rocha.2022@etepd.com'),
(879, 'vfd@etepd.com'),
(880, 'vgcm@etepd.com'),
(881, 'vno@etepd.com'),
(882, 'vittor.filho2023@etepd.com'),
(883, 'vcs@etepd.com'),
(884, 'wagner.rocha23@etepd.com'),
(885, 'waml@etepd.com'),
(886, 'wmsm@etepd.com'),
(887, 'wmsm2@etepd.com'),
(888, 'wra@etepd.com'),
(889, 'wallace.azevedo.2022@etepd.com'),
(890, 'wallyson.lenilsonpibid@etepd.com'),
(891, 'wrs@etepd.com'),
(892, 'wkva@etepd.com'),
(893, 'wnv@etepd.com'),
(894, 'wfs@etepd.com'),
(895, 'wendel.freitas2023@etepd.com'),
(896, 'wescley.soares2023@etepd.com'),
(897, 'wtvs@etepd.com'),
(898, 'wnfb@etepd.com'),
(899, 'wsm@etepd.com'),
(900, 'wrss@etepd.com'),
(901, 'wildson.moreira.2022@etepd.com'),
(902, 'wmdf@etepd.com'),
(903, 'william.nascimento.2022@etepd.com'),
(904, 'william.morais23@etepd.com'),
(905, 'williams.vieira23@etepd.com'),
(906, 'wgs@etepd.com'),
(907, 'wavo@etepd.com'),
(908, 'wrs1@etepd.com'),
(909, 'wbn@etepd.com'),
(910, 'wollacy.sousa23@etepd.com'),
(911, 'yan.ferreira23@etepd.com'),
(912, 'ycsm@etepd.com'),
(913, 'yasmim.leal.2022@etepd.com'),
(914, 'yjm@etepd.com'),
(915, 'yccs@etepd.com'),
(916, 'yasmin.lima23@etepd.com'),
(917, 'edbs@etepd.com'),
(918, ''),
(919, ''),
(920, ''),
(921, ''),
(922, ''),
(923, ''),
(924, ''),
(925, ''),
(926, ''),
(927, ''),
(928, ''),
(929, ''),
(930, ''),
(931, ''),
(932, ''),
(933, ''),
(934, ''),
(935, ''),
(936, ''),
(937, ''),
(938, ''),
(939, ''),
(940, ''),
(941, ''),
(942, ''),
(943, ''),
(944, ''),
(945, ''),
(946, ''),
(947, ''),
(948, ''),
(949, ''),
(950, ''),
(951, ''),
(952, ''),
(953, ''),
(954, ''),
(955, ''),
(956, ''),
(957, ''),
(958, ''),
(959, ''),
(960, ''),
(961, ''),
(962, ''),
(963, ''),
(964, ''),
(965, ''),
(966, ''),
(967, ''),
(968, ''),
(969, ''),
(970, ''),
(971, ''),
(972, ''),
(973, ''),
(974, ''),
(975, ''),
(976, ''),
(977, ''),
(978, ''),
(979, ''),
(980, ''),
(981, ''),
(982, ''),
(983, ''),
(984, ''),
(985, ''),
(986, ''),
(987, ''),
(988, ''),
(989, ''),
(990, ''),
(991, ''),
(992, ''),
(993, ''),
(994, ''),
(995, ''),
(996, ''),
(997, ''),
(998, ''),
(999, ''),
(1000, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `modulo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `nome`, `nascimento`, `senha`, `cpf`, `modulo`) VALUES
(5, 'akcsm@etepd.com', 'ana k', '2023-11-22', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '098', 'DS1'),
(7, 'anakarina1994@gmail.com', 'ana', '2023-11-17', '$2y$10$ZPkgYv6hWLFWwtt.GdXpvOVeKmN7/ciQA1C0Ifh.SkxkVXdkP5kam', '1234', NULL),
(8, 'anakarina1994@gmail.com', 'ana k', '2023-11-22', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '123', NULL),
(9, 'akcsm@etepd.com', 'julia', '1994-12-13', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '1234', 'DS2'),
(10, 'akcsm@etepd.com', 'an', '2023-11-17', '123', '1234', 'MT1'),
(11, 'akcsm@etepd.com', 'ana k', '2023-11-23', '123', '123456', 'mt3');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `codigos`
--
ALTER TABLE `codigos`
  ADD PRIMARY KEY (`ProfessorID`);

--
-- Índices de tabela `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_email`
--
ALTER TABLE `tb_email`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `codigos`
--
ALTER TABLE `codigos`
  MODIFY `ProfessorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tb_email`
--
ALTER TABLE `tb_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
