-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2024 at 07:48 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_deduplication`
--

-- --------------------------------------------------------

--
-- Table structure for table `chunks_information`
--

CREATE TABLE `chunks_information` (
  `id` int(11) NOT NULL,
  `chunk_hash` varchar(5000) NOT NULL,
  `chunk_path` varchar(5000) NOT NULL,
  `file_directory` varchar(5000) NOT NULL,
  `file_original_name` varchar(5000) NOT NULL,
  `file_extension` varchar(255) NOT NULL,
  `userName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `chunks_information`
--

INSERT INTO `chunks_information` (`id`, `chunk_hash`, `chunk_path`, `file_directory`, `file_original_name`, `file_extension`, `userName`) VALUES
(123, 'bc0d49ab5fb3f62361d1e5d34aeac548', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\317297159\\3172971591.pdf', '317297159', 'Resume-Pramod Patil-v2', 'pdf', 'admin'),
(127, '4ae0dc9ede02fbb35652cba6a8f69964', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\326700000\\3267000001.jpg', '326700000', 'IMG-20231115-WA0035', 'jpg', 'omkar'),
(128, '004a8f3b7efbafc40dc8b611a1f648b6', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\326700000\\3267000002.jpg', '326700000', 'IMG-20231115-WA0035', 'jpg', 'omkar'),
(129, 'bbe1dabd19059a3213bde24816962dea', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\326700000\\3267000003.jpg', '326700000', 'IMG-20231115-WA0035', 'jpg', 'omkar'),
(130, '4dea3cc277614f1ec3d2db1675b91c0e', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\326711384\\3267113841.jpg', '326711384', 'IMG-20231115-WA0034', 'jpg', 'omkar'),
(131, 'e0ca3cf717384f22a230d00341b2ec83', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\326711384\\3267113842.jpg', '326711384', 'IMG-20231115-WA0034', 'jpg', 'omkar'),
(132, '93cd8d1336cc450422d9072b9e13fc42', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\326711384\\3267113843.jpg', '326711384', 'IMG-20231115-WA0034', 'jpg', 'omkar'),
(136, 'f4a592b0ab258cf93fab652934ce1a43', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\326758669\\3267586691.docx', '326758669', 'Project cover page', 'docx', 'pramod'),
(144, 'bc0d49ab5fb3f62361d1e5d34aeac548', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\317297159\\3172971591.pdf', '1040500158', 'Resume-Pramod Patil-v2', 'pdf', 'admin'),
(145, '4dea3cc277614f1ec3d2db1675b91c0e', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\326711384\\3267113841.jpg', '1040703918', 'IMG-20231115-WA0034', 'jpg', 'omkar'),
(146, 'e0ca3cf717384f22a230d00341b2ec83', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\326711384\\3267113842.jpg', '1040703918', 'IMG-20231115-WA0034', 'jpg', 'omkar'),
(147, '93cd8d1336cc450422d9072b9e13fc42', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\326711384\\3267113843.jpg', '1040703918', 'IMG-20231115-WA0034', 'jpg', 'omkar'),
(148, '3ce9499d4a25e6717556a26a96f81590', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041189253\\10411892531.jpg', '1041189253', 'IMG20230520113139', 'jpg', 'omkar'),
(149, '33ed7fa86d1df60a30277ab21671693f', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041189253\\10411892532.jpg', '1041189253', 'IMG20230520113139', 'jpg', 'omkar'),
(150, '76b6b32e34ecc5c49e25bd9245c60bb9', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041189253\\10411892533.jpg', '1041189253', 'IMG20230520113139', 'jpg', 'omkar'),
(151, '491a2835d62266b790c03b03b4346776', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041189253\\10411892534.jpg', '1041189253', 'IMG20230520113139', 'jpg', 'omkar'),
(152, '7467ee1b945179a01e7e0d67562b07e2', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041189253\\10411892535.jpg', '1041189253', 'IMG20230520113139', 'jpg', 'omkar'),
(153, '9eb4012f9120e182ed0c683d27a269fd', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041189253\\10411892536.jpg', '1041189253', 'IMG20230520113139', 'jpg', 'omkar'),
(154, '8d3e968104cc3ceb0a0769b13063879c', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041189253\\10411892537.jpg', '1041189253', 'IMG20230520113139', 'jpg', 'omkar'),
(155, '21b254ebd355bbf7fb9c95f87c418353', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041189253\\10411892538.jpg', '1041189253', 'IMG20230520113139', 'jpg', 'omkar'),
(156, '6b75c0589cd321db94e58c1bbf0c4726', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041189253\\10411892539.jpg', '1041189253', 'IMG20230520113139', 'jpg', 'omkar'),
(157, '7dc5c664b1de3b985adca3e6aa67473c', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041258132\\10412581321.pdf', '1041258132', '1641884695_C2086 (1)', 'pdf', 'omkar'),
(158, '99e7344554fe8b7ad7bdd25dd931f9ea', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041258132\\10412581322.pdf', '1041258132', '1641884695_C2086 (1)', 'pdf', 'omkar'),
(159, 'c8fce571dbb3219ddce04acabf91de8c', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\10412861461.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(160, '4537ec1d812171288fb01a582cba137d', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\10412861462.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(161, '4bd52082b90c9268cea580fd6c7cc36d', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\10412861463.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(162, '632f52f3bffcc8e159f16b44871a1c3b', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\10412861464.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(163, '1641943df6ad7d271975e0d247cf3ad9', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\10412861465.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(164, 'fb6793ec885298cc30ea3154ac799eba', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\10412861466.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(165, 'f88c1fae31b98fb3b47d4bbb1898d9b5', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\10412861467.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(166, '9598d30c3e429d924854991c437f732f', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\10412861468.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(167, '00058937671477e487292bdbc63c9c31', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\10412861469.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(168, '6231fe0af5554f53125f4d954aee6d3b', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614610.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(169, '93af4ed06d42d208fb3074f0aab84898', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614611.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(170, 'f6426949f4e93ee34a11f92be9b0b01d', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614612.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(171, '4711ff949d805572d4a0e54ad7588049', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614613.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(172, 'fa2e91d6b54610bbd75708bebbf0c85c', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614614.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(173, '37c9da83abb40d782853880d63d12ea4', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614615.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(174, 'ef5214be3a6818e9b474a55fcd6b4feb', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614616.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(175, '1c73e555a3f37167f10aa6dc631f8938', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614617.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(176, '1f89611563b4c6e21aeac52e2cc4e5e1', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614618.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(177, 'e21b68f1a6bf3232581eec7890f18c30', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614619.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(178, '72b824828c1afb791e01391114cbe331', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614620.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(179, '7259d9642dc57eb7a6ff658e44786e63', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614621.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(180, '314e6b36fbea703dbac008c97b8f32e2', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614622.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(181, '3fd1f7f9a9d737a5d2c170e95969e2e7', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614623.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(182, '445bc4f5968f14b820d825028eadc3b1', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614624.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(183, '0e1c4680e5d8ef45078443d081aeca2c', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614625.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(184, 'e17bfdc76ab8d24aa6831958681c5bba', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614626.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(185, 'b04c4723baa4926d9c1832ed774b0729', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614627.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(186, 'd45e49d7d4ef412050d41bd362a0da94', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614628.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(187, '3c12dea08d976da8d00a04e9ecb19c1a', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614629.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(188, '32ebcabee8f50debb3963bd13d56af1d', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614630.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(189, '05bc417a62b52c62ea48375433371070', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614631.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(190, '6eada5c3923e2a92ab2c2313e27796c6', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614632.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(191, '1ff9f7647c575e3e19203d017e7215f7', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614633.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(192, 'fe745da6dcd089546b05fdb516ae603a', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614634.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(193, '3036e0182d51d4c59b686d4970f93c9a', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614635.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(194, '59e3181be9ac797dcdebaa16e7f6b168', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614636.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(195, '589db4927e71e2b3c57ec4ba1228ef58', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614637.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(196, '657b22758f035c8bdb132da9ed53aa04', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614638.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(197, '077ab881f9d48d8bb4032d0c642634de', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614639.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(198, '3acf1fc8fec2d2ad8cf1b2d8479cf5ce', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614640.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(199, '89e81fe9e4f2eca8674ba18cfcc972e5', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614641.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(200, 'ef515fe1acb6f963a3777e26f8f220e4', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614642.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(201, 'fba2e9b4a4013f486bc7418062f89565', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614643.png', '1041286146', 'IMG20230520113139', 'png', 'omkar'),
(202, 'a1c613530ebf4adfa15a1d28b29b1b2d', 'C:\\Users\\Pramod Patil\\Desktop\\temp\\1041286146\\104128614644.png', '1041286146', 'IMG20230520113139', 'png', 'omkar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chunks_information`
--
ALTER TABLE `chunks_information`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chunks_information`
--
ALTER TABLE `chunks_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
