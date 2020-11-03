-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 03 nov. 2020 à 15:28
-- Version du serveur :  5.7.32-0ubuntu0.18.04.1
-- Version de PHP : 7.3.15-3+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sev-03_mohamedfarouq_projet`
--

-- --------------------------------------------------------

--
-- Structure de la table `Contact`
--

CREATE TABLE `Contact` (
  `id` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Contact`
--

INSERT INTO `Contact` (`id`, `nom`, `prenom`, `email`, `message`) VALUES
(1, 'aada', 'qdqsd', 'qdsqdsqd@fgfg.fr', 'qdfqsdsqdqdé'),
(2, 'sqdqsd', 'dqsdsqd', 'sqdsqd@wdsfcdsf.gfr', ' sqdsqdsqdsqdsqdsqd'),
(3, 'ff', 'fff', 'ffff@fff.fff', ' ffffffffffffffffffffff'),
(4, 'farouq', 'Mohamed', 'farouq.mohamed@outlook.fr', ' ......'),
(5, 'farouq', 'normal', 'n@h.fr', ' bonjour,'),
(6, 'are', 'sdfsdfdsf', 'aa@fr.fr', ' qsdqdsqdsqdsqd'),
(7, 'Formateur 3WA', 'Laurent', 'test@3wa.fr', 'testing some awsomeness  '),
(8, 'farouq', 'Mohamed', 'n@h.fr', ' gggg'),
(9, 'farouq', 'Mohamed', 'farouq.mohamed@outlook.fr', 'bonjour'),
(10, 'farouq', 'Mohamed', 'n@h.fr', ' h'),
(11, 'mohamed', 'Mohamed', 'n@h.fr', ' .'),
(12, 'dsfsf', 'ffsdfsf', 'aa@fr.fr', ' qdsqsdqdqdqd'),
(13, 'a', 'a', 'a@fr.fr', 'a '),
(14, 'areb', '123', 'areb@fr.fr', 'areb '),
(15, 'areaer', 'areaer', 'areaer@areaer.areaer', ' areaer'),
(16, 'asou', 'asou', 'asou@fr.fr', 'asou '),
(17, 'sdfsd', 'qsd', '1zsd@fr.Fr', ' qsdsqdsqd'),
(18, 'MOHAMED FAROUQ', 'MOHAMED FAROUQ', 'farouq.mohamed@outlook.fr', ' hh');

-- --------------------------------------------------------

--
-- Structure de la table `Devis`
--

CREATE TABLE `Devis` (
  `id` int(20) NOT NULL,
  `civilite` varchar(20) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `tel` int(15) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `siteType` varchar(15) NOT NULL,
  `nbrPage` varchar(10) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Devis`
--

INSERT INTO `Devis` (`id`, `civilite`, `nom`, `tel`, `mail`, `siteType`, `nbrPage`, `message`) VALUES
(1, '', 'mohamed', 645789878, 'med@outlook.fr', 'blog', '3', 'Demandez votre devis gratuitement en expliquant votre projet\r\nDigitalWebMo, c’est les avantages d’une agence de communication aux tarifs d’un indépendant'),
(2, '', 'mohamed', 714151618, 'ret@hotmail.fr', 'ecommerce', '1', '               ghfghfghfghfhfghfhfghgfhfghgg             '),
(3, '', 'dfdfff', 54545454, 'dffdf@dfdf.fr', 'ecommerce', '7', 'azazzzzzaz         '),
(4, '', 'dgdgfdf', 454545, 'sqdfdf@sdfsdf.gt', 'ecommerce', '5', '     sfsdfsdfsdf                       '),
(5, '', 'gfdsg', 42542, 'sfsdf@fgdg.fr', 'blog', '3', 'sdfsdfsdfsdfdsf                       '),
(6, '', 'MOHAMED FAROUQ', 758711441, 'farouq.mohamed@outlook.fr', 'blog', '8', 'mess'),
(7, '', 'Mohamed', 98980909, 'farouq.mohamed@outlook.fr', 'siteweb', '1', 'HOO'),
(8, '', 'MOHAMED FAROUQ', 758711441, 'farouq.mohamed@outlook.fr', 'siteweb', '7', 'BONJOUR'),
(9, 'monsieur', 'normal', 625859562, 'nor@css.fr', 'siteweb', '5', '   ffff                         '),
(10, 'monsieur', 'ad', 545454, 'azdd@grg.gr', 'blog', '4', 'dsqfdsfdsfdsfsf'),
(11, 'monsieur', 'qsdqsds', 4545456, 'dfgdsgf@ddfg.fr', 'blog', 'null', '          qsdsqdsqdsqdsqd                  '),
(12, 'monsieur', 'farouq', 625859562, 'nor@css.fr', 'siteweb', '6', 'Bonjour,                        '),
(13, 'monsieur', 'abc', 131231, 'aa@fr.fr', 'blog', 'null', '                       qdsqsdqdqsdsqd     '),
(14, 'monsieur', 'abc', 131231, 'aa@fr.fr', 'blog', 'null', '                       qdsqsdqdqsdsqd     '),
(15, 'monsieur', 'abc', 131231, 'aa@fr.fr', 'blog', 'null', '                       qdsqsdqdqsdsqd     '),
(16, 'monsieur', 'are', 441, 'aa@fr.fr', 'blog', 'null', '             sqdqdsd               '),
(17, 'monsieur', 'are', 441, 'aa@fr.fr', 'blog', 'null', '             sqdqdsd               '),
(18, 'monsieur', 'laurent', 780707740, 'test@3wa.fr', 'ecommerce', '5', '              Le meileur projet au monde              '),
(19, 'monsieur', 'zebr', 23, 'aa@fr.fr', 'blog', 'null', '      sqdsqdsqd                      '),
(20, 'monsieur', 'aa', 12143, 'areb@a.fr', 'blog', '3', '               asasdxcxccxcccxc             '),
(21, 'monsieur', 'areb', 123, 'areb@a.fr', 'blog', '7', 'areb                    '),
(22, 'monsieur', 'areaer', 123, 'areaer@areaer.fr', 'blog', '10', '                     areaer       '),
(23, 'monsieur', 'qsdqsd', 124, 'sqdqsd@qds.Fr', 'blog', 'null', '                            qdqdqdqds'),
(24, 'monsieur', 'MOHAMED FAROUQ', 622870954, 'farouq.mohamed@outlook.fr', 'blog', '6', 'iooo');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Contact`
--
ALTER TABLE `Contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Devis`
--
ALTER TABLE `Devis`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Contact`
--
ALTER TABLE `Contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `Devis`
--
ALTER TABLE `Devis`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
