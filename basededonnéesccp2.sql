-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 03 mai 2020 à 12:39
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `renduccp2`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sous_titre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `contenu` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `online` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `titre`, `sous_titre`, `slug`, `created_at`, `updated_at`, `contenu`, `featured_image`, `online`) VALUES
(5, 'Oracle contre Google : la bataille se déplace sur le terrain de la donnée', 'Selon le groupe numérique, Google utilise plus de données de géolocalisation de ses utilisateurs qu’il ne le dit', 'Oracle-contre-Google', '2020-01-01 00:00:00', '2020-04-27 10:22:08', '<p style=\"text-align:justify\">La d&eacute;monstration impressionne. Reli&eacute; &agrave; une valise truff&eacute;e d&rsquo;&eacute;lectronique, dans un salon d&rsquo;un grand h&ocirc;tel parisien, un t&eacute;l&eacute;phone passe aux aveux. A 18&nbsp;h&nbsp;40, son possesseur &eacute;tait en voiture&nbsp;: probabilit&eacute; <strong>90&nbsp;%</strong>. A 19&nbsp;h&nbsp;03, le voil&agrave; qui descend du v&eacute;hicule&nbsp;: probabilit&eacute; <strong>80&nbsp;%</strong>. Sa position est notamment &eacute;tablie gr&acirc;ce &agrave; une borne Wi-Fi voisine. Minute par minute, l&rsquo;appareil livre des informations sur l&rsquo;activit&eacute; de son utilisateur&nbsp;: s&rsquo;il est &agrave; l&rsquo;arr&ecirc;t, s&rsquo;il fait du v&eacute;lo, &agrave; quelle altitude il se trouve, etc. Tout cela d&eacute;file sous nos yeux sous la forme d&rsquo;interminables lignes de codes projet&eacute;es sur un grand &eacute;cran.</p>\r\n\r\n<p style=\"text-align:justify\">Ken Glueck, directeur des affaires publiques du g&eacute;ant du num&eacute;rique Oracle, accompagn&eacute; d&rsquo;une petite d&eacute;l&eacute;gation de collaborateurs, dirige cette pr&eacute;sentation. L&rsquo;appareil choisi pour ce test n&rsquo;a rien d&rsquo;anodin&nbsp;: il s&rsquo;agit d&rsquo;un terminal Android, c&rsquo;est-&agrave;-dire dot&eacute; du syst&egrave;me d&rsquo;exploitation d&eacute;velopp&eacute; par Google, une soci&eacute;t&eacute; contre laquelle Oracle est engag&eacute; depuis pr&egrave;s de neuf ans dans une f&eacute;roce bataille juridique d&eacute;sormais port&eacute;e devant la Cour supr&ecirc;me) et dont il ambitionne de retirer plusieurs milliards de dollars d&rsquo;indemnit&eacute;s. M&ecirc;me si le contentieux &ndash; portant sur l&rsquo;exploitation du langage Java d&eacute;tenu par Oracle &ndash; n&rsquo;a rien &agrave; voir sur le fond avec la d&eacute;monstration faite ce jour-l&agrave;, on est en droit de penser qu&rsquo;il n&rsquo;y est pas &eacute;tranger.</p>\r\n\r\n<p style=\"text-align:justify\">Pourquoi, sinon, l&rsquo;un des principaux dirigeants d&rsquo;une entreprise &eacute;trang&egrave;re au secteur des moteurs de recherche, et qui d&eacute;gageait en&nbsp;2018 un chiffre d&rsquo;affaires de pr&egrave;s de 40&nbsp;milliards de dollars (environ <strong><em>36&nbsp;milliards d&rsquo;euros</em></strong>), prendrait-il plus d&rsquo;une heure pour nous livrer cette pr&eacute;sentation&nbsp;? A en croire Ken Glueck, il s&rsquo;agit de lever le voile sur la mani&egrave;re dont Google pr&eacute;l&egrave;ve, en &eacute;change d&rsquo;un service gratuit, des donn&eacute;es personnelles sur ses utilisateurs, en particulier quant &agrave; leur localisation&nbsp;:&nbsp;<em>&laquo;&nbsp;Le prix pay&eacute;&nbsp;</em>[les donn&eacute;es personnelles conc&eacute;d&eacute;es]&nbsp;<em>n&rsquo;a plus de lien avec la valeur du service&nbsp;&raquo;</em>, selon lui</p>', 'google-oracle.jpg', NULL),
(6, 'PowerPoint m’a tuer', 'Bien utilisé, le logiciel de Microsoft est un véritable dispositif de pyrotechnie visuelle qui rend les démonstrations plus convaincantes. Dans le cas contraire, l’effet soporifique est garanti', 'PowerPoint m\'a tué', '2015-01-01 00:00:00', '2020-04-27 10:24:50', '<p><strong><span style=\"font-size:20px\">S</span></strong>i de nombreux salari&eacute;s transpirent tant au moment d&rsquo;effectuer leur premi&egrave;re pr&eacute;sentation PowerPoint, c&rsquo;est qu&rsquo;ils sont parfaitement conscients des risques inh&eacute;rents &agrave; l&rsquo;exercice. Cens&eacute; magnifier les interventions orales en y adjoignant un dispositif de pyrotechnie visuelle, le logiciel &eacute;dit&eacute; par Microsoft est aussi &agrave; l&rsquo;origine d&rsquo;un syndrome de bureau fatal&nbsp;: la mort par PowerPoint.</p>\r\n\r\n<p>L&rsquo;expression proviendrait d&rsquo;un&nbsp;<a href=\"https://fr.slideshare.net/thecroaker/death-by-powerpoint\">manifeste diffus&eacute; en&nbsp;2007 sur Slide&shy;Share par le consultant Alexei Kapterev et intitul&eacute; &laquo;&nbsp;Death by PowerPoint (and how to fight it)&nbsp;&raquo;.</a>&nbsp;Cette mort, qui est bien entendu symbolique, peut n&eacute;anmoins avoir des r&eacute;percussions dommageables sur la suite de votre carri&egrave;re. An&eacute;anti par le d&eacute;filement hypnotique de vos&nbsp;<em>&shy;slides</em>&nbsp;surcharg&eacute;es, agress&eacute; par la r&eacute;currence de vos camemberts aux couleurs criardes, votre auditoire subit alors un processus de zombification massive, comme s&rsquo;il venait d&rsquo;&ecirc;tre mordu par un figurant de la s&eacute;rie&nbsp;<em>The Walking Dead</em>. L&rsquo;auditoire oubliera alors totalement ce que vous &eacute;tiez en train de dire &ndash; dommage, il s&rsquo;agissait d&rsquo;un discours cens&eacute; &ecirc;tre galvanisant sur la n&eacute;cessit&eacute; d&rsquo;installer une salle de sieste dans les locaux &ndash; et ne retiendra qu&rsquo;une chose&nbsp;: votre incapacit&eacute; cong&eacute;nitale &agrave; transmettre un message clair et inspirant.</p>\r\n\r\n<h2>Une mort lente et subite</h2>\r\n\r\n<p>Class&eacute;e en t&ecirc;te de la longue liste des tortures de bureau, la &laquo;&nbsp;mort par&nbsp;PowerPoint&nbsp;&raquo; a pour particularit&eacute; notable d&rsquo;&ecirc;tre aussi lente que subite. Lente car, &agrave; cause d&rsquo;un support visuel inad&eacute;quat, l&rsquo;engluement du propos semblera durer des heures. Les nuques s&rsquo;inclineront progressivement vers l&rsquo;avant en un mouvement de d&eacute;mission vert&eacute;brale. Les m&acirc;choires succomberont &agrave; l&rsquo;apesanteur. Signes comateux d&rsquo;autant plus outrageants pour le locuteur que PowerPoint offre justement tous les outils permettant de faire basculer la moindre de vos bafouilles dans le grand spectacle. Mais le fait que le salari&eacute; a entre les mains l&rsquo;&eacute;quivalent du d&eacute;partement effets sp&eacute;ciaux de Lucas Films (et parfois m&ecirc;me un pointeur laser lui donnant des airs de Jedi d&rsquo;open space) l&rsquo;am&egrave;ne souvent &agrave;&nbsp;oublier l&rsquo;essentiel, &agrave; savoir cette connexion &eacute;motionnelle qu&rsquo;il est indispensable de cr&eacute;er avec l&rsquo;auditoire.</p>', '1935_view.jpg', NULL),
(7, 'Google poursuit son offensive sur le marché du PC', 'Avec ses nouveaux Chromebook à 149 euros, le groupe cible le marché des écoles et des universités', 'Google-poursuit-son-offensive-sur-le-marché', '2015-01-01 00:00:00', '2020-04-27 10:26:51', '<p>Apr&egrave;s avoir conquis le march&eacute; des smartphones puis celui des tablettes, avec son syst&egrave;me Android, Google poursuit d&eacute;sormais son offensive dans l&rsquo;univers du PC. Mardi 30&nbsp;mars, le moteur de recherche a ainsi d&eacute;voil&eacute; deux nouveaux Chromebooks, ces ordinateurs &eacute;quip&eacute;s de ChromeOS, son syst&egrave;me d&rsquo;exploitation maison. Ils seront vendus &agrave; seulement 149&nbsp;dollars (138&nbsp;euros), soit 50&nbsp;dollars de moins que les pr&eacute;c&eacute;dents mod&egrave;les d&rsquo;entr&eacute;e de gamme.</p>\r\n\r\n<p>Pour abaisser les prix, la soci&eacute;t&eacute; s&rsquo;est associ&eacute;e avec deux fabricants chinois encore peu connus, Haier et Hisense. Ces derniers&nbsp;<em>&laquo;&nbsp;ne gagneront certainement pas d&rsquo;argent sur la vente des ordinateurs</em>, estime Tim Bajarin, directeur du cabinet Creative Strategies.&nbsp;<em>Mais c&rsquo;est un moyen pour eux de p&eacute;n&eacute;trer sur le march&eacute; am&eacute;ricain&nbsp;&raquo;.</em></p>\r\n\r\n<p>A leur lancement en&nbsp;2011, les Chromebooks n&rsquo;&eacute;taient encore pour Google qu&rsquo;une exp&eacute;rimentation, sur un march&eacute; nettement domin&eacute; par Microsoft, avec son syst&egrave;me d&rsquo;exploitation Windows. De nombreux analystes doutaient alors de leurs chances de succ&egrave;s. Quatre ans plus tard, ces ordinateurs ont pourtant trouv&eacute; leur public, surtout aux Etats-Unis.</p>\r\n\r\n<p>En&nbsp;2014, un peu plus de 6&nbsp;millions d&rsquo;unit&eacute;s ont &eacute;t&eacute; &eacute;coul&eacute;es dans le monde, selon les estimations du cabinet IDC. Certes, cela ne repr&eacute;sente que 2&nbsp;% du march&eacute; mondial. Mais<em>&nbsp;&laquo;&nbsp;la croissance a &eacute;t&eacute; tr&egrave;s importante&nbsp;: les ventes ont plus que doubl&eacute; par rapport &agrave; 2013&nbsp;&raquo;</em>, indique Rajani Singh, analyste chez IDC. Dans le m&ecirc;me temps, les ventes d&rsquo;ordinateurs ont l&eacute;g&egrave;rement recul&eacute;.</p>\r\n\r\n<p>Cela explique pourquoi tous les grands fabricants mondiaux produisent d&eacute;sormais des Chromebooks. Lenovo, HP, Dell, Samsung&nbsp;: personne ne peut se permettre d&rsquo;ignorer ce segment du march&eacute;. Une vingtaine de mod&egrave;les sont d&eacute;sormais commercialis&eacute;s. De nouvelles formes apparaissent &eacute;galement. Mardi, Asus a ainsi pr&eacute;sent&eacute; un terminal hybride, pouvant se transformer en tablette.</p>', 'google-logo.png', NULL),
(8, 'Bill Gates n\'est plus le premier actionnaire individuel de Microsoft', 'Le fondateur du groupe informatique américain a encore réduit sa participation mercredi, pointant désormais à 4 % du capital, contre 4,03 % pour l\'ancien PDG Steve Ballmer.', 'Bill-Gates-microsoft', '2015-01-01 00:00:00', '2020-04-27 10:36:18', '<p>Le fondateur de Microsoft, Bill Gates, a perdu sa place de premier actionnaire individuel du groupe informatique am&eacute;ricain au profit de l&#39;ex-patron Steve Ballmer, selon des documents boursiers. M.&nbsp;Gates, qui a entrepris depuis quelques ann&eacute;es de r&eacute;duire sa participation dans Microsoft, a encore vendu 4,6&nbsp;millions d&#39;actions mercredi, ce qui a ramen&eacute; sa participation &agrave; 330,14&nbsp;millions de titres, selon un avis publi&eacute; vendredi 2 mai sur le site internet du gendarme boursier am&eacute;ricain, la SEC. Il est ainsi pass&eacute; derri&egrave;re M.&nbsp;Ballmer, qui, au dernier pointage, d&eacute;tenait 333,25&nbsp;millions de titres, selon d&#39;autres documents transmis pr&eacute;c&eacute;demment &agrave; la SEC.</p>\r\n\r\n<p>Bill Gates d&eacute;tient d&eacute;sormais 4 % du capital de Microsoft, contre 4,03&nbsp;% pour Steve Ballmer, qui avait c&eacute;d&eacute; d&eacute;but f&eacute;vrier le poste de directeur g&eacute;n&eacute;ral &agrave; Satya Nadella. Au cours de cl&ocirc;ture de l&#39;action Microsoft vendredi soir, la participation de Bill Gates est valoris&eacute;e &agrave; 13,1&nbsp;milliards de dollars (9,4 milliards d&#39;euros) et celle de Steve Ballmer &agrave; 13,2 milliards (9,5 milliards d&#39;euros).</p>\r\n\r\n<p><strong>&laquo; UN TIERS DE SON TEMPS&nbsp;&raquo; &Agrave; MICROSOFT</strong></p>\r\n\r\n<p>Bill Gates avait cr&eacute;&eacute; ses premiers logiciels dans le garage de ses parents avant de cofonder Microsoft et devenir l&#39;homme le plus riche du monde. D&eacute;but mars, sa fortune &eacute;tait estim&eacute;e &agrave; 76&nbsp;milliards de dollars (55 milliards d&#39;euros) dans la derni&egrave;re &eacute;dition du classement de r&eacute;f&eacute;rence du magazine&nbsp;<em>Forbes.</em></p>', '602x338_cmsv2_b563c9e3-ffbe-544e-a67f-c1e76bfb7828-4624488.jpg', NULL),
(9, '10 exemples de landing pages qui fonctionnent en 2020', NULL, '10-exemples-de-landing-pages-qui-fonctionnent-en-2020', '2020-02-20 14:00:00', '2020-05-03 11:33:00', '<p>La landing page est une page pas comme les autres. En effet, c&rsquo;est ici que les clients potentiels d&rsquo;un site internet vont &ldquo;atterrir&rdquo;, vous donnant une belle opportunit&eacute; de les convertir.</p>\r\n\r\n<p>Que ce soit pour pr&eacute;senter votre produit ou votre service, ou encore une offre sp&eacute;cifique ou temporaire, la landing page est votre meilleure alli&eacute;e. Mais encore faut-il la r&eacute;ussir&hellip;</p>\r\n\r\n<h2>Qu&rsquo;est-ce qu&rsquo;une bonne landing page ?</h2>\r\n\r\n<p>Une bonne landing page, c&rsquo;est une page qui g&eacute;n&egrave;re de nouveaux utilisateurs ou de nouveaux prospects. Il n&rsquo;existe pas une recette miracle pour y parvenir : la &ldquo;landing page id&eacute;ale&rdquo; d&eacute;pend du secteur d&rsquo;activit&eacute;, de l&rsquo;audience cibl&eacute;e ou encore de l&rsquo;image de marque.</p>\r\n\r\n<p>On peut toutefois recenser quelques caract&eacute;ristiques g&eacute;n&eacute;rales d&rsquo;une bonne landing page :</p>\r\n\r\n<ul>\r\n	<li>Un texte attrayant et concis, qui met en avant les points forts de la solution</li>\r\n	<li>Des photos ou des vid&eacute;os qui permettent au visiteur de se projeter</li>\r\n	<li>Des preuves sociales (statistiques, avis de clients certifi&eacute;s&hellip;)</li>\r\n	<li>L&rsquo;absence d&rsquo;&eacute;l&eacute;ments superflus qui pourraient distraire le visiteur</li>\r\n</ul>\r\n\r\n<p>Pour illustrer tout cela, nous avons justement s&eacute;lectionn&eacute; 10 landing pages pour booster votre inspiration !</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pourquoi &ccedil;a fonctionne ?</p>\r\n\r\n<ul>\r\n	<li>Le titre incite imm&eacute;diatement &agrave; l&rsquo;action</li>\r\n	<li>Le sous-titre d&eacute;crit les principaux avantages d&rsquo;un chauffeur Uber</li>\r\n	<li>Le formulaire est plac&eacute; en haut de page pour &ecirc;tre immanquable</li>\r\n	<li>Le texte est simple et concis</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pourquoi &ccedil;a fonctionne ?</p>\r\n\r\n<ul>\r\n	<li>Le b&eacute;n&eacute;fice que peut apporter Airbnb aux h&ocirc;tes est mis en avant dans le titre</li>\r\n	<li>Le sous-titre invite &agrave; remplir le formulaire pour estimer ses gains</li>\r\n	<li>La photo d&eacute;gage un sentiment de satisfaction, de bonheur</li>\r\n	<li>Le bouton &ldquo;Commencer&rdquo; est d&eacute;doubl&eacute; (en bas du formulaire et en haut &agrave; droite) et donc encore plus visible</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pourquoi &ccedil;a marche ?</p>\r\n\r\n<ul>\r\n	<li>La principale fonctionnalit&eacute; du site est clairement d&eacute;crite dans le titre</li>\r\n	<li>Le bouton CTA du bas insiste sur l&rsquo;essai gratuit de 30 jours pour convaincre le visiteur</li>\r\n	<li>Le contenu de la plateforme Amazon Prime Video est mis en avant, avec des affiches de s&eacute;ries et de films</li>\r\n</ul>', 'landing-page.png', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `article_categorie`
--

DROP TABLE IF EXISTS `article_categorie`;
CREATE TABLE IF NOT EXISTS `article_categorie` (
  `article_id` int(11) NOT NULL,
  `categorie_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`categorie_id`),
  KEY `IDX_934886107294869C` (`article_id`),
  KEY `IDX_93488610BCF5E72D` (`categorie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

DROP TABLE IF EXISTS `commentaire`;
CREATE TABLE IF NOT EXISTS `commentaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contenu` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pseudo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `actif` tinyint(1) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_67F068BC7294869C` (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20200423092041', '2020-04-23 09:20:51'),
('20200426145349', '2020-04-26 14:54:03'),
('20200426151519', '2020-04-26 15:15:34'),
('20200426181458', '2020-04-26 18:15:13'),
('20200426182219', '2020-04-26 18:22:45'),
('20200501143828', '2020-05-01 14:38:42'),
('20200501145713', '2020-05-01 14:57:27'),
('20200501153318', '2020-05-01 15:33:40'),
('20200501153909', '2020-05-01 15:39:21'),
('20200501154057', '2020-05-01 15:41:12'),
('20200501154552', '2020-05-01 15:46:03'),
('20200501171238', '2020-05-01 17:12:52');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`roles`)),
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codepostal` int(11) DEFAULT NULL,
  `adresse` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` int(11) DEFAULT NULL,
  `metier` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `nom`, `prenom`, `codepostal`, `adresse`, `tel`, `metier`) VALUES
(1, 'charlotte@gmail.com', '[\"ROLE_ADMIN_GENERAL\",\"ROLE_ADMIN\",\"ROLE_USER\",\"ROLE_PRESTA\",\"ROLE_REDAC\",\"ROLE_RESP_EDIT\"]', '$argon2id$v=19$m=65536,t=4,p=1$eXNMWFNPV2xoTUFjQ3ZCZQ$sQde9bUCMiDuvL6ryFB66ri+T9vijzKaNW/nyMkVmKg', 'Groot', 'Charlotte', NULL, NULL, NULL, NULL),
(4, 'Catherinedelapereix@gmail.com', '[\"ROLE_USER\",\"ROLE_PRESTA\",\"ROLE_REDAC\",\"ROLE_RESP_EDIT\",\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$TXNVV0ZRUllzZTQ2MGNMNA$EI7CuXVQ7760o8PSRtlUoCJ/MEZaNbegkJbQpA0wls0', 'DelaPereix', 'Catherine', NULL, NULL, NULL, NULL),
(7, 'Lily@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$czlhWDMzY1NhRjJLWVVvTg$3UsS8b6th3jKePCAU/DXvHkzYo62sc4rgYhHQ4HmVO4', 'Martin', 'Lily', 32567, 'Rue du souk', 603229235, NULL);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article_categorie`
--
ALTER TABLE `article_categorie`
  ADD CONSTRAINT `FK_934886107294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_93488610BCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `FK_67F068BC7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
