-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 15 sep. 2023 à 14:17
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `b3_tinder_chaussette`
--

-- --------------------------------------------------------

--
-- Structure de la table `couleur`
--

CREATE TABLE `couleur` (
  `id` int(11) NOT NULL,
  `couleur` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `couleur`
--

INSERT INTO `couleur` (`id`, `couleur`) VALUES
(1, 'rouge'),
(2, 'vert'),
(3, 'grise'),
(4, 'Vert Foncé'),
(5, 'Bleu'),
(6, 'Noir'),
(7, 'Jaune'),
(8, 'Gris'),
(9, 'Orange'),
(10, 'Violet'),
(11, 'Marron'),
(12, 'Blanc');

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

CREATE TABLE `marque` (
  `id` int(11) NOT NULL,
  `marque` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`id`, `marque`) VALUES
(1, 'Nike'),
(2, 'Addidas'),
(3, 'Artengo'),
(4, 'Puma'),
(5, 'Calvin Klein');

-- --------------------------------------------------------

--
-- Structure de la table `paire`
--

CREATE TABLE `paire` (
  `id` int(11) NOT NULL,
  `ID_U` varchar(50) NOT NULL,
  `ID_M` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `taille`
--

CREATE TABLE `taille` (
  `id` int(11) NOT NULL,
  `taille` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `taille`
--

INSERT INTO `taille` (`id`, `taille`) VALUES
(1, '37'),
(2, '38'),
(3, '39'),
(4, '40'),
(5, '41'),
(6, '42'),
(7, '43'),
(8, '44'),
(9, '45'),
(10, '46');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `role` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `taille` varchar(50) NOT NULL,
  `marque` varchar(50) NOT NULL,
  `couleur` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `role`, `password`, `email`, `taille`, `marque`, `couleur`, `image`, `description`) VALUES
(6, 'Paul', '', 'test', 'r.marcelli31@gmail.com', '42', 'Artengo', 'Vert Foncé', 'images/6504039cbf854_chaussette-unie-verte-homme-femme-portugal.jpg', 'Bonjour, je suis Paul, je vis depuis 10ans dans le même tirroir et depuis peu j\'ai perdu ma moitié. Aujourd\'hui je suis à la recherche d\'une chaussette qui me correspondra et avec qui je me partegerai ma vie.'),
(7, 'Tibo', '', 'test', 'tibo@gmail.com', '40', 'Puma', 'Bleu', 'images/650406c3855e9_chausette 2.png', 'Bonjour je m\'appelle Tibo, j\'ai 17ans et je suis à la recherche d\'une chaussette pour m\'amuser et passer de bon moment. Je suis passionné de football et de pétanque. Je souhaite devenir archéologue et voyager dans le monde entier.'),
(8, 'Louis', '', 'test', 'louis@gmail.com', '41', 'Calvin Klein', 'Noir', 'images/650409098f767_chaussette 1.png', 'Jeune, rigolo, bon vivant je suis à la recherche d\'une chaussette avec qui je pourrais m\'amuser, sortir et profiter de la vie. '),
(9, 'Louise', '', 'test', 'louise@gmail.com', '43', 'Puma', 'Jaune', 'images/65040a1981491_chaussette 5.png', 'Bonjour, je suis louise, j\'ai 20ans, je suis en 3e année de Développement web. Souriante, gentille et rigolote je cherche quelqu\'un capable de me faire rire.'),
(11, 'Fabienne', '', 'test', 'fabienne@gmail.com', '45', 'Kappa', 'Orange', 'images/65040c17f3ea9_chaussette orange.jpg', 'Hello, je suis Fabienne, je vis en île-de-france, je suis là pour m\'amuser découvrir du monde et prendre du plaisir. Je ne me prends pas la tête et je ne veux pas de problème. '),
(13, 'Paulette', '', 'test', 'paulette@gmail.com', '41', 'Puma', 'Bleu', 'images/650446d170602_bleu.png', 'Bonjour, j\'aimerais faire connaissance avec quelqu\'un qui me ressemble et qui sera capable de me rendre heureuse. Rester dans un placard seul n\'est plus possible, j\'ai besoin de quelqu\'un.'),
(14, 'Fernand', '', 'test', 'fernand@gmail.com', '43', 'Puma', 'Bleu', 'images/65040f68aa72c_chaussette-bleu.png', 'Bonjour mes chères compatriote, je suis fermier depuis toujours, c\'est vraiment quelque chose qui me plaît et qui me fait me lever chaque jour. Je suis inscrit ici parce que j\'ai perdu ma moitié manger par une vache...'),
(15, 'Noémie', '', 'test', 'noemie@gmail.com', '38', 'Nike', 'Noir', 'images/65041038ee615_chaussette 4.png', 'Coucou, je viens d\'un beau quartier, en étude de littérature depuis 4 ans à Paris, mais je me sens seule, je veux faire connaissance pour enlever ce sentiment.'),
(16, 'Vivien', '', 'test', 'vivien@gmail.com', '41', 'Puma', 'Violet', 'images/65041261d4776_chaussette 13.png', 'Salut, je suis en école de mécanique, j\'ai 24 ans et je compte devenir mécanicien pour une grande entreprise comme porsche par exemple. '),
(17, 'Silvie', '', 'test', 'silvie@gmail.com', '39', 'Nike', 'Gris', 'images/65041448104b9_chaussette grise.jpg', 'Hello, je suis Silvie, je suis en première année de WebDesign, je suis passionnée de moto et de cheval. Je n\'ai jamais été accompagné et je veux vite changer ça'),
(18, 'Tonton', '', 'test', 'tonton@gmail.com', '42', 'Calvin Klein', 'rouge', 'images/650447a0d01e2_rougetonton.png', 'Bonjour, je m\'appelle Tony mais tout le monde me surnomme Tonton, parce que je suis devenu tonton à l\'âge de 6 ans grâce a ma grande sœur. J\'aime le chocolat.'),
(19, 'Joel', '', 'test', 'joel@gmail.com', '42', 'Calvin Klein', 'rouge', 'images/650415bf19c4b_1d8a333f52720829f2387f1509d38598_dcb25453-0fa3-421a-b31f-fe456208ae8e_430x.jpg', 'Je m\'appelle joel, j\'ai 26ans, j\'aime beaucoup les bonbons, les enfants et me promener dans le parc. Le soir j\'aime regarder des films d\'horreur et plus particulièrement les films d\'horreur. '),
(20, 'Kevin', '', 'test', 'kevin@gmail.com', '42', 'Calvin Klein', 'rouge', 'images/65041655209d5_98d674ed5d408ea86eaf06d07d329bb4_430x.jpg', 'Salut salut, je suis Kévin, je viens de Belgique et j\'aime beaucoup les frites. J\'ai arrêté mes études à 16 ans pour réaliser ma passion ouvrir une  Baraque à frite. Je suis à la recherche d\'une chaussette comme moi.'),
(21, 'Elon', '', 'test', 'elon@gmail.com', '41', 'Puma', 'Bleu', 'images/650417e212c9d_222958a5c4554a43af23c640df8afa64_540x.jpg', 'Hello, je suis Elon, je suis fan de l\'espace et mon rêve c\'est de pouvoir aller sur la lune c\'est pour ça que je réalise des études d\'astronomie. J\'ai peur de rien dans la vie, je me surpasse chaque jour. Je suis inscrit sur ce site pour trouver quelqu\'un qui me portera vers le haut.'),
(23, 'Pierre ', '', 'test', 'pierre@gmail.com', '43', 'Nike', 'vert', 'images/65041a03dda62_f05fde5238b3fb070616df3efe4a21d9_430x.jpg', 'Bonjour, je suis Pierre, j\'ai 18ans et je vis à Paris. Je suis fan de sport automobile et plus particulièrement de F1, mon coureur préféré c\'est Esteban Ocon. Si tu veux passer ton dimanche matin à regarder la F1 n\'hésite pas.'),
(24, 'Charlie', '', 'test', 'charlie@gmail.com', '39', 'Addidas', 'Jaune', 'images/65041b80d9164_HYSSMU01X3A1_1.jpg', 'Yop, je suis Charlie, tu peux m\'appeler Charlo. Je suis actuellement en Bts audio-visuel afin de réaliser mon rêve devenir réalisateur. J\'ai plein d\'idée en tête mais il y un film que je voudrait tellement réaliser c\'est les Schtroumpfs. Tu es plus Schtroumpfs grogon ou Schtroumpfs à lunettes ?'),
(25, 'Lina', '', 'test', 'lina@gmail.com', '41', 'Puma', 'Bleu', 'images/65041c3eed610_HYSCAN01X3A8_1.jpg', 'Coucou mes petits lou, c\'est lina, comment vas-tu ? Je suis toujours de bonne humeur et j\'aime la vie. Je fais rien en ce moment alors que j\'ai 20 ans hihi. Tu veux être ma paire ? Stp ? Vite ? Aaaaaaaaaaaaaaaaaaaaaaaaaa'),
(26, 'Toad', '', 'test', 'toad@gmail.com', '42', 'Calvin Klein', 'rouge', 'images/65041f3fdbe93_HYSCS01X3A11_1.jpg', 'Yohou, je m\'appelle Toad, mon meilleure ami c\'est Mario. J\'ai 22 ans et je vis dans un château à Pierrefonds. Je suis à la recherche de ma future Peach qui me rendra le plus heureux du monde.'),
(28, 'Jean', '', 'test', 'jean@gmail.com', '42', 'Calvin Klein', 'rouge', 'images/6504212bcb11b_rouge.png', 'Coucou, j\'aime beaucoup Noel, boire du coca rouge et manger de la buche. Chaque hiver, je travail chez Jardiland pour fournir des sapins de noël. Je suis à la recherche d\'une paire qui me réchauffera le cœur comme un petit feu de cheminée.'),
(30, 'Mylène', '', 'test', 'mylene@gmail.com', '42', 'Calvin Klein', 'rouge', 'images/6504221f48de3_rouge.png', 'bonjour ne m\'appelle pas, je ne suis pas et je ne serais pas la'),
(31, 'Bastien', '', 'test', 'bastien@gmail.com', '41', 'Puma', 'Bleu', 'images/650445f3ba16d_65040f68aa72c_chaussette-bleu.png', 'Yooooo, je suis Bastien, j\'ai 20ans et je vis dans le Nord de la France. Je n\'aime pas sortir, j\'aime pas les personnes et les gens qui sortent. Je veux juste quelqu\'un avec qui regarder netflix et rien faire de la journée. Salut.'),
(32, 'Dumé', '', 'test', 'dume@gmail.com', '43', 'Addidas', 'Blanc', 'images/6504239b96ded_corse.png', 'uuuuu, je suis Corse. Soit tu acceptes soit tu acceptes pas c\'est pas grave. J\'ai beaucoup de fusil chez moi alors attention à toi. Si tu me prends pour je ne sais pas quoi je peux vite m\'énerver. Appart ça, j\'ai un grand coeur. '),
(33, 'lou', '', 'test', 'lou@gmail.com', '41', 'Puma', 'Bleu', 'images/650424127e72f_bleu.jpg', 'Bonjour, j\'aime beaucoup jouer au loup garou avec mes amis, l\'histoire qui m\'a traumatisé était le petit chaperon rouge...  Mon animal préféré est le loup mais attention à ne pas trop crier au loup.'),
(34, 'Snoop', '', 'test', 'snoop@gmail.com', '38', 'Nike', 'Noir', 'images/650424f835879_HYSCAN01X3A2_3.jpg', 'Yo man, j\'ai 23ans, je mange beaucoup de sandwitch végétarien parce que je ne mange pas de viande, j\'aime trainé à la campagne pour sentir l\'odeur de l\'herbe. '),
(35, 'bob', '', 'test', 'bob@gmail.com', '43', 'Addidas', 'grise', 'images/6504316618020_98d674ed5d408ea86eaf06d07d329bb4_430x-removebg-preview.png', 'test');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `couleur`
--
ALTER TABLE `couleur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `marque`
--
ALTER TABLE `marque`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `paire`
--
ALTER TABLE `paire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `taille`
--
ALTER TABLE `taille`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `couleur`
--
ALTER TABLE `couleur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `marque`
--
ALTER TABLE `marque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `paire`
--
ALTER TABLE `paire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT pour la table `taille`
--
ALTER TABLE `taille`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
