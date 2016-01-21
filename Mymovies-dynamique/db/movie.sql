-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 21 Janvier 2016 à 12:33
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `commercial`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `NO_ARTICLE` char(6) NOT NULL,
  `LIB_ARTICLE` char(30) NOT NULL,
  `QTE_DISPO` int(11) NOT NULL,
  `VILLE_ART` char(15) NOT NULL,
  `PRIX_ART` decimal(8,2) NOT NULL,
  `INTERROMPU` char(1) NOT NULL,
  PRIMARY KEY (`NO_ARTICLE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`NO_ARTICLE`, `LIB_ARTICLE`, `QTE_DISPO`, `VILLE_ART`, `PRIX_ART`, `INTERROMPU`) VALUES
('001001', 'Bureau Electronique', 2, 'Nantes', '674.03', 'F'),
('001002', 'Ensemble bureau (Secretaire)', 2, 'Paris', '868.43', 'F'),
('001005', 'Ensemble bureau (Directeur)', 1, 'Nantes', '1880.53', 'F'),
('001007', 'Table en bois - pied central', 29, 'Lyon', '753.47', 'F'),
('001008', 'Meuble micro-ordinateur', 22, 'Paris', '629.62', 'F'),
('001009', 'Chaise - dossier reglable', 124, 'Nantes', '87.66', 'T'),
('001013', 'Chaise (Moderne) pneumatique', 115, 'Nantes', '80.60', 'F'),
('001015', 'Porte coulissante ebene', 15, 'Lyon', '1215.00', 'T'),
('001019', 'Table de reunion', 12, 'Lyon', '750.00', 'F'),
('001021', 'Ensemble bureau (President)', 3, 'Lyon', '1965.53', 'F'),
('001022', 'Table en orme', 5, 'Lyon', '604.65', 'F'),
('001024', 'Table en aluminium', 140, 'Nantes', '295.53', 'F'),
('001025', 'Bureau (Directeur) - 2 metres', 63, 'Paris', '395.00', 'F'),
('001027', 'Bureau (Directeur) - 3 metres', 20, 'Nantes', '225.00', 'F'),
('001029', 'Armoire - 2 tiroirs', 200, 'Lyon', '130.65', 'F'),
('001031', 'Chaise (Directeur) - pivotante', 79, 'Paris', '84.00', 'F'),
('001032', 'Armoire - 4 tiroirs', 15, 'Nantes', '242.83', 'F'),
('001033', 'Chaise - accoudoirs standard', 20, 'Nantes', '375.00', 'T'),
('001038', 'Lampe - bras articule', 169, 'Paris', '47.13', 'F');

-- --------------------------------------------------------

--
-- Structure de la table `clientel`
--

CREATE TABLE IF NOT EXISTS `clientel` (
  `NO_CLIENT` char(6) NOT NULL,
  `SOCIETE` char(25) NOT NULL,
  `NOM_CL` char(15) NOT NULL,
  `PRENOM_CL` char(10) NOT NULL,
  `ADRESSE_CL` char(20) NOT NULL,
  `VILLE_CL` char(15) NOT NULL,
  `CODE_POST_CL` char(5) NOT NULL,
  PRIMARY KEY (`NO_CLIENT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clientel`
--

INSERT INTO `clientel` (`NO_CLIENT`, `SOCIETE`, `NOM_CL`, `PRENOM_CL`, `ADRESSE_CL`, `VILLE_CL`, `CODE_POST_CL`) VALUES
('000001', 'Design Leonard', 'Adami', 'Lucien', '24, rue Saint Lo', 'Vernon', '27200'),
('000003', 'Meubles Langlais', 'Ladelis', 'Laurent', '42, rue Josephine', 'Angers', '49000'),
('000009', 'Aux Meubles sur Mesures', 'Ralain', 'Gerard', 'Place Carnaval', 'Mornant', '69440'),
('000011', 'Mobilier Americain', 'Bojolait', 'Christine', '28, rue Chopin', 'Nimes', '13100'),
('000016', 'Fournitures et Bureaux', 'Guilleaume', 'Jerome', '20, rue Borville', 'Elbeuf', '76500'),
('000017', 'Le Mobilier Noir', 'Camelot', 'Jean', '46, rue Maillot', 'Chevrieres', '60710'),
('000018', 'Systemes Interieurs', 'Gonzalez', 'Bruno', '17, rue Curie', 'Loiret', '45000'),
('000019', 'Au Grand Design', 'Ancelot', 'Jerome', '7, place Hitchcock', 'Bandol', '83150'),
('000022', 'Mobilier de Paris', 'Marbella', 'Max', '17, place Rabelais', 'Amiens', '80000'),
('000024', 'Bois et Metal', 'Farre', 'Philippe', '59, rue Sambat', 'Gisors', '27140'),
('000025', 'Le Mobilier Moderne', 'Vasille', 'Isabelle', '47, rue des Pres', 'Chantilly', '60500'),
('000027', 'Agencement de Bureaux', 'Ravard', 'Jacques', '65, boulevard Jasmin', 'Ermenonville', '60950'),
('000028', 'Conception et Bois', 'Pavent', 'Raymond', '12, place Fontaine', 'Cabourg', '14390'),
('000031', 'Le Mobilier de la vallee', 'Rasazin', 'Jacky', '2, route de l arbre', 'Blain', '44130'),
('000032', 'Design Contemporain', 'Jeaumont', 'Dominique', '6, rue Emile Zola', 'Evron', '53600'),
('000033', 'La Maison Interieure', 'Scheinder', 'Marc', '31, rue Saturnin', 'Fos-sur-mer', '13270'),
('000034', 'Le Bureau Japonais', 'Quelavoine', 'Charles', '36, avenue Frank', 'Blonville', '14910'),
('000035', 'Le Mobilier de la Vallee', 'Hellamy', 'Andre', '40, rue Federation', 'Orleans', '45000'),
('000036', 'Nouveaux Horizons', 'Zelinger', 'Jacques', '4, rue Georges Sand', 'Nantes', '44000'),
('000040', 'Espaces de Vie', 'Penoist', 'Alain', '5, rue Rolland', 'Jumieges', '76118'),
('000042', 'Meubles Cohen', 'Pujo', 'Bernard', '52, rue Pannette', 'Evreux', '27000'),
('000043', 'Les meubles d Antan', 'Berenger', 'Michel', '20, rue Alouette', 'Arles', '30100'),
('000045', 'Les Classiques', 'Ternard', 'Pierre', '40, rue Ferrari', 'Guingamp', '22200'),
('000046', 'Interieurs de bureaux', 'Lerthaux', 'Alain', '12, avenue d Alleray', 'Bourges', '18000');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE IF NOT EXISTS `commandes` (
  `NO_COMMAND` char(6) NOT NULL,
  `NO_VENDEUR` char(6) NOT NULL,
  `NO_CLIENT` char(6) NOT NULL,
  `DATE_CDE` date NOT NULL,
  `FACTURE` char(1) NOT NULL,
  PRIMARY KEY (`NO_COMMAND`),
  KEY `fk1_commandes` (`NO_VENDEUR`),
  KEY `fk2_commandes` (`NO_CLIENT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commandes`
--

INSERT INTO `commandes` (`NO_COMMAND`, `NO_VENDEUR`, `NO_CLIENT`, `DATE_CDE`, `FACTURE`) VALUES
('020002', '000008', '000025', '2015-06-19', 'F'),
('020003', '000006', '000043', '2015-06-20', 'F'),
('020004', '000001', '000034', '2015-05-21', 'F'),
('020005', '000001', '000016', '2015-08-21', 'F'),
('020006', '000012', '000036', '2015-10-23', 'F'),
('020007', '000013', '000019', '2015-09-23', 'F'),
('020008', '000003', '000011', '2015-09-21', 'F'),
('020009', '000012', '000018', '2015-11-20', 'F'),
('020010', '000001', '000031', '2015-07-18', 'F'),
('020011', '000020', '000040', '2015-08-29', 'F'),
('020012', '000008', '000027', '2015-09-24', 'F'),
('020013', '000012', '000036', '2015-06-26', 'F'),
('020014', '000001', '000001', '2015-06-23', 'F'),
('020015', '000004', '000019', '2015-07-24', 'F'),
('020016', '000013', '000011', '2015-09-18', 'F'),
('020017', '000006', '000032', '2015-09-25', 'F'),
('020018', '000013', '000036', '2015-09-28', 'F'),
('020019', '000013', '000016', '2015-09-29', 'F'),
('020020', '000013', '000031', '2015-09-18', 'F'),
('020021', '000008', '000046', '2015-08-14', 'F'),
('020022', '000004', '000027', '2015-09-17', 'F'),
('020023', '000003', '000040', '2015-10-22', 'F'),
('020024', '000012', '000045', '2015-10-01', 'F'),
('020025', '000003', '000019', '2015-10-05', 'F'),
('020026', '000004', '000017', '2015-10-07', 'F');

-- --------------------------------------------------------

--
-- Structure de la table `compose`
--

CREATE TABLE IF NOT EXISTS `compose` (
  `NO_COMPOSE` char(6) NOT NULL,
  `NO_COMPOSANT` char(6) NOT NULL,
  `QTE_COMPOSANT` int(11) DEFAULT NULL,
  PRIMARY KEY (`NO_COMPOSE`,`NO_COMPOSANT`),
  KEY `fk2_compose` (`NO_COMPOSANT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `compose`
--

INSERT INTO `compose` (`NO_COMPOSE`, `NO_COMPOSANT`, `QTE_COMPOSANT`) VALUES
('001001', '001007', 1),
('001001', '001013', 1),
('001001', '001032', 1),
('001001', '001038', 1),
('001002', '001013', 1),
('001002', '001025', 1),
('001002', '001032', 1),
('001005', '001024', 1),
('001005', '001027', 1),
('001005', '001031', 1),
('001021', '001015', 1),
('001021', '001024', 1),
('001021', '001025', 1),
('001021', '001031', 1);

-- --------------------------------------------------------

--
-- Structure de la table `detail_cde`
--

CREATE TABLE IF NOT EXISTS `detail_cde` (
  `NO_COMMAND` char(6) NOT NULL,
  `NO_ARTICLE` char(6) NOT NULL,
  `QTE_CDEE` int(11) DEFAULT NULL,
  `LIVREE` char(1) DEFAULT NULL,
  PRIMARY KEY (`NO_COMMAND`,`NO_ARTICLE`),
  KEY `fk2_detail_cde` (`NO_ARTICLE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `detail_cde`
--

INSERT INTO `detail_cde` (`NO_COMMAND`, `NO_ARTICLE`, `QTE_CDEE`, `LIVREE`) VALUES
('020002', '001013', 3, 'F'),
('020002', '001025', 3, 'F'),
('020002', '001032', 2, 'F'),
('020003', '001005', 2, 'F'),
('020003', '001021', 4, 'F'),
('020004', '001013', 5, 'F'),
('020004', '001027', 5, 'F'),
('020004', '001038', 5, 'F'),
('020005', '001019', 2, 'F'),
('020006', '001007', 25, 'F'),
('020006', '001031', 25, 'F'),
('020007', '001022', 3, 'F'),
('020007', '001033', 3, 'F'),
('020008', '001009', 3, 'F'),
('020009', '001029', 31, 'F'),
('020010', '001005', 5, 'F'),
('020010', '001021', 2, 'F'),
('020011', '001025', 4, 'F'),
('020011', '001029', 7, 'F'),
('020011', '001031', 7, 'F'),
('020012', '001015', 5, 'F'),
('020013', '001019', 1, 'F'),
('020013', '001022', 2, 'F'),
('020014', '001021', 2, 'F'),
('020015', '001025', 15, 'F'),
('020016', '001025', 2, 'F'),
('020016', '001031', 4, 'F'),
('020017', '001029', 6, 'F'),
('020018', '001038', 4, 'F'),
('020019', '001027', 3, 'F'),
('020020', '001024', 7, 'F'),
('020020', '001032', 4, 'F'),
('020021', '001013', 8, 'F'),
('020021', '001024', 6, 'F'),
('020021', '001025', 8, 'F'),
('020022', '001015', 1, 'F'),
('020023', '001024', 12, 'F'),
('020023', '001032', 2, 'F'),
('020024', '001009', 3, 'F'),
('020024', '001027', 3, 'F'),
('020025', '001019', 1, 'F'),
('020026', '001007', 9, 'F'),
('020026', '001013', 9, 'F'),
('020026', '001015', 3, 'F'),
('020026', '001024', 5, 'F'),
('020026', '001025', 3, 'F');

-- --------------------------------------------------------

--
-- Structure de la table `vendeur`
--

CREATE TABLE IF NOT EXISTS `vendeur` (
  `NO_VENDEUR` char(6) NOT NULL,
  `NO_VEND_CHEF_EQ` char(6) NOT NULL,
  `NOM_VEND` char(15) NOT NULL,
  `PRENOM_VEND` char(10) NOT NULL,
  `DATE_EMBAU` date NOT NULL,
  `VILLE_VEND` char(15) NOT NULL,
  `SALAIRE_VEND` decimal(8,2) NOT NULL,
  `COMMISSION` decimal(6,2) NOT NULL,
  PRIMARY KEY (`NO_VENDEUR`),
  KEY `fk1_vendeur` (`NO_VEND_CHEF_EQ`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `vendeur`
--

INSERT INTO `vendeur` (`NO_VENDEUR`, `NO_VEND_CHEF_EQ`, `NOM_VEND`, `PRENOM_VEND`, `DATE_EMBAU`, `VILLE_VEND`, `SALAIRE_VEND`, `COMMISSION`) VALUES
('000001', '000001', 'Zimmerman', 'Alphonse', '2000-12-02', 'Paris', '3500.00', '50.00'),
('000003', '000001', 'Vidoni', 'Lise', '2000-04-06', 'Lyon', '2280.00', '50.00'),
('000004', '000001', 'Coudray', 'Bruno', '2000-03-05', 'Paris', '2500.00', '50.00'),
('000006', '000001', 'Thomas', 'Pierre', '2001-05-23', 'Lyon', '2856.00', '50.00'),
('000008', '000001', 'Mauleron', 'Arianne', '2003-08-27', 'Paris', '1300.00', '50.00'),
('000011', '000001', 'Gorbach', 'Michel', '2000-05-29', 'Nantes', '1960.00', '70.00'),
('000012', '000004', 'Charles', 'Edouard', '2002-06-23', 'Nantes', '1600.00', '50.00'),
('000013', '000004', 'Marin', 'Jean', '2000-07-18', 'Paris', '1500.00', '11.00'),
('000015', '000004', 'Rodinck', 'Auguste', '2000-09-15', 'Lyon', '1700.00', '80.00'),
('000016', '000004', 'Long', 'Gerard', '2000-07-19', 'Lyon', '1700.00', '80.00'),
('000019', '000004', 'Rolfes', 'Patrick', '2001-02-25', 'Paris', '1600.00', '60.00'),
('000020', '000001', 'Sandrin', 'Alex', '2000-04-29', 'Nantes', '1730.00', '50.00');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `fk1_commandes` FOREIGN KEY (`NO_VENDEUR`) REFERENCES `vendeur` (`NO_VENDEUR`),
  ADD CONSTRAINT `fk2_commandes` FOREIGN KEY (`NO_CLIENT`) REFERENCES `clientel` (`NO_CLIENT`);

--
-- Contraintes pour la table `compose`
--
ALTER TABLE `compose`
  ADD CONSTRAINT `fk1_compose` FOREIGN KEY (`NO_COMPOSE`) REFERENCES `articles` (`NO_ARTICLE`),
  ADD CONSTRAINT `fk2_compose` FOREIGN KEY (`NO_COMPOSANT`) REFERENCES `articles` (`NO_ARTICLE`);

--
-- Contraintes pour la table `detail_cde`
--
ALTER TABLE `detail_cde`
  ADD CONSTRAINT `fk1_detail_cde` FOREIGN KEY (`NO_COMMAND`) REFERENCES `commandes` (`NO_COMMAND`),
  ADD CONSTRAINT `fk2_detail_cde` FOREIGN KEY (`NO_ARTICLE`) REFERENCES `articles` (`NO_ARTICLE`);

--
-- Contraintes pour la table `vendeur`
--
ALTER TABLE `vendeur`
  ADD CONSTRAINT `fk1_vendeur` FOREIGN KEY (`NO_VEND_CHEF_EQ`) REFERENCES `vendeur` (`NO_VENDEUR`);
--
-- Base de données :  `examen`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_article`
--

CREATE TABLE IF NOT EXISTS `t_article` (
  `art_id` int(11) NOT NULL AUTO_INCREMENT,
  `art_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `art_content` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`art_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Contenu de la table `t_article`
--

INSERT INTO `t_article` (`art_id`, `art_title`, `art_content`) VALUES
(1, 'Premier article', 'Bonjour monde ! Ceci est le tout premier article.'),
(2, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut hendrerit mauris ac porttitor accumsan. Nunc vitae pulvinar odio, auctor interdum dolor. Aenean sodales dui quis metus iaculis, hendrerit vulputate lorem vestibulum. Suspendisse pulvinar, purus at euismod semper, nulla orci pulvinar massa, ac placerat nisi urna eu tellus. Fusce dapibus rutrum diam et dictum. Sed tellus ipsum, ullamcorper at consectetur vitae, gravida vel sem. Vestibulum pellentesque tortor et elit posuere vulputate. Sed et volutpat nunc. Praesent nec accumsan nisi, in hendrerit nibh. In ipsum mi, fermentum et eleifend eget, eleifend vitae libero. Phasellus in magna tempor diam consequat posuere eu eget urna. Fusce varius nulla dolor, vel semper dui accumsan vitae. Sed eget risus neque.'),
(3, 'Lorem ipsum en français', 'J’en dis autant de ceux qui, par mollesse d’esprit, c’est-à-dire par la crainte de la peine et de la douleur, manquent aux devoirs de la vie. Et il est très facile de rendre raison de ce que j’avance. Car, lorsque nous sommes tout à fait libres, et que rien ne nous empêche de faire ce qui peut nous donner le plus de plaisir, nous pouvons nous livrer entièrement à la volupté et chasser toute sorte de douleur ; mais, dans les temps destinés aux devoirs de la société ou à la nécessité des affaires, souvent il faut faire divorce avec la volupté, et ne se point refuser à la peine. La règle que suit en cela un homme sage, c’est de renoncer à de légères voluptés pour en avoir de plus grandes, et de savoir supporter des douleurs légères pour en éviter de plus fâcheuses.'),
(4, 'nouveau test matthieu', 'je me teste'),
(5, 'skk', 'xdsdc'),
(6, 'Test 52', 'encore un test');

-- --------------------------------------------------------

--
-- Structure de la table `t_comment`
--

CREATE TABLE IF NOT EXISTS `t_comment` (
  `com_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_content` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `art_id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`com_id`),
  KEY `fk_com_art` (`art_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Contenu de la table `t_comment`
--

INSERT INTO `t_comment` (`com_id`, `com_content`, `art_id`, `username`) VALUES
(1, 'Bravo ! J''ai hâte de lire la suite.', 1, 'Bill'),
(2, 'Moi aussi.', 1, 'John'),
(8, 'mat', 1, 'test'),
(10, 'je suis un test', 4, 'matthieu'),
(11, 'test2', 1, 'matthieu'),
(12, 'Encore un test', 1, 'matthieu');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `t_comment`
--
ALTER TABLE `t_comment`
  ADD CONSTRAINT `fk_com_art` FOREIGN KEY (`art_id`) REFERENCES `t_article` (`art_id`);
--
-- Base de données :  `minimedium`
--
--
-- Base de données :  `mymovies`
--

-- --------------------------------------------------------

--
-- Structure de la table `movie`
--

CREATE TABLE IF NOT EXISTS `movie` (
  `mov_id` int(11) NOT NULL AUTO_INCREMENT,
  `mov_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mov_description_short` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `mov_description_long` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `mov_director` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `mov_year` date DEFAULT NULL,
  `mov_image` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`mov_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Contenu de la table `movie`
--

INSERT INTO `movie` (`mov_id`, `mov_title`, `mov_description_short`, `mov_description_long`, `mov_director`, `mov_year`, `mov_image`) VALUES
(1, 'Star Wars I', 'Film de science fiction des anné 1999 ;) =) Mouahahahahahahahaaa sa marche génial', 'Avant de devenir un célèbre chevalier Jedi, et bien avant de se révéler l’âme la plus noire de la galaxie, Anakin Skywalker est un jeune esclave sur la planète Tatooine. La Force est déjà puissante en lui et il est un remarquable pilote de Podracer. Le maître Jedi Qui-Gon Jinn le découvre et entrevoit alors son immense potentiel.\r\nPendant ce temps, l’armée de droïdes de l’insatiable Fédération du Commerce a envahi Naboo, une planète pacifique, dans le cadre d’un plan secret des Sith visant à accroître leur pouvoir. Pour défendre la reine de Naboo, Amidala, les chevaliers Jedi vont devoir affronter le redoutable Seigneur Sith, Dark Maul. ', 'George Lucas', '1999-10-13', 'images/Star_Wars_I.png'),
(2, 'Star Wars II', 'Toujoue un film de science fiction et qui marche lui aussi génial non?', 'Depuis le blocus de la planète Naboo par la Fédération du commerce, la République, gouvernée par le Chancelier Palpatine, connaît une véritable crise. Un groupe de dissidents, mené par le sombre Jedi comte Dooku, manifeste son mécontentement envers le fonctionnement du régime. Le Sénat et la population intergalactique se montrent pour leur part inquiets face à l&#039;émergence d&#039;une telle menace.\r\nCertains sénateurs demandent à ce que la République soit dotée d&#039;une solide armée pour empêcher que la situation ne se détériore davantage. Parallèlement, Padmé Amidala, devenue sénatrice, est menacée par les séparatistes et échappe de justesse à un attentat. Le Padawan Anakin Skywalker est chargé de sa protection. Son maître, Obi-Wan Kenobi, part enquêter sur cette tentative de meurtre et découvre la constitution d&#039;une mystérieuse armée de clones... ', 'George Lucas', '2002-05-17', 'images/DSCN3616.JPG'),
(3, 'A supprimer', 'Je suis inutile', 'Vraiment inutile', 'Moi meme', '2025-01-01', 'images/DSCN3623.JPG');

-- --------------------------------------------------------

--
-- Structure de la table `utilsateur`
--

CREATE TABLE IF NOT EXISTS `utilsateur` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `passeword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `groupe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_inscription` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;
--
-- Base de données :  `mymovies-dynamique`
--
--
-- Base de données :  `test`
--

-- --------------------------------------------------------

--
-- Structure de la table `jeux_video`
--

CREATE TABLE IF NOT EXISTS `jeux_video` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `possesseur` varchar(255) NOT NULL,
  `console` varchar(255) NOT NULL,
  `prix` double NOT NULL DEFAULT '0',
  `nbre_joueurs_max` int(11) NOT NULL DEFAULT '0',
  `commentaires` text NOT NULL,
  KEY `ID` (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Contenu de la table `jeux_video`
--

INSERT INTO `jeux_video` (`ID`, `nom`, `possesseur`, `console`, `prix`, `nbre_joueurs_max`, `commentaires`) VALUES
(1, 'Super Mario Bros', 'Florent', 'NES', 4, 1, 'Un jeu d''anthologie !'),
(2, 'Sonic', 'Patrick', 'Megadrive', 2, 1, 'Pour moi, le meilleur jeu du monde !'),
(3, 'Zelda : ocarina of time', 'Florent', 'Nintendo 64', 15, 1, 'Un jeu grand, beau et complet comme on en voit rarement de nos jours'),
(4, 'Mario Kart 64', 'Florent', 'Nintendo 64', 25, 4, 'Un excellent jeu de kart !'),
(5, 'Super Smash Bros Melee', 'Michel', 'GameCube', 55, 4, 'Un jeu de baston délirant !'),
(6, 'Dead or Alive', 'Patrick', 'Xbox', 60, 4, 'Le plus beau jeu de baston jamais créé'),
(7, 'Dead or Alive Xtreme Beach Volley Ball', 'Patrick', 'Xbox', 60, 4, 'Un jeu de beach volley de toute beauté o_O'),
(8, 'Enter the Matrix', 'Michel', 'PC', 45, 1, 'Plutôt bof comme jeu, mais ça complète bien le film'),
(9, 'Max Payne 2', 'Michel', 'PC', 50, 1, 'Très réaliste, une sorte de film noir sur fond d''histoire d''amour. A essayer !'),
(10, 'Yoshi''s Island', 'Florent', 'SuperNES', 6, 1, 'Le paradis des Yoshis :o)'),
(11, 'Commandos 3', 'Florent', 'PC', 44, 12, 'Un bon jeu d''action où on dirige un commando pendant la 2ème guerre mondiale !'),
(12, 'Final Fantasy X', 'Patrick', 'PS2', 40, 1, 'Encore un Final Fantasy mais celui la est encore plus beau !'),
(13, 'Pokemon Rubis', 'Florent', 'GBA', 44, 4, 'Pika-Pika-chu !!!'),
(14, 'Starcraft', 'Michel', 'PC', 19, 8, 'Le meilleur jeux pc de tout les temps !'),
(15, 'Grand Theft Auto 3', 'Michel', 'PS2', 30, 1, 'Comme dans les autres Gta on ecrase tout le monde :) .'),
(16, 'Homeworld 2', 'Michel', 'PC', 45, 6, 'Superbe ! o_O'),
(17, 'Aladin', 'Patrick', 'SuperNES', 10, 1, 'Comme le dessin Animé !'),
(18, 'Super Mario Bros 3', 'Michel', 'SuperNES', 10, 2, 'Le meilleur Mario selon moi.'),
(19, 'SSX 3', 'Florent', 'Xbox', 56, 2, 'Un très bon jeu de snow !'),
(20, 'Star Wars : Jedi outcast', 'Patrick', 'Xbox', 33, 1, 'Encore un jeu sur star-wars où on se prend pour Luke Skywalker !'),
(21, 'Actua Soccer 3', 'Patrick', 'PS', 30, 2, 'Un jeu de foot assez bof ...'),
(22, 'Time Crisis 3', 'Florent', 'PS2', 40, 1, 'Un troisième volet efficace mais pas vraiment surprenant'),
(23, 'X-FILES', 'Patrick', 'PS', 25, 1, 'Un jeu censé ressembler a la série mais assez raté ...'),
(24, 'Soul Calibur 2', 'Patrick', 'Xbox', 54, 1, 'Un jeu bien axé sur le combat'),
(25, 'Diablo', 'Florent', 'PS', 20, 1, 'Comme sur PC mais la c''est sur un ecran de télé :) !'),
(26, 'Street Fighter 2', 'Patrick', 'Megadrive', 10, 2, 'Le célèbre jeu de combat !'),
(27, 'Gundam Battle Assault 2', 'Florent', 'PS', 29, 1, 'Jeu japonais dont le gameplay est un peu limité. Peu de robots malheureusement'),
(28, 'Spider-Man', 'Florent', 'Megadrive', 15, 1, 'Vivez l''aventure de l''homme araignée'),
(29, 'Midtown Madness 3', 'Michel', 'Xbox', 59, 6, 'Dans la suite des autres versions de Midtown Madness'),
(30, 'Tetris', 'Florent', 'Gameboy', 5, 1, 'Qui ne connait pas ? '),
(31, 'The Rocketeer', 'Michel', 'NES', 2, 1, 'Un super un film et un jeu de m*rde ...'),
(32, 'Pro Evolution Soccer 3', 'Patrick', 'PS2', 59, 2, 'Un petit jeu de foot sur PS2'),
(33, 'Ice Hockey', 'Michel', 'NES', 7, 2, 'Jamais joué mais a mon avis ca parle de hockey sur glace ... =)'),
(34, 'Sydney 2000', 'Florent', 'Dreamcast', 15, 2, 'Les JO de Sydney dans votre salon !'),
(35, 'NBA 2k', 'Patrick', 'Dreamcast', 12, 2, 'A votre avis :p ?'),
(36, 'Aliens Versus Predator : Extinction', 'Michel', 'PS2', 20, 2, 'Un shoot''em up pour pc'),
(37, 'Crazy Taxi', 'Florent', 'Dreamcast', 11, 1, 'Conduite de taxi en folie !'),
(38, 'Le Maillon Faible', 'Mathieu', 'PS2', 10, 1, 'Le jeu de l''émission'),
(39, 'FIFA 64', 'Michel', 'Nintendo 64', 25, 2, 'Le premier jeu de foot sur la N64 =) !'),
(40, 'Qui Veut Gagner Des Millions', 'Florent', 'PS2', 10, 1, 'Le jeu de l''émission'),
(41, 'Monopoly', 'Sebastien', 'Nintendo 64', 21, 4, 'Bheuuu le monopoly sur N64 !'),
(42, 'Taxi 3', 'Corentin', 'PS2', 19, 4, 'Un jeu de voiture sur le film'),
(43, 'Indiana Jones Et Le Tombeau De L''Empereur', 'Florent', 'PS2', 25, 1, 'Notre aventurier préféré est de retour !!!'),
(44, 'F-ZERO', 'Mathieu', 'GBA', 25, 4, 'Un super jeu de course futuriste !'),
(45, 'Harry Potter Et La Chambre Des Secrets', 'Mathieu', 'Xbox', 30, 1, 'Abracadabra !! Le célebre magicien est de retour !'),
(46, 'Half-Life', 'Corentin', 'PC', 15, 32, 'L''autre meilleur jeu de tout les temps (surtout ses mods).'),
(47, 'Myst III Exile', 'Sébastien', 'Xbox', 49, 1, 'Un jeu de réflexion'),
(48, 'Wario World', 'Sebastien', 'Gamecube', 40, 4, 'Wario vs Mario ! Qui gagnera ! ?'),
(49, 'Rollercoaster Tycoon', 'Florent', 'Xbox', 29, 1, 'Jeu de gestion d''un parc d''attraction'),
(50, 'Splinter Cell', 'Patrick', 'Xbox', 53, 1, 'Jeu magnifique !');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
