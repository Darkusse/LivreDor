-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 26 jan. 2022 à 22:40
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `livredor`
--

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

DROP TABLE IF EXISTS `commentaire`;
CREATE TABLE IF NOT EXISTS `commentaire` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `texte` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`Id`, `pseudo`, `texte`, `date`) VALUES
(3, 'werabi22', 'jjlklj', '2021-11-23 13:48:47'),
(4, 'werabi', 'hello je suis senior ', '2021-11-23 14:02:13'),
(5, 'Sophie', 'Crise en Guadeloupe : ce que l\'on sait de l\'instance de dialogue annoncÃ©e par Jean Castex pour \"accompagner\" et \"convaincre\" les soignants', '2021-11-23 14:52:31'),
(6, 'albert', 'DÃ©fiance envers l\'Ã‰tat, pauvretÃ©, hÃ´pital en dÃ©tresse... Les origines de la colÃ¨re en Guadeloupe', '2021-11-23 14:52:50'),
(8, 'mop', 'PÃªche post-Brexit : Macron assure que la France ne lÃ¢chera pas les pÃªcheurs', '2021-11-23 14:53:22'),
(9, 'grtyuilhjlop', 'BiÃ©lorussie : les migrants Ã©vacuÃ©s des camps hÃ©bergÃ©s dans un centre d\'accueil\r\n\r\n', '2021-11-23 14:53:44'),
(11, 'Germani', 'Un texte est une sÃ©rie orale ou Ã©crite de mots perÃ§us comme constituant un ensemble cohÃ©rent, porteur de sens et utilisant les structures propres Ã  une langue. Un texte n\'a pas de longueur dÃ©terminÃ©e sauf dans le cas de poÃ¨mes Ã  forme fixe comme le sonnet ou le haÃ¯ku', '2021-11-30 11:46:16'),
(12, 'Emmanuel', 'DÃ©classez ce rapport que je ne saurais voir. Huit membres de lâ€™AcadÃ©mie catholique ont dÃ©noncÃ© la Â« mÃ©thodologie dÃ©faillante Â», les Â« carences sÃ©rieuses Â» et les recommandations Â« discutables Â» de la commission sur la pÃ©docriminalitÃ© dans lâ€™Eglise (Ciase), ce dont sâ€™est dÃ©fendu son prÃ©sident Jean-Marc SauvÃ©.\r\n\r\nPubliÃ© dÃ©but octobre, le rapport de la commission a causÃ© une onde de choc dans lâ€™institution en estimant Ã  330.000 le nombre de personnes de plus de 18 ans ayant fait lâ€™objet de violences sexuelles depuis 1950, quand elles Ã©taient mineures, de la part de clercs, de religieux ou de personnes en lien avec lâ€™Eglise.\r\n\r\nSolidaires des victimes quand mÃªme\r\nPlus dâ€™un mois aprÃ¨s, huit des quelque 200 Ã  250 membres de cette AcadÃ©mie, qui rÃ©unit des intellectuels catholiques, ont remis en cause ces conclusions dans un texte de 15 pages rÃ©vÃ©lÃ© par La Croix. Parmi les signataires figurent le prÃ©sident de lâ€™AcadÃ©mie Hugues Portelli, professeur Ã©mÃ©rite Ã  lâ€™universitÃ© Paris-II, Philippe Capelle-Dumont, professeur de thÃ©ologie Ã  lâ€™universitÃ© de Strasbourg, ou encore le philosophe Pierre Manent.', '2021-11-30 11:46:55'),
(13, 'Emmanuel', 'DÃ©classez ce rapport que je ne saurais voir. Huit membres de lâ€™AcadÃ©mie catholique ont dÃ©noncÃ© la Â« mÃ©thodologie dÃ©faillante Â», les Â« carences sÃ©rieuses Â» et les recommandations Â« discutables Â» de la commission sur la pÃ©docriminalitÃ© dans lâ€™Eglise (Ciase), ce dont sâ€™est dÃ©fendu son prÃ©sident Jean-Marc SauvÃ©.\r\n\r\nPubliÃ© dÃ©but octobre, le rapport de la commission a causÃ© une onde de choc dans lâ€™institution en estimant Ã  330.000 le nombre de personnes de plus de 18 ans ayant fait lâ€™objet de violences sexuelles depuis 1950, quand elles Ã©taient mineures, de la part de clercs, de religieux ou de personnes en lien avec lâ€™Eglise.\r\n\r\nSolidaires des victimes quand mÃªme\r\nPlus dâ€™un mois aprÃ¨s, huit des quelque 200 Ã  250 membres de cette AcadÃ©mie, qui rÃ©unit des intellectuels catholiques, ont remis en cause ces conclusions dans un texte de 15 pages rÃ©vÃ©lÃ© par La Croix. Parmi les signataires figurent le prÃ©sident de lâ€™AcadÃ©mie Hugues Portelli, professeur Ã©mÃ©rite Ã  lâ€™universitÃ© Paris-II, Philippe Capelle-Dumont, professeur de thÃ©ologie Ã  lâ€™universitÃ© de Strasbourg, ou encore le philosophe Pierre Manent.', '2021-11-30 11:47:04'),
(18, 'pierre', 'AprÃ¨s deux semaines chaotiques, le Parlement doit adopter, dimanche 16 janvier, par un ultime vote de l\'AssemblÃ©e, le projet de loi controversÃ© instaurant le pass vaccinal. Le ministre de la SantÃ© Olivier VÃ©ran ne sera pas sur place, Ã©tant lui-mÃªme atteint par le Covid-19. Le vote est attendu Ã  16 heures. Suivez la situation dans notre direct.', '2022-01-16 12:10:18'),
(19, 'redy', 'The licensing is future-proof, meaning even if you unsubscribe and can\'t download items from Envato Elements any more, any existing uses that you registered are still covered.\r\n\r\n', '2022-01-16 13:19:02'),
(20, 'Hidalgo', 'INNOVATION - Le candidat de La France Insoumise organise ce dimanche 16 janvier Ã  Nantes un meeting insolite qui se veut \"immersif\". Au programme : Ã©crans gÃ©ants, diffusion d\'images, mais aussi d\'odeurs.', '2022-01-16 14:49:49'),
(46, 'Karim', 'The history of the French recording industry, particularly regarding independent labels, never was a much documented topic. Since 2012, the BnF Audiovisual department has been interviewing producers and publishers, launching a survey of audio recordings which enable them to revisit their professional background and personal, peculiar journeys. The Audiovisual department had the opportunity to dedicate its technical expertise to phonographic heritage through professional quality recording and editing for best listening conditions. These interviews are given detailed documentary treatment and extended RAMEAU language to provide for specific terms describing the musical industry. This ongoing corpus of interviews is freely available online (BnF digital library Gallica), and is given audience development through national and European mediation (Europeana sounds)', '2022-01-26 17:18:37'),
(22, 'Hidalgo', 'INNOVATION - Le candidat de La France Insoumise organise ce dimanche 16 janvier Ã  Nantes un meeting insolite qui se veut \"immersif\". Au programme : Ã©crans gÃ©ants, diffusion d\'images, mais aussi d\'odeurs.', '2022-01-16 14:56:09'),
(23, 'Namadia', 'Lâ€™annÃ©e 2022 vient tout juste de dÃ©buter, et pourtant, un sÃ©isme sans prÃ©cÃ©dent vient dâ€™Ã©branler lâ€™industrie du jeu vidÃ©o tout entiÃ¨re. Microsoft sâ€™est offert rien de moins que Activision-Blizzard pour la bagatelle de 68,7 milliards de dollars. AprÃ¨s Bethesda Softworks, câ€™est au tour dâ€™un autre acteur historique de tomber dans lâ€™escarcelle de la firme amÃ©ricaine et avec elle de nombreuses IPs. Suite Ã  ce rachat, quelles franchises majeures possÃ¨de dÃ©sormais Microsoft ? Deviendront-elles Ã  terme des exclusivitÃ©s ? La rÃ©daction de JV tente de rÃ©pondre Ã  ces Ã©pineuses questions.', '2022-01-20 23:41:57'),
(25, 'Namadia', ' Le 20 janvier, place de la Bastille Ã  Paris, câ€™est, semble-t-il, Ã  la suite dâ€™un accrochage entre une voiture et un bus de la ligne 91 de la RATP, quâ€™une violente altercation a Ã©clatÃ©.\r\n\r\nSur les images qui ont circulÃ© sur les rÃ©seaux sociaux, on voit le conducteur dâ€™un vÃ©hicule Range Rover, quitter le volant en furie et venir casser la vitre latÃ©rale gauche du bus.\r\n\r\nLa femme qui accompagne lâ€™automobiliste, tente de le calmer et de le canaliser, mais celui-ci ne dÃ©colÃ¨re pas. Il rÃ©ussit Ã  entrer dans le bus et frappe le chauffeur au visage, Ã  plusieurs reprises sous le regard mÃ©dusÃ© des passants.', '2022-01-20 23:42:05'),
(26, 'Namadia', 'Le problÃ¨me rÃ©side dans le manque dâ€™offre structurelles culturelle, de lieu de diffusion et donc de visibilitÃ© pour ces artistes et leurs Å“uvres. Il est pourtant\r\npossible de mettre en valeur ces talents, de les inclure\r\ndans des crÃ©ations avec des artistes professionnelÂ·leÂ·s\r\nou dâ€™imaginer toutes sortes de collaborations ; les combinaisons sont infinies.', '2022-01-20 23:42:05'),
(50, 'Yacine', 'Ce corpus dâ€™entretiens sur les labels phonographiques indÃ©pendants franÃ§ais depuis 1969 est nÃ© dâ€™un constat et dâ€™une rencontre. Peu dâ€™Ã©crits existent sur lâ€™Ã©dition phonographique Ã  lâ€™exception dâ€™ouvrages dÃ©diÃ©s Ã  certains labels Ã©trangers emblÃ©matiques (Deutsche Grammophon, Verve, etc.) ou citant, de maniÃ¨re ponctuelle ou peu approfondie, lâ€™existence de tel ou tel labels franÃ§ais dans un contexte liÃ© essentiellement Ã  la carriÃ¨re dâ€™artistes ou lâ€™Ã©tude de genres ou mouvements musicaux. La presse Ã©crite musicale constitue une source dâ€™information non nÃ©gligeable, mais il convient de dÃ©pouiller celle-ci numÃ©ro par numÃ©ro, car il nâ€™existe pas dâ€™inventaire prÃ©cis ni dâ€™outils de recherche dÃ©diÃ©s. Les sources premiÃ¨res sont Ã©galement rares, car aucun Ã©diteur nâ€™a dÃ©posÃ© ses archives1 et les majors (Sony, Universal, Warner), qui, au fil du temps, ont rachetÃ© des labels franÃ§ais, ne disposent souvent pas de services dâ€™archivage ou de recherche accessibles facilement. Certains sites internet, autres que le catalogue de la BnF, notamment Discogs et Rate your music, permettent de reconstituer en partie la discographie des Ã©diteurs interviewÃ©s. La BibliothÃ¨que nationale de France, dÃ©positaire du dÃ©pÃ´t lÃ©gal des phonogrammes, constitue Ã  ce titre le lieu idÃ©al de rencontres et dâ€™Ã©changes avec les Ã©diteurs. Et câ€™est lors dâ€™un rendez-vous avec GÃ©rard TerronÃ¨s, fondateur en 1969 du label Futura, que lâ€™idÃ©e de recueillir la parole des Ã©diteurs phonographiques franÃ§ais est nÃ©e.', '2022-01-26 17:25:11'),
(51, 'Yacine', 'Ce corpus dâ€™entretiens sur les labels phonographiques indÃ©pendants franÃ§ais depuis 1969 est nÃ© dâ€™un constat et dâ€™une rencontre. Peu dâ€™Ã©crits existent sur lâ€™Ã©dition phonographique Ã  lâ€™exception dâ€™ouvrages dÃ©diÃ©s Ã  certains labels Ã©trangers emblÃ©matiques (Deutsche Grammophon, Verve, etc.) ou citant, de maniÃ¨re ponctuelle ou peu approfondie, lâ€™existence de tel ou tel labels franÃ§ais dans un contexte liÃ© essentiellement Ã  la carriÃ¨re dâ€™artistes ou lâ€™Ã©tude de genres ou mouvements musicaux. La presse Ã©crite musicale constitue une source dâ€™information non nÃ©gligeable, mais il convient de dÃ©pouiller celle-ci numÃ©ro par numÃ©ro, car il nâ€™existe pas dâ€™inventaire prÃ©cis ni dâ€™outils de recherche dÃ©diÃ©s. Les sources premiÃ¨res sont Ã©galement rares, car aucun Ã©diteur nâ€™a dÃ©posÃ© ses archives1 et les majors (Sony, Universal, Warner), qui, au fil du temps, ont rachetÃ© des labels franÃ§ais, ne disposent souvent pas de services dâ€™archivage ou de recherche accessibles facilement. Certains sites internet, autres que le catalogue de la BnF, notamment Discogs et Rate your music, permettent de reconstituer en partie la discographie des Ã©diteurs interviewÃ©s. La BibliothÃ¨que nationale de France, dÃ©positaire du dÃ©pÃ´t lÃ©gal des phonogrammes, constitue Ã  ce titre le lieu idÃ©al de rencontres et dâ€™Ã©changes avec les Ã©diteurs. Et câ€™est lors dâ€™un rendez-vous avec GÃ©rard TerronÃ¨s, fondateur en 1969 du label Futura, que lâ€™idÃ©e de recueillir la parole des Ã©diteurs phonographiques franÃ§ais est nÃ©e.', '2022-01-26 17:33:03'),
(52, 'Mathilde', 'Bonjour tous le monde', '2022-01-26 17:33:28'),
(74, 'Phillipe', 'exam demain matin', '2022-01-26 20:20:54'),
(71, 'werabi', 'ss', '2022-01-26 20:17:46'),
(77, 'Samuel', 'Bonjour a tous reunion demain matin', '2022-01-26 20:23:38'),
(78, 'Pierre', 'Vendredi', '2022-01-26 20:32:14'),
(87, 'margaux', 'mon petit ours', '2022-01-26 20:44:42');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
