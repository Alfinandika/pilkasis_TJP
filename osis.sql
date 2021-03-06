-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 30 Sep 2016 pada 03.46
-- Versi Server: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `osis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'adminku123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `calon`
--

CREATE TABLE IF NOT EXISTS `calon` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nomor_urut` int(10) NOT NULL,
  `nama_ketua` varchar(100) NOT NULL,
  `nama_wakil` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `suara` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `calon`
--

INSERT INTO `calon` (`id`, `nomor_urut`, `nama_ketua`, `nama_wakil`, `foto`, `suara`) VALUES
(1, 1, 'TRIA NOVA DEWI', 'DENY ANANTA P', '1.jpg', 0),
(2, 2, 'FRISTHI NANDA W', 'ADAM JIHAT W', '2.jpg', 0),
(3, 3, 'EDO NOVIANTO', 'AMELIA PUTRI AGUNG', '3.jpg', 0),
(4, 4, 'RIO ADI', 'ANISA', '4.jpg', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `username`
--

CREATE TABLE IF NOT EXISTS `username` (
  `kode` int(100) NOT NULL,
  `status` int(2) NOT NULL,
  `pilihan` int(2) NOT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `username`
--

INSERT INTO `username` (`kode`, `status`, `pilihan`) VALUES
(12358, 0, 0),
(12369, 0, 0),
(12396, 0, 0),
(12489, 0, 0),
(12495, 0, 0),
(12564, 0, 0),
(12569, 0, 0),
(12579, 0, 0),
(12638, 0, 0),
(12647, 0, 0),
(12648, 0, 0),
(12659, 0, 0),
(12674, 0, 0),
(12684, 0, 0),
(12738, 0, 0),
(12743, 0, 0),
(12769, 0, 0),
(12785, 0, 0),
(12789, 0, 0),
(12798, 0, 0),
(12835, 0, 0),
(12845, 0, 0),
(12847, 0, 0),
(12849, 0, 0),
(12859, 0, 0),
(12863, 0, 0),
(12894, 0, 0),
(12943, 0, 0),
(12947, 0, 0),
(12956, 0, 0),
(12973, 0, 0),
(12974, 0, 0),
(12984, 0, 0),
(13258, 0, 0),
(13279, 0, 0),
(13298, 0, 0),
(13426, 0, 0),
(13429, 0, 0),
(13457, 0, 0),
(13459, 0, 0),
(13465, 0, 0),
(13495, 0, 0),
(13548, 0, 0),
(13574, 0, 0),
(13576, 0, 0),
(13582, 0, 0),
(13625, 0, 0),
(13645, 0, 0),
(13654, 0, 0),
(13754, 0, 0),
(13762, 0, 0),
(13789, 0, 0),
(13825, 0, 0),
(13827, 0, 0),
(13842, 0, 0),
(13849, 0, 0),
(13857, 0, 0),
(13864, 0, 0),
(13875, 0, 0),
(13895, 0, 0),
(13925, 0, 0),
(13927, 0, 0),
(13962, 0, 0),
(13974, 0, 0),
(13985, 0, 0),
(14253, 0, 0),
(14259, 0, 0),
(14263, 0, 0),
(14279, 0, 0),
(14372, 0, 0),
(14379, 0, 0),
(14562, 0, 0),
(14567, 0, 0),
(14586, 0, 0),
(14623, 0, 0),
(14632, 0, 0),
(14653, 0, 0),
(14673, 0, 0),
(14682, 0, 0),
(14693, 0, 0),
(14695, 0, 0),
(14758, 0, 0),
(14823, 0, 0),
(14825, 0, 0),
(14872, 0, 0),
(14897, 0, 0),
(14927, 0, 0),
(14937, 0, 0),
(14953, 0, 0),
(14958, 0, 0),
(15236, 0, 0),
(15248, 0, 0),
(15267, 0, 0),
(15293, 0, 0),
(15298, 0, 0),
(15349, 0, 0),
(15369, 0, 0),
(15374, 0, 0),
(15432, 0, 0),
(15473, 0, 0),
(15486, 0, 0),
(15683, 0, 0),
(15726, 0, 0),
(15729, 0, 0),
(15739, 0, 0),
(15762, 0, 0),
(15769, 0, 0),
(15796, 0, 0),
(15832, 0, 0),
(15928, 0, 0),
(15964, 0, 0),
(15968, 0, 0),
(15978, 0, 0),
(15984, 0, 0),
(16234, 0, 0),
(16238, 0, 0),
(16243, 0, 0),
(16259, 0, 0),
(16278, 0, 0),
(16287, 0, 0),
(16289, 0, 0),
(16374, 0, 0),
(16429, 0, 0),
(16492, 0, 0),
(16534, 0, 0),
(16573, 0, 0),
(16578, 0, 0),
(16734, 0, 0),
(16759, 0, 0),
(16824, 0, 0),
(16835, 0, 0),
(16842, 0, 0),
(16843, 0, 0),
(16853, 0, 0),
(16854, 0, 0),
(16895, 0, 0),
(16928, 0, 0),
(16948, 0, 0),
(16982, 0, 0),
(17264, 0, 0),
(17284, 0, 0),
(17285, 0, 0),
(17286, 0, 0),
(17295, 0, 0),
(17324, 0, 0),
(17325, 0, 0),
(17328, 0, 0),
(17345, 0, 0),
(17362, 0, 0),
(17389, 0, 0),
(17436, 0, 0),
(17486, 0, 0),
(17489, 0, 0),
(17492, 0, 0),
(17546, 0, 0),
(17593, 0, 0),
(17623, 0, 0),
(17625, 0, 0),
(17635, 0, 0),
(17649, 0, 0),
(17652, 0, 0),
(17698, 0, 0),
(17824, 0, 0),
(17835, 0, 0),
(17896, 0, 0),
(17932, 0, 0),
(17948, 0, 0),
(17953, 0, 0),
(17986, 0, 0),
(18239, 0, 0),
(18245, 0, 0),
(18246, 0, 0),
(18269, 0, 0),
(18324, 0, 0),
(18326, 0, 0),
(18356, 0, 0),
(18357, 0, 0),
(18375, 0, 0),
(18427, 0, 0),
(18429, 0, 0),
(18435, 0, 0),
(18462, 0, 0),
(18473, 0, 0),
(18623, 0, 0),
(18632, 0, 0),
(18697, 0, 0),
(18729, 0, 0),
(18926, 0, 0),
(18956, 0, 0),
(19234, 0, 0),
(19236, 0, 0),
(19287, 0, 0),
(19328, 0, 0),
(19357, 0, 0),
(19358, 0, 0),
(19364, 0, 0),
(19368, 0, 0),
(19375, 0, 0),
(19385, 0, 0),
(19386, 0, 0),
(19427, 0, 0),
(19432, 0, 0),
(19462, 0, 0),
(19475, 0, 0),
(19485, 0, 0),
(19528, 0, 0),
(19538, 0, 0),
(19547, 0, 0),
(19568, 0, 0),
(19583, 0, 0),
(19638, 0, 0),
(19654, 0, 0),
(19685, 0, 0),
(19723, 0, 0),
(19748, 0, 0),
(19752, 0, 0),
(19763, 0, 0),
(19782, 0, 0),
(19823, 0, 0),
(19842, 0, 0),
(19852, 0, 0),
(19872, 0, 0),
(19874, 0, 0),
(21346, 0, 0),
(21347, 0, 0),
(21356, 0, 0),
(21359, 0, 0),
(21387, 0, 0),
(21394, 0, 0),
(21436, 0, 0),
(21439, 0, 0),
(21457, 0, 0),
(21549, 0, 0),
(21573, 0, 0),
(21586, 0, 0),
(21657, 0, 0),
(21695, 0, 0),
(21698, 0, 0),
(21736, 0, 0),
(21738, 0, 0),
(21768, 0, 0),
(21786, 0, 0),
(21798, 0, 0),
(21839, 0, 0),
(21849, 0, 0),
(21853, 0, 0),
(21859, 0, 0),
(21867, 0, 0),
(21873, 0, 0),
(21935, 0, 0),
(21963, 0, 0),
(21973, 0, 0),
(21974, 0, 0),
(21985, 0, 0),
(23159, 0, 0),
(23419, 0, 0),
(23457, 0, 0),
(23478, 0, 0),
(23491, 0, 0),
(23495, 0, 0),
(23517, 0, 0),
(23648, 0, 0),
(23674, 0, 0),
(23675, 0, 0),
(23714, 0, 0),
(23716, 0, 0),
(23764, 0, 0),
(23865, 0, 0),
(23874, 0, 0),
(23879, 0, 0),
(23894, 0, 0),
(23947, 0, 0),
(23951, 0, 0),
(23958, 0, 0),
(23961, 0, 0),
(23964, 0, 0),
(23967, 0, 0),
(23974, 0, 0),
(23981, 0, 0),
(23985, 0, 0),
(23986, 0, 0),
(24153, 0, 0),
(24175, 0, 0),
(24193, 0, 0),
(24195, 0, 0),
(24367, 0, 0),
(24396, 0, 0),
(24516, 0, 0),
(24519, 0, 0),
(24573, 0, 0),
(24593, 0, 0),
(24597, 0, 0),
(24618, 0, 0),
(24683, 0, 0),
(24719, 0, 0),
(24795, 0, 0),
(24798, 0, 0),
(24851, 0, 0),
(24865, 0, 0),
(24876, 0, 0),
(24879, 0, 0),
(24893, 0, 0),
(24913, 0, 0),
(24917, 0, 0),
(24935, 0, 0),
(24953, 0, 0),
(24956, 0, 0),
(24958, 0, 0),
(24961, 0, 0),
(24986, 0, 0),
(25143, 0, 0),
(25178, 0, 0),
(25314, 0, 0),
(25371, 0, 0),
(25384, 0, 0),
(25387, 0, 0),
(25417, 0, 0),
(25476, 0, 0),
(25487, 0, 0),
(25643, 0, 0),
(25678, 0, 0),
(25679, 0, 0),
(25694, 0, 0),
(25738, 0, 0),
(25794, 0, 0),
(25796, 0, 0),
(25836, 0, 0),
(25863, 0, 0),
(25891, 0, 0),
(25918, 0, 0),
(25948, 0, 0),
(25968, 0, 0),
(25984, 0, 0),
(26134, 0, 0),
(26143, 0, 0),
(26195, 0, 0),
(26198, 0, 0),
(26345, 0, 0),
(26354, 0, 0),
(26375, 0, 0),
(26378, 0, 0),
(26415, 0, 0),
(26435, 0, 0),
(26519, 0, 0),
(26531, 0, 0),
(26534, 0, 0),
(26537, 0, 0),
(26571, 0, 0),
(26578, 0, 0),
(26584, 0, 0),
(26593, 0, 0),
(26745, 0, 0),
(26785, 0, 0),
(26795, 0, 0),
(26814, 0, 0),
(26817, 0, 0),
(26873, 0, 0),
(26917, 0, 0),
(26931, 0, 0),
(26935, 0, 0),
(26954, 0, 0),
(26975, 0, 0),
(27136, 0, 0),
(27139, 0, 0),
(27198, 0, 0),
(27365, 0, 0),
(27394, 0, 0),
(27435, 0, 0),
(27439, 0, 0),
(27468, 0, 0),
(27486, 0, 0),
(27514, 0, 0),
(27591, 0, 0),
(27613, 0, 0),
(27648, 0, 0),
(27654, 0, 0),
(27681, 0, 0),
(27695, 0, 0),
(27845, 0, 0),
(27854, 0, 0),
(27864, 0, 0),
(27891, 0, 0),
(27896, 0, 0),
(27934, 0, 0),
(27956, 0, 0),
(27958, 0, 0),
(27985, 0, 0),
(28134, 0, 0),
(28147, 0, 0),
(28163, 0, 0),
(28173, 0, 0),
(28194, 0, 0),
(28316, 0, 0),
(28357, 0, 0),
(28364, 0, 0),
(28379, 0, 0),
(28435, 0, 0),
(28451, 0, 0),
(28473, 0, 0),
(28564, 0, 0),
(28574, 0, 0),
(28593, 0, 0),
(28596, 0, 0),
(28597, 0, 0),
(28613, 0, 0),
(28619, 0, 0),
(28645, 0, 0),
(28691, 0, 0),
(28694, 0, 0),
(28695, 0, 0),
(28697, 0, 0),
(28713, 0, 0),
(28743, 0, 0),
(28745, 0, 0),
(28769, 0, 0),
(28915, 0, 0),
(28943, 0, 0),
(28953, 0, 0),
(28971, 0, 0),
(28976, 0, 0),
(29138, 0, 0),
(29146, 0, 0),
(29157, 0, 0),
(29165, 0, 0),
(29173, 0, 0),
(29174, 0, 0),
(29176, 0, 0),
(29314, 0, 0),
(29318, 0, 0),
(29346, 0, 0),
(29348, 0, 0),
(29358, 0, 0),
(29368, 0, 0),
(29456, 0, 0),
(29518, 0, 0),
(29548, 0, 0),
(29573, 0, 0),
(29617, 0, 0),
(29634, 0, 0),
(29635, 0, 0),
(29645, 0, 0),
(29648, 0, 0),
(29654, 0, 0),
(29657, 0, 0),
(29675, 0, 0),
(29741, 0, 0),
(29784, 0, 0),
(29785, 0, 0),
(29831, 0, 0),
(29867, 0, 0),
(29871, 0, 0),
(29876, 0, 0),
(31245, 0, 0),
(31267, 0, 0),
(31275, 0, 0),
(31298, 0, 0),
(31429, 0, 0),
(31459, 0, 0),
(31467, 0, 0),
(31479, 0, 0),
(31487, 0, 0),
(31496, 0, 0),
(31524, 0, 0),
(31548, 0, 0),
(31562, 0, 0),
(31582, 0, 0),
(31647, 0, 0),
(31652, 0, 0),
(31695, 0, 0),
(31697, 0, 0),
(31784, 0, 0),
(31794, 0, 0),
(31824, 0, 0),
(31827, 0, 0),
(31859, 0, 0),
(31876, 0, 0),
(31926, 0, 0),
(31927, 0, 0),
(31928, 0, 0),
(31948, 0, 0),
(31958, 0, 0),
(31965, 0, 0),
(31974, 0, 0),
(31987, 0, 0),
(32147, 0, 0),
(32157, 0, 0),
(32159, 0, 0),
(32184, 0, 0),
(32187, 0, 0),
(32196, 0, 0),
(32469, 0, 0),
(32485, 0, 0),
(32489, 0, 0),
(32546, 0, 0),
(32547, 0, 0),
(32549, 0, 0),
(32571, 0, 0),
(32574, 0, 0),
(32578, 0, 0),
(32657, 0, 0),
(32678, 0, 0),
(32684, 0, 0),
(32689, 0, 0),
(32719, 0, 0),
(32761, 0, 0),
(32785, 0, 0),
(32795, 0, 0),
(32798, 0, 0),
(32815, 0, 0),
(32846, 0, 0),
(32847, 0, 0),
(32854, 0, 0),
(32857, 0, 0),
(32864, 0, 0),
(32896, 0, 0),
(32916, 0, 0),
(32956, 0, 0),
(32987, 0, 0),
(34127, 0, 0),
(34129, 0, 0),
(34169, 0, 0),
(34179, 0, 0),
(34215, 0, 0),
(34216, 0, 0),
(34286, 0, 0),
(34291, 0, 0),
(34295, 0, 0),
(34526, 0, 0),
(34528, 0, 0),
(34529, 0, 0),
(34569, 0, 0),
(34576, 0, 0),
(34598, 0, 0),
(34628, 0, 0),
(34715, 0, 0),
(34752, 0, 0),
(34786, 0, 0),
(34815, 0, 0),
(34821, 0, 0),
(34826, 0, 0),
(34872, 0, 0),
(34897, 0, 0),
(34917, 0, 0),
(34918, 0, 0),
(34958, 0, 0),
(34961, 0, 0),
(34972, 0, 0),
(34976, 0, 0),
(35174, 0, 0),
(35189, 0, 0),
(35197, 0, 0),
(35214, 0, 0),
(35241, 0, 0),
(35246, 0, 0),
(35264, 0, 0),
(35284, 0, 0),
(35289, 0, 0),
(35419, 0, 0),
(35427, 0, 0),
(35462, 0, 0),
(35482, 0, 0),
(35628, 0, 0),
(35649, 0, 0),
(35682, 0, 0),
(35712, 0, 0),
(35721, 0, 0),
(35746, 0, 0),
(35768, 0, 0),
(35781, 0, 0),
(35829, 0, 0),
(35847, 0, 0),
(35864, 0, 0),
(35876, 0, 0),
(36157, 0, 0),
(36158, 0, 0),
(36184, 0, 0),
(36192, 0, 0),
(36197, 0, 0),
(36214, 0, 0),
(36219, 0, 0),
(36251, 0, 0),
(36257, 0, 0),
(36281, 0, 0),
(36291, 0, 0),
(36452, 0, 0),
(36512, 0, 0),
(36594, 0, 0),
(36718, 0, 0),
(36745, 0, 0),
(36748, 0, 0),
(36782, 0, 0),
(36819, 0, 0),
(36854, 0, 0),
(36857, 0, 0),
(36917, 0, 0),
(36941, 0, 0),
(37142, 0, 0),
(37148, 0, 0),
(37152, 0, 0),
(37159, 0, 0),
(37165, 0, 0),
(37168, 0, 0),
(37169, 0, 0),
(37245, 0, 0),
(37264, 0, 0),
(37268, 0, 0),
(37285, 0, 0),
(37294, 0, 0),
(37486, 0, 0),
(37489, 0, 0),
(37498, 0, 0),
(37521, 0, 0),
(37529, 0, 0),
(37581, 0, 0),
(37586, 0, 0),
(37812, 0, 0),
(37815, 0, 0),
(37825, 0, 0),
(37859, 0, 0),
(37912, 0, 0),
(37914, 0, 0),
(37918, 0, 0),
(37986, 0, 0),
(38152, 0, 0),
(38154, 0, 0),
(38162, 0, 0),
(38169, 0, 0),
(38174, 0, 0),
(38175, 0, 0),
(38176, 0, 0),
(38197, 0, 0),
(38217, 0, 0),
(38279, 0, 0),
(38412, 0, 0),
(38457, 0, 0),
(38462, 0, 0),
(38517, 0, 0),
(38529, 0, 0),
(38541, 0, 0),
(38617, 0, 0),
(38641, 0, 0),
(38691, 0, 0),
(38692, 0, 0),
(38751, 0, 0),
(38754, 0, 0),
(38756, 0, 0),
(38792, 0, 0),
(38796, 0, 0),
(38912, 0, 0),
(38921, 0, 0),
(38957, 0, 0),
(38975, 0, 0),
(39128, 0, 0),
(39146, 0, 0),
(39148, 0, 0),
(39152, 0, 0),
(39176, 0, 0),
(39187, 0, 0),
(39248, 0, 0),
(39278, 0, 0),
(39284, 0, 0),
(39418, 0, 0),
(39427, 0, 0),
(39462, 0, 0),
(39467, 0, 0),
(39476, 0, 0),
(39485, 0, 0),
(39487, 0, 0),
(39514, 0, 0),
(39516, 0, 0),
(39521, 0, 0),
(39568, 0, 0),
(39574, 0, 0),
(39615, 0, 0),
(39617, 0, 0),
(39627, 0, 0),
(39671, 0, 0),
(39687, 0, 0),
(39721, 0, 0),
(39724, 0, 0),
(39752, 0, 0),
(39754, 0, 0),
(39758, 0, 0),
(39764, 0, 0),
(39846, 0, 0),
(39857, 0, 0),
(39872, 0, 0),
(41236, 0, 0),
(41237, 0, 0),
(41256, 0, 0),
(41267, 0, 0),
(41285, 0, 0),
(41297, 0, 0),
(41328, 0, 0),
(41358, 0, 0),
(41359, 0, 0),
(41382, 0, 0),
(41397, 0, 0),
(41532, 0, 0),
(41568, 0, 0),
(41572, 0, 0),
(41578, 0, 0),
(41627, 0, 0),
(41697, 0, 0),
(41735, 0, 0),
(41753, 0, 0),
(41763, 0, 0),
(41768, 0, 0),
(41829, 0, 0),
(41857, 0, 0),
(41872, 0, 0),
(41876, 0, 0),
(41923, 0, 0),
(41927, 0, 0),
(41983, 0, 0),
(41985, 0, 0),
(42138, 0, 0),
(42167, 0, 0),
(42173, 0, 0),
(42186, 0, 0),
(42319, 0, 0),
(42359, 0, 0),
(42367, 0, 0),
(42375, 0, 0),
(42567, 0, 0),
(42583, 0, 0),
(42675, 0, 0),
(42689, 0, 0),
(42739, 0, 0),
(42753, 0, 0),
(42761, 0, 0),
(42816, 0, 0),
(42861, 0, 0),
(42865, 0, 0),
(42935, 0, 0),
(42978, 0, 0),
(43126, 0, 0),
(43129, 0, 0),
(43159, 0, 0),
(43162, 0, 0),
(43186, 0, 0),
(43195, 0, 0),
(43217, 0, 0),
(43265, 0, 0),
(43268, 0, 0),
(43281, 0, 0),
(43295, 0, 0),
(43572, 0, 0),
(43586, 0, 0),
(43596, 0, 0),
(43612, 0, 0),
(43671, 0, 0),
(43691, 0, 0),
(43692, 0, 0),
(43716, 0, 0),
(43726, 0, 0),
(43761, 0, 0),
(43762, 0, 0),
(43795, 0, 0),
(43897, 0, 0),
(43957, 0, 0),
(43968, 0, 0),
(43982, 0, 0),
(43986, 0, 0),
(45129, 0, 0),
(45163, 0, 0),
(45187, 0, 0),
(45236, 0, 0),
(45239, 0, 0),
(45287, 0, 0),
(45291, 0, 0),
(45296, 0, 0),
(45321, 0, 0),
(45326, 0, 0),
(45367, 0, 0),
(45376, 0, 0),
(45381, 0, 0),
(45387, 0, 0),
(45397, 0, 0),
(45613, 0, 0),
(45623, 0, 0),
(45628, 0, 0),
(45632, 0, 0),
(45673, 0, 0),
(45698, 0, 0),
(45712, 0, 0),
(45728, 0, 0),
(45736, 0, 0),
(45769, 0, 0),
(45827, 0, 0),
(45829, 0, 0),
(45863, 0, 0),
(45869, 0, 0),
(45876, 0, 0),
(45932, 0, 0),
(45938, 0, 0),
(46182, 0, 0),
(46187, 0, 0),
(46197, 0, 0),
(46259, 0, 0),
(46278, 0, 0),
(46289, 0, 0),
(46298, 0, 0),
(46319, 0, 0),
(46321, 0, 0),
(46352, 0, 0),
(46372, 0, 0),
(46381, 0, 0),
(46382, 0, 0),
(46389, 0, 0),
(46531, 0, 0),
(46532, 0, 0),
(46589, 0, 0),
(46597, 0, 0),
(46723, 0, 0),
(46728, 0, 0),
(46752, 0, 0),
(46759, 0, 0),
(46781, 0, 0),
(46832, 0, 0),
(46872, 0, 0),
(46873, 0, 0),
(46892, 0, 0),
(46952, 0, 0),
(47128, 0, 0),
(47152, 0, 0),
(47158, 0, 0),
(47168, 0, 0),
(47185, 0, 0),
(47219, 0, 0),
(47236, 0, 0),
(47238, 0, 0),
(47263, 0, 0),
(47329, 0, 0),
(47365, 0, 0),
(47369, 0, 0),
(47382, 0, 0),
(47519, 0, 0),
(47538, 0, 0),
(47563, 0, 0),
(47568, 0, 0),
(47598, 0, 0),
(47682, 0, 0),
(47685, 0, 0),
(47692, 0, 0),
(47816, 0, 0),
(47831, 0, 0),
(47925, 0, 0),
(47932, 0, 0),
(47951, 0, 0),
(48137, 0, 0),
(48152, 0, 0),
(48157, 0, 0),
(48165, 0, 0),
(48169, 0, 0),
(48175, 0, 0),
(48179, 0, 0),
(48196, 0, 0),
(48216, 0, 0),
(48217, 0, 0),
(48256, 0, 0),
(48269, 0, 0),
(48276, 0, 0),
(48296, 0, 0),
(48317, 0, 0),
(48325, 0, 0),
(48327, 0, 0),
(48352, 0, 0),
(48372, 0, 0),
(48375, 0, 0),
(48391, 0, 0),
(48396, 0, 0),
(48512, 0, 0),
(48531, 0, 0),
(48532, 0, 0),
(48576, 0, 0),
(48596, 0, 0),
(48597, 0, 0),
(48617, 0, 0),
(48715, 0, 0),
(48716, 0, 0),
(48723, 0, 0),
(48753, 0, 0),
(48796, 0, 0),
(48926, 0, 0),
(48932, 0, 0),
(48936, 0, 0),
(48952, 0, 0),
(48956, 0, 0),
(48967, 0, 0),
(48971, 0, 0),
(49125, 0, 0),
(49127, 0, 0),
(49172, 0, 0),
(49218, 0, 0),
(49258, 0, 0),
(49327, 0, 0),
(49378, 0, 0),
(49382, 0, 0),
(49526, 0, 0),
(49532, 0, 0),
(49561, 0, 0),
(49562, 0, 0),
(49568, 0, 0),
(49615, 0, 0),
(49627, 0, 0),
(49631, 0, 0),
(49673, 0, 0),
(49678, 0, 0),
(49687, 0, 0),
(49721, 0, 0),
(49728, 0, 0),
(49738, 0, 0),
(49752, 0, 0),
(49851, 0, 0),
(49856, 0, 0),
(51236, 0, 0),
(51248, 0, 0),
(51273, 0, 0),
(51284, 0, 0),
(51287, 0, 0),
(51293, 0, 0),
(51294, 0, 0),
(51327, 0, 0),
(51367, 0, 0),
(51374, 0, 0),
(51378, 0, 0),
(51398, 0, 0),
(51423, 0, 0),
(51426, 0, 0),
(51432, 0, 0),
(51479, 0, 0),
(51623, 0, 0),
(51642, 0, 0),
(51678, 0, 0),
(51687, 0, 0),
(51742, 0, 0),
(51743, 0, 0),
(51746, 0, 0),
(51768, 0, 0),
(51794, 0, 0),
(51827, 0, 0),
(51837, 0, 0),
(51894, 0, 0),
(51928, 0, 0),
(51938, 0, 0),
(51984, 0, 0),
(52139, 0, 0),
(52147, 0, 0),
(52174, 0, 0),
(52179, 0, 0),
(52186, 0, 0),
(52198, 0, 0),
(52314, 0, 0),
(52349, 0, 0),
(52367, 0, 0),
(52368, 0, 0),
(52371, 0, 0),
(52374, 0, 0),
(52418, 0, 0),
(52431, 0, 0),
(52471, 0, 0),
(52473, 0, 0),
(52489, 0, 0),
(52493, 0, 0),
(52614, 0, 0),
(52631, 0, 0),
(52641, 0, 0),
(52674, 0, 0),
(52678, 0, 0),
(52679, 0, 0),
(52691, 0, 0),
(52697, 0, 0),
(52738, 0, 0),
(52793, 0, 0),
(52813, 0, 0),
(52846, 0, 0),
(52871, 0, 0),
(52873, 0, 0),
(52893, 0, 0),
(52896, 0, 0),
(52934, 0, 0),
(52948, 0, 0),
(52961, 0, 0),
(52981, 0, 0),
(52984, 0, 0),
(53124, 0, 0),
(53126, 0, 0),
(53164, 0, 0),
(53169, 0, 0),
(53172, 0, 0),
(53197, 0, 0),
(53217, 0, 0),
(53247, 0, 0),
(53294, 0, 0),
(53296, 0, 0),
(53416, 0, 0),
(53417, 0, 0),
(53467, 0, 0),
(53481, 0, 0),
(53498, 0, 0),
(53614, 0, 0),
(53617, 0, 0),
(53619, 0, 0),
(53629, 0, 0),
(53671, 0, 0),
(53714, 0, 0),
(53741, 0, 0),
(53817, 0, 0),
(53849, 0, 0),
(53872, 0, 0),
(53876, 0, 0),
(53896, 0, 0),
(53914, 0, 0),
(53921, 0, 0),
(53924, 0, 0),
(53928, 0, 0),
(53942, 0, 0),
(53946, 0, 0),
(53948, 0, 0),
(53962, 0, 0),
(53968, 0, 0),
(54126, 0, 0),
(54138, 0, 0),
(54162, 0, 0),
(54179, 0, 0),
(54198, 0, 0),
(54216, 0, 0),
(54237, 0, 0),
(54278, 0, 0),
(54281, 0, 0),
(54297, 0, 0),
(54316, 0, 0),
(54318, 0, 0),
(54369, 0, 0),
(54381, 0, 0),
(54682, 0, 0),
(54683, 0, 0),
(54713, 0, 0),
(54721, 0, 0),
(54836, 0, 0),
(54867, 0, 0),
(54871, 0, 0),
(54873, 0, 0),
(54912, 0, 0),
(54917, 0, 0),
(54928, 0, 0),
(54936, 0, 0),
(54972, 0, 0),
(54983, 0, 0),
(56123, 0, 0),
(56148, 0, 0),
(56149, 0, 0),
(56174, 0, 0),
(56178, 0, 0),
(56248, 0, 0),
(56273, 0, 0),
(56291, 0, 0),
(56312, 0, 0),
(56328, 0, 0),
(56389, 0, 0),
(56391, 0, 0),
(56398, 0, 0),
(56418, 0, 0),
(56419, 0, 0),
(56429, 0, 0),
(56478, 0, 0),
(56712, 0, 0),
(56731, 0, 0),
(56819, 0, 0),
(56823, 0, 0),
(56824, 0, 0),
(56841, 0, 0),
(56842, 0, 0),
(56932, 0, 0),
(57136, 0, 0),
(57162, 0, 0),
(57168, 0, 0),
(57182, 0, 0),
(57214, 0, 0),
(57231, 0, 0),
(57239, 0, 0),
(57296, 0, 0),
(57326, 0, 0),
(57349, 0, 0),
(57384, 0, 0),
(57438, 0, 0),
(57439, 0, 0),
(57483, 0, 0),
(57489, 0, 0),
(57498, 0, 0),
(57628, 0, 0),
(57634, 0, 0),
(57641, 0, 0),
(57649, 0, 0),
(57814, 0, 0),
(57834, 0, 0),
(57892, 0, 0),
(57893, 0, 0),
(57912, 0, 0),
(57914, 0, 0),
(57923, 0, 0),
(57926, 0, 0),
(57942, 0, 0),
(57964, 0, 0),
(57986, 0, 0),
(58126, 0, 0),
(58132, 0, 0),
(58136, 0, 0),
(58213, 0, 0),
(58236, 0, 0),
(58247, 0, 0),
(58249, 0, 0),
(58263, 0, 0),
(58279, 0, 0),
(58291, 0, 0),
(58316, 0, 0),
(58347, 0, 0),
(58362, 0, 0),
(58391, 0, 0),
(58392, 0, 0),
(58426, 0, 0),
(58429, 0, 0),
(58469, 0, 0),
(58472, 0, 0),
(58496, 0, 0),
(58619, 0, 0),
(58632, 0, 0),
(58637, 0, 0),
(58691, 0, 0),
(58731, 0, 0),
(58739, 0, 0),
(58746, 0, 0),
(58763, 0, 0),
(58791, 0, 0),
(58793, 0, 0),
(58936, 0, 0),
(58964, 0, 0),
(58967, 0, 0),
(58974, 0, 0),
(59134, 0, 0),
(59162, 0, 0),
(59163, 0, 0),
(59184, 0, 0),
(59213, 0, 0),
(59236, 0, 0),
(59268, 0, 0),
(59281, 0, 0),
(59384, 0, 0),
(59431, 0, 0),
(59472, 0, 0),
(59476, 0, 0),
(59617, 0, 0),
(59618, 0, 0),
(59628, 0, 0),
(59641, 0, 0),
(59647, 0, 0),
(59671, 0, 0),
(59682, 0, 0),
(59687, 0, 0),
(59731, 0, 0),
(59736, 0, 0),
(59746, 0, 0),
(59863, 0, 0),
(59876, 0, 0),
(61293, 0, 0),
(61297, 0, 0),
(61325, 0, 0),
(61352, 0, 0),
(61354, 0, 0),
(61382, 0, 0),
(61389, 0, 0),
(61397, 0, 0),
(61423, 0, 0),
(61425, 0, 0),
(61428, 0, 0),
(61437, 0, 0),
(61439, 0, 0),
(61452, 0, 0),
(61457, 0, 0),
(61459, 0, 0),
(61479, 0, 0),
(61529, 0, 0),
(61587, 0, 0),
(61732, 0, 0),
(61743, 0, 0),
(61753, 0, 0),
(61754, 0, 0),
(61758, 0, 0),
(61759, 0, 0),
(61794, 0, 0),
(61825, 0, 0),
(61827, 0, 0),
(61834, 0, 0),
(61874, 0, 0),
(61895, 0, 0),
(61925, 0, 0),
(62139, 0, 0),
(62143, 0, 0),
(62153, 0, 0),
(62185, 0, 0),
(62193, 0, 0),
(62345, 0, 0),
(62348, 0, 0),
(62381, 0, 0),
(62387, 0, 0),
(62394, 0, 0),
(62419, 0, 0),
(62495, 0, 0),
(62519, 0, 0),
(62543, 0, 0),
(62574, 0, 0),
(62587, 0, 0),
(62594, 0, 0),
(62718, 0, 0),
(62719, 0, 0),
(62735, 0, 0),
(62758, 0, 0),
(62791, 0, 0),
(62843, 0, 0),
(62871, 0, 0),
(62937, 0, 0),
(62974, 0, 0),
(63147, 0, 0),
(63148, 0, 0),
(63149, 0, 0),
(63179, 0, 0),
(63189, 0, 0),
(63192, 0, 0),
(63197, 0, 0),
(63214, 0, 0),
(63289, 0, 0),
(63297, 0, 0),
(63451, 0, 0),
(63457, 0, 0),
(63487, 0, 0),
(63549, 0, 0),
(63584, 0, 0),
(63591, 0, 0),
(63592, 0, 0),
(63597, 0, 0),
(63729, 0, 0),
(63741, 0, 0),
(63782, 0, 0),
(63789, 0, 0),
(63798, 0, 0),
(63829, 0, 0),
(63841, 0, 0),
(63871, 0, 0),
(63892, 0, 0),
(63924, 0, 0),
(63951, 0, 0),
(63974, 0, 0),
(64138, 0, 0),
(64153, 0, 0),
(64198, 0, 0),
(64215, 0, 0),
(64218, 0, 0),
(64235, 0, 0),
(64257, 0, 0),
(64283, 0, 0),
(64285, 0, 0),
(64357, 0, 0),
(64372, 0, 0),
(64381, 0, 0),
(64517, 0, 0),
(64529, 0, 0),
(64573, 0, 0),
(64712, 0, 0),
(64752, 0, 0),
(64793, 0, 0),
(64813, 0, 0),
(64815, 0, 0),
(64825, 0, 0),
(64851, 0, 0),
(64853, 0, 0),
(64893, 0, 0),
(64912, 0, 0),
(64918, 0, 0),
(64925, 0, 0),
(64932, 0, 0),
(64938, 0, 0),
(64958, 0, 0),
(64971, 0, 0),
(64978, 0, 0),
(65128, 0, 0),
(65138, 0, 0),
(65173, 0, 0),
(65178, 0, 0),
(65182, 0, 0),
(65231, 0, 0),
(65289, 0, 0),
(65317, 0, 0),
(65382, 0, 0),
(65394, 0, 0),
(65398, 0, 0),
(65413, 0, 0),
(65417, 0, 0),
(65438, 0, 0),
(65472, 0, 0),
(65482, 0, 0),
(65483, 0, 0),
(65714, 0, 0),
(65719, 0, 0),
(65724, 0, 0),
(65789, 0, 0),
(65819, 0, 0),
(65821, 0, 0),
(65824, 0, 0),
(65831, 0, 0),
(65834, 0, 0),
(65837, 0, 0),
(65839, 0, 0),
(65912, 0, 0),
(65917, 0, 0),
(65924, 0, 0),
(67142, 0, 0),
(67158, 0, 0),
(67183, 0, 0),
(67185, 0, 0),
(67193, 0, 0),
(67198, 0, 0),
(67231, 0, 0),
(67238, 0, 0),
(67248, 0, 0),
(67281, 0, 0),
(67314, 0, 0),
(67324, 0, 0),
(67325, 0, 0),
(67341, 0, 0),
(67348, 0, 0),
(67352, 0, 0),
(67354, 0, 0),
(67412, 0, 0),
(67451, 0, 0),
(67489, 0, 0),
(67519, 0, 0),
(67529, 0, 0),
(67589, 0, 0),
(67594, 0, 0),
(67853, 0, 0),
(67915, 0, 0),
(67928, 0, 0),
(67938, 0, 0),
(67953, 0, 0),
(67981, 0, 0),
(67982, 0, 0),
(67984, 0, 0),
(68134, 0, 0),
(68152, 0, 0),
(68172, 0, 0),
(68213, 0, 0),
(68234, 0, 0),
(68235, 0, 0),
(68239, 0, 0),
(68273, 0, 0),
(68293, 0, 0),
(68315, 0, 0),
(68351, 0, 0),
(68372, 0, 0),
(68374, 0, 0),
(68375, 0, 0),
(68397, 0, 0),
(68421, 0, 0),
(68429, 0, 0),
(68431, 0, 0),
(68491, 0, 0),
(68519, 0, 0),
(68521, 0, 0),
(68529, 0, 0),
(68531, 0, 0),
(68543, 0, 0),
(68572, 0, 0),
(68725, 0, 0),
(68741, 0, 0),
(68749, 0, 0),
(68754, 0, 0),
(68791, 0, 0),
(68912, 0, 0),
(68931, 0, 0),
(68937, 0, 0),
(68951, 0, 0),
(68954, 0, 0),
(68972, 0, 0),
(69245, 0, 0),
(69247, 0, 0),
(69257, 0, 0),
(69348, 0, 0),
(69351, 0, 0),
(69358, 0, 0),
(69374, 0, 0),
(69518, 0, 0),
(69542, 0, 0),
(69574, 0, 0),
(69583, 0, 0),
(69712, 0, 0),
(69723, 0, 0),
(69731, 0, 0),
(69738, 0, 0),
(69743, 0, 0),
(69754, 0, 0),
(69783, 0, 0),
(69813, 0, 0),
(69823, 0, 0),
(71258, 0, 0),
(71283, 0, 0),
(71293, 0, 0),
(71294, 0, 0),
(71296, 0, 0),
(71329, 0, 0),
(71358, 0, 0),
(71385, 0, 0),
(71423, 0, 0),
(71436, 0, 0),
(71439, 0, 0),
(71483, 0, 0),
(71526, 0, 0),
(71528, 0, 0),
(71562, 0, 0),
(71624, 0, 0),
(71625, 0, 0),
(71642, 0, 0),
(71825, 0, 0),
(71835, 0, 0),
(71843, 0, 0),
(71896, 0, 0),
(71943, 0, 0),
(71948, 0, 0),
(71962, 0, 0),
(71984, 0, 0),
(71985, 0, 0),
(72153, 0, 0),
(72163, 0, 0),
(72165, 0, 0),
(72183, 0, 0),
(72193, 0, 0),
(72318, 0, 0),
(72341, 0, 0),
(72345, 0, 0),
(72356, 0, 0),
(72398, 0, 0),
(72419, 0, 0),
(72481, 0, 0),
(72495, 0, 0),
(72513, 0, 0),
(72538, 0, 0),
(72594, 0, 0),
(72614, 0, 0),
(72618, 0, 0),
(72649, 0, 0),
(72654, 0, 0),
(72681, 0, 0),
(72685, 0, 0),
(72694, 0, 0),
(72834, 0, 0),
(72859, 0, 0),
(72869, 0, 0),
(72915, 0, 0),
(72918, 0, 0),
(72953, 0, 0),
(72961, 0, 0),
(73126, 0, 0),
(73145, 0, 0),
(73149, 0, 0),
(73158, 0, 0),
(73184, 0, 0),
(73214, 0, 0),
(73218, 0, 0),
(73259, 0, 0),
(73426, 0, 0),
(73456, 0, 0),
(73462, 0, 0),
(73498, 0, 0),
(73519, 0, 0),
(73542, 0, 0),
(73548, 0, 0),
(73581, 0, 0),
(73582, 0, 0),
(73621, 0, 0),
(73625, 0, 0),
(73652, 0, 0),
(73659, 0, 0),
(73681, 0, 0),
(73694, 0, 0),
(73812, 0, 0),
(73815, 0, 0),
(73845, 0, 0),
(73846, 0, 0),
(73849, 0, 0),
(73862, 0, 0),
(73864, 0, 0),
(73865, 0, 0),
(73921, 0, 0),
(73926, 0, 0),
(73952, 0, 0),
(74168, 0, 0),
(74183, 0, 0),
(74189, 0, 0),
(74196, 0, 0),
(74198, 0, 0),
(74238, 0, 0),
(74251, 0, 0),
(74253, 0, 0),
(74312, 0, 0),
(74319, 0, 0),
(74328, 0, 0),
(74368, 0, 0),
(74512, 0, 0),
(74518, 0, 0),
(74523, 0, 0),
(74538, 0, 0),
(74592, 0, 0),
(74598, 0, 0),
(74631, 0, 0),
(74635, 0, 0),
(74638, 0, 0),
(74658, 0, 0),
(74695, 0, 0),
(74832, 0, 0),
(74835, 0, 0),
(74862, 0, 0),
(74869, 0, 0),
(74923, 0, 0),
(74925, 0, 0),
(74931, 0, 0),
(74935, 0, 0),
(74986, 0, 0),
(75124, 0, 0),
(75143, 0, 0),
(75164, 0, 0),
(75168, 0, 0),
(75183, 0, 0),
(75192, 0, 0),
(75193, 0, 0),
(75213, 0, 0),
(75269, 0, 0),
(75291, 0, 0),
(75324, 0, 0),
(75362, 0, 0),
(75369, 0, 0),
(75386, 0, 0),
(75421, 0, 0),
(75426, 0, 0),
(75481, 0, 0),
(75489, 0, 0),
(75642, 0, 0),
(75649, 0, 0),
(75816, 0, 0),
(75836, 0, 0),
(75849, 0, 0),
(75941, 0, 0),
(75961, 0, 0),
(75968, 0, 0),
(76135, 0, 0),
(76142, 0, 0),
(76159, 0, 0),
(76182, 0, 0),
(76183, 0, 0),
(76185, 0, 0),
(76219, 0, 0),
(76248, 0, 0),
(76251, 0, 0),
(76281, 0, 0),
(76382, 0, 0),
(76419, 0, 0),
(76458, 0, 0),
(76481, 0, 0),
(76491, 0, 0),
(76493, 0, 0),
(76538, 0, 0),
(76543, 0, 0),
(76593, 0, 0),
(76812, 0, 0),
(76852, 0, 0),
(76918, 0, 0),
(76932, 0, 0),
(76934, 0, 0),
(76941, 0, 0),
(76945, 0, 0),
(76981, 0, 0),
(76985, 0, 0),
(78125, 0, 0),
(78142, 0, 0),
(78146, 0, 0),
(78154, 0, 0),
(78192, 0, 0),
(78193, 0, 0),
(78214, 0, 0),
(78216, 0, 0),
(78235, 0, 0),
(78243, 0, 0),
(78249, 0, 0),
(78326, 0, 0),
(78349, 0, 0),
(78426, 0, 0),
(78436, 0, 0),
(78453, 0, 0),
(78461, 0, 0),
(78469, 0, 0),
(78491, 0, 0),
(78519, 0, 0),
(78614, 0, 0),
(78619, 0, 0),
(78631, 0, 0),
(78634, 0, 0),
(78691, 0, 0),
(78912, 0, 0),
(78923, 0, 0),
(78924, 0, 0),
(78935, 0, 0),
(78962, 0, 0),
(79143, 0, 0),
(79163, 0, 0),
(79182, 0, 0),
(79185, 0, 0),
(79251, 0, 0),
(79315, 0, 0),
(79342, 0, 0),
(79354, 0, 0),
(79358, 0, 0),
(79361, 0, 0),
(79365, 0, 0),
(79413, 0, 0),
(79451, 0, 0),
(79461, 0, 0),
(79465, 0, 0),
(79468, 0, 0),
(79483, 0, 0),
(79532, 0, 0),
(79618, 0, 0),
(79623, 0, 0),
(79624, 0, 0),
(79632, 0, 0),
(79638, 0, 0),
(79643, 0, 0),
(79654, 0, 0),
(79854, 0, 0),
(81236, 0, 0),
(81264, 0, 0),
(81273, 0, 0),
(81274, 0, 0),
(81276, 0, 0),
(81297, 0, 0),
(81324, 0, 0),
(81342, 0, 0),
(81354, 0, 0),
(81392, 0, 0),
(81396, 0, 0),
(81463, 0, 0),
(81469, 0, 0),
(81479, 0, 0),
(81542, 0, 0),
(81546, 0, 0),
(81627, 0, 0),
(81635, 0, 0),
(81645, 0, 0),
(81679, 0, 0),
(81697, 0, 0),
(81732, 0, 0),
(81735, 0, 0),
(81743, 0, 0),
(81749, 0, 0),
(81753, 0, 0),
(81762, 0, 0),
(81926, 0, 0),
(81935, 0, 0),
(81953, 0, 0),
(81963, 0, 0),
(81972, 0, 0),
(82134, 0, 0),
(82135, 0, 0),
(82164, 0, 0),
(82179, 0, 0),
(82346, 0, 0),
(82359, 0, 0),
(82391, 0, 0),
(82394, 0, 0),
(82413, 0, 0),
(82416, 0, 0),
(82459, 0, 0),
(82467, 0, 0),
(82469, 0, 0),
(82517, 0, 0),
(82519, 0, 0),
(82531, 0, 0),
(82569, 0, 0),
(82596, 0, 0),
(82615, 0, 0),
(82637, 0, 0),
(82641, 0, 0),
(82657, 0, 0),
(82674, 0, 0),
(82679, 0, 0),
(82734, 0, 0),
(82759, 0, 0),
(82914, 0, 0),
(82931, 0, 0),
(82957, 0, 0),
(82967, 0, 0),
(82971, 0, 0),
(82974, 0, 0),
(82976, 0, 0),
(83246, 0, 0),
(83249, 0, 0),
(83251, 0, 0),
(83276, 0, 0),
(83457, 0, 0),
(83462, 0, 0),
(83472, 0, 0),
(83476, 0, 0),
(83492, 0, 0),
(83516, 0, 0),
(83541, 0, 0),
(83547, 0, 0),
(83571, 0, 0),
(83625, 0, 0),
(83674, 0, 0),
(83697, 0, 0),
(83714, 0, 0),
(83729, 0, 0),
(83791, 0, 0),
(83912, 0, 0),
(83916, 0, 0),
(83951, 0, 0),
(83954, 0, 0),
(83956, 0, 0),
(84123, 0, 0),
(84153, 0, 0),
(84172, 0, 0),
(84175, 0, 0),
(84197, 0, 0),
(84219, 0, 0),
(84235, 0, 0),
(84237, 0, 0),
(84257, 0, 0),
(84295, 0, 0),
(84521, 0, 0),
(84523, 0, 0),
(84619, 0, 0),
(84651, 0, 0),
(84659, 0, 0),
(84671, 0, 0),
(84692, 0, 0),
(84721, 0, 0),
(84735, 0, 0),
(84765, 0, 0),
(84915, 0, 0),
(84916, 0, 0),
(84931, 0, 0),
(84936, 0, 0),
(84937, 0, 0),
(84953, 0, 0),
(84965, 0, 0),
(85123, 0, 0),
(85134, 0, 0),
(85162, 0, 0),
(85169, 0, 0),
(85234, 0, 0),
(85237, 0, 0),
(85243, 0, 0),
(85279, 0, 0),
(85317, 0, 0),
(85376, 0, 0),
(85379, 0, 0),
(85391, 0, 0),
(85412, 0, 0),
(85461, 0, 0),
(85629, 0, 0),
(85643, 0, 0),
(85647, 0, 0),
(85712, 0, 0),
(85714, 0, 0),
(85726, 0, 0),
(85741, 0, 0),
(85743, 0, 0),
(85973, 0, 0),
(85974, 0, 0),
(86152, 0, 0),
(86179, 0, 0),
(86273, 0, 0),
(86359, 0, 0),
(86372, 0, 0),
(86395, 0, 0),
(86415, 0, 0),
(86427, 0, 0),
(86429, 0, 0),
(86451, 0, 0),
(86479, 0, 0),
(86492, 0, 0),
(86571, 0, 0),
(86574, 0, 0),
(86579, 0, 0),
(86591, 0, 0),
(86593, 0, 0),
(86712, 0, 0),
(86715, 0, 0),
(86724, 0, 0),
(86725, 0, 0),
(86729, 0, 0),
(86742, 0, 0),
(86754, 0, 0),
(86795, 0, 0),
(86927, 0, 0),
(86932, 0, 0),
(86934, 0, 0),
(86947, 0, 0),
(86953, 0, 0),
(86957, 0, 0),
(86975, 0, 0),
(87126, 0, 0),
(87154, 0, 0),
(87163, 0, 0),
(87164, 0, 0),
(87193, 0, 0),
(87214, 0, 0),
(87259, 0, 0),
(87293, 0, 0),
(87294, 0, 0),
(87315, 0, 0),
(87316, 0, 0),
(87321, 0, 0),
(87356, 0, 0),
(87396, 0, 0),
(87426, 0, 0),
(87431, 0, 0),
(87432, 0, 0),
(87452, 0, 0),
(87456, 0, 0),
(87519, 0, 0),
(87521, 0, 0),
(87523, 0, 0),
(87524, 0, 0),
(87536, 0, 0),
(87562, 0, 0),
(87563, 0, 0),
(87632, 0, 0),
(87653, 0, 0),
(87913, 0, 0),
(87923, 0, 0),
(87945, 0, 0),
(87956, 0, 0),
(87965, 0, 0),
(89136, 0, 0),
(89146, 0, 0),
(89153, 0, 0),
(89156, 0, 0),
(89163, 0, 0),
(89165, 0, 0),
(89215, 0, 0),
(89236, 0, 0),
(89317, 0, 0),
(89325, 0, 0),
(89326, 0, 0),
(89341, 0, 0),
(89352, 0, 0),
(89415, 0, 0),
(89465, 0, 0),
(89516, 0, 0),
(89541, 0, 0),
(89546, 0, 0),
(89562, 0, 0),
(89572, 0, 0),
(89612, 0, 0),
(89623, 0, 0),
(89632, 0, 0),
(89654, 0, 0),
(89734, 0, 0),
(89746, 0, 0),
(89752, 0, 0),
(89754, 0, 0),
(91258, 0, 0),
(91278, 0, 0),
(91325, 0, 0),
(91376, 0, 0),
(91458, 0, 0),
(91462, 0, 0),
(91472, 0, 0),
(91527, 0, 0),
(91532, 0, 0),
(91537, 0, 0),
(91542, 0, 0),
(91564, 0, 0),
(91574, 0, 0),
(91576, 0, 0),
(91586, 0, 0),
(91635, 0, 0),
(91654, 0, 0),
(91684, 0, 0),
(91752, 0, 0),
(91756, 0, 0),
(91824, 0, 0),
(91852, 0, 0),
(91854, 0, 0),
(91865, 0, 0),
(92134, 0, 0),
(92137, 0, 0),
(92145, 0, 0),
(92146, 0, 0),
(92163, 0, 0),
(92167, 0, 0),
(92185, 0, 0),
(92345, 0, 0),
(92381, 0, 0),
(92416, 0, 0),
(92457, 0, 0),
(92465, 0, 0),
(92487, 0, 0),
(92568, 0, 0),
(92571, 0, 0),
(92583, 0, 0),
(92618, 0, 0),
(92657, 0, 0),
(92673, 0, 0),
(92687, 0, 0),
(92714, 0, 0),
(92735, 0, 0),
(92745, 0, 0),
(92748, 0, 0),
(92753, 0, 0),
(92764, 0, 0),
(92836, 0, 0),
(92867, 0, 0),
(93142, 0, 0),
(93146, 0, 0),
(93154, 0, 0),
(93157, 0, 0),
(93162, 0, 0),
(93172, 0, 0),
(93178, 0, 0),
(93186, 0, 0),
(93246, 0, 0),
(93247, 0, 0),
(93248, 0, 0),
(93251, 0, 0),
(93267, 0, 0),
(93271, 0, 0),
(93285, 0, 0),
(93457, 0, 0),
(93461, 0, 0),
(93512, 0, 0),
(93521, 0, 0),
(93524, 0, 0),
(93526, 0, 0),
(93528, 0, 0),
(93567, 0, 0),
(93571, 0, 0),
(93572, 0, 0),
(93612, 0, 0),
(93642, 0, 0),
(93647, 0, 0),
(93648, 0, 0),
(93672, 0, 0),
(93721, 0, 0),
(93725, 0, 0),
(93758, 0, 0),
(93761, 0, 0),
(93764, 0, 0),
(93857, 0, 0),
(93864, 0, 0),
(93875, 0, 0),
(94126, 0, 0),
(94128, 0, 0),
(94156, 0, 0),
(94176, 0, 0),
(94182, 0, 0),
(94268, 0, 0),
(94275, 0, 0),
(94286, 0, 0),
(94287, 0, 0),
(94357, 0, 0),
(94572, 0, 0),
(94573, 0, 0),
(94587, 0, 0),
(94618, 0, 0),
(94631, 0, 0),
(94635, 0, 0),
(94651, 0, 0),
(94723, 0, 0),
(94726, 0, 0),
(94736, 0, 0),
(94752, 0, 0),
(94768, 0, 0),
(94813, 0, 0),
(94827, 0, 0),
(94835, 0, 0),
(94851, 0, 0),
(94853, 0, 0),
(94872, 0, 0),
(94873, 0, 0),
(95128, 0, 0),
(95136, 0, 0),
(95138, 0, 0),
(95146, 0, 0),
(95172, 0, 0),
(95183, 0, 0),
(95246, 0, 0),
(95271, 0, 0),
(95273, 0, 0),
(95283, 0, 0),
(95284, 0, 0),
(95287, 0, 0),
(95326, 0, 0),
(95346, 0, 0),
(95361, 0, 0),
(95372, 0, 0),
(95382, 0, 0),
(95386, 0, 0),
(95417, 0, 0),
(95421, 0, 0),
(95462, 0, 0),
(95476, 0, 0),
(95482, 0, 0),
(95612, 0, 0),
(95624, 0, 0),
(95632, 0, 0),
(95671, 0, 0),
(95673, 0, 0),
(95681, 0, 0),
(95736, 0, 0),
(95763, 0, 0),
(95781, 0, 0),
(95782, 0, 0),
(95846, 0, 0),
(95861, 0, 0),
(95864, 0, 0),
(95873, 0, 0),
(96128, 0, 0),
(96143, 0, 0),
(96157, 0, 0),
(96174, 0, 0),
(96185, 0, 0),
(96231, 0, 0),
(96235, 0, 0),
(96241, 0, 0),
(96243, 0, 0),
(96248, 0, 0),
(96251, 0, 0),
(96271, 0, 0),
(96317, 0, 0),
(96321, 0, 0),
(96347, 0, 0),
(96381, 0, 0),
(96417, 0, 0),
(96425, 0, 0),
(96431, 0, 0),
(96471, 0, 0),
(96475, 0, 0),
(96478, 0, 0),
(96487, 0, 0),
(96521, 0, 0),
(96572, 0, 0),
(96713, 0, 0),
(96728, 0, 0),
(96731, 0, 0),
(96742, 0, 0),
(96751, 0, 0),
(96814, 0, 0),
(96824, 0, 0),
(96831, 0, 0),
(96832, 0, 0),
(96873, 0, 0),
(97123, 0, 0),
(97126, 0, 0),
(97132, 0, 0),
(97134, 0, 0),
(97164, 0, 0),
(97183, 0, 0),
(97186, 0, 0),
(97214, 0, 0),
(97234, 0, 0),
(97243, 0, 0),
(97285, 0, 0),
(97326, 0, 0),
(97412, 0, 0),
(97416, 0, 0),
(97431, 0, 0),
(97458, 0, 0),
(97461, 0, 0),
(97518, 0, 0),
(97521, 0, 0),
(97541, 0, 0),
(97564, 0, 0),
(97581, 0, 0),
(97582, 0, 0),
(97618, 0, 0),
(97634, 0, 0),
(97638, 0, 0),
(97641, 0, 0),
(97642, 0, 0),
(97652, 0, 0),
(97685, 0, 0),
(97814, 0, 0),
(97823, 0, 0),
(97842, 0, 0),
(97843, 0, 0),
(98125, 0, 0),
(98163, 0, 0),
(98216, 0, 0),
(98236, 0, 0),
(98237, 0, 0),
(98254, 0, 0),
(98317, 0, 0),
(98324, 0, 0),
(98325, 0, 0),
(98342, 0, 0),
(98346, 0, 0),
(98356, 0, 0),
(98371, 0, 0),
(98416, 0, 0),
(98526, 0, 0),
(98532, 0, 0),
(98564, 0, 0),
(98632, 0, 0),
(98657, 0, 0),
(98712, 0, 0),
(98736, 0, 0),
(98741, 0, 0),
(98764, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
