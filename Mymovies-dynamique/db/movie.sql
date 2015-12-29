-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 22 Décembre 2015 à 10:40
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Contenu de la table `movie`
--

INSERT INTO `movie` (`mov_id`, `mov_title`, `mov_description_short`, `mov_description_long`, `mov_director`, `mov_year`, `mov_image`) VALUES
(1, 'Star Wars I', 'Film de science fiction des anné 1999 ;) =) Mouahahahahahahahaaa sa marche génial', 'Avant de devenir un célèbre chevalier Jedi, et bien avant de se révéler l’âme la plus noire de la galaxie, Anakin Skywalker est un jeune esclave sur la planète Tatooine. La Force est déjà puissante en lui et il est un remarquable pilote de Podracer. Le maître Jedi Qui-Gon Jinn le découvre et entrevoit alors son immense potentiel.\r\nPendant ce temps, l’armée de droïdes de l’insatiable Fédération du Commerce a envahi Naboo, une planète pacifique, dans le cadre d’un plan secret des Sith visant à accroître leur pouvoir. Pour défendre la reine de Naboo, Amidala, les chevaliers Jedi vont devoir affronter le redoutable Seigneur Sith, Dark Maul. ', 'George Lucas', '1999-10-13', 'images/Star_Wars_I.png'),
(2, 'Star Wars II', 'Toujoue un film de science fiction et qui marche lui aussi génial non?', 'Depuis le blocus de la planète Naboo par la Fédération du commerce, la République, gouvernée par le Chancelier Palpatine, connaît une véritable crise. Un groupe de dissidents, mené par le sombre Jedi comte Dooku, manifeste son mécontentement envers le fonctionnement du régime. Le Sénat et la population intergalactique se montrent pour leur part inquiets face à l''émergence d''une telle menace.\r\nCertains sénateurs demandent à ce que la République soit dotée d''une solide armée pour empêcher que la situation ne se détériore davantage. Parallèlement, Padmé Amidala, devenue sénatrice, est menacée par les séparatistes et échappe de justesse à un attentat. Le Padawan Anakin Skywalker est chargé de sa protection. Son maître, Obi-Wan Kenobi, part enquêter sur cette tentative de meurtre et découvre la constitution d''une mystérieuse armée de clones... ', 'George Lucas', '2002-05-17', 'images/Star_Wars_II.png'),
(3, 'Star Wars III', 'ET oui ceci est bien une short descrption mais vraiment short mais je ne sais pas quoi ecrire aussi...', 'La Guerre des Clones fait rage. Une franche hostilité oppose désormais le Chancelier Palpatine au Conseil Jedi. Anakin Skywalker, jeune Chevalier Jedi pris entre deux feux, hésite sur la conduite à tenir. Séduit par la promesse d''un pouvoir sans précédent, tenté par le côté obscur de la Force, il prête allégeance au maléfique Darth Sidious et devient Dark Vador.\r\nLes Seigneurs Sith s''unissent alors pour préparer leur revanche, qui commence par l''extermination des Jedi. Seuls rescapés du massacre, Yoda et Obi Wan se lancent à la poursuite des Sith. La traque se conclut par un spectaculaire combat au sabre entre Anakin et Obi Wan, qui décidera du sort de la galaxie. ', 'George Lucas', '2005-05-18', 'images/Star_Wars_III.jpg'),
(4, 'Star Wars IV', 'La je n''ai vriament plus d''idée je suis vraiment mais alors tellement désolé c''est le dernier que j''ajoute les prochain demerdé vous ok?', 'Il y a bien longtemps, dans une galaxie très lointaine... La guerre civile fait rage entre l''Empire galactique et l''Alliance rebelle. Capturée par les troupes de choc de l''Empereur menées par le sombre et impitoyable Dark Vador, la princesse Leia Organa dissimule les plans de l''Etoile Noire, une station spatiale invulnérable, à son droïde R2-D2 avec pour mission de les remettre au Jedi Obi-Wan Kenobi. Accompagné de son fidèle compagnon, le droïde de protocole C-3PO, R2-D2 s''échoue sur la planète Tatooine et termine sa quête chez le jeune Luke Skywalker. Rêvant de devenir pilote mais confiné aux travaux de la ferme, ce dernier se lance à la recherche de ce mystérieux Obi-Wan Kenobi, devenu ermite au coeur des montagnes désertiques de Tatooine...', 'George Lucas', '1977-10-19', 'images/Star_Wars_IV.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
