-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jan 05, 2017 at 07:27 PM
-- Server version: 5.5.52-cll
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `u6406869_megaimk`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`username`, `password`, `nama_lengkap`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `hubungi`
--

CREATE TABLE IF NOT EXISTS `hubungi` (
  `id_hubungi` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_hubungi`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `hubungi`
--

INSERT INTO `hubungi` (`id_hubungi`, `nama`, `email`, `subjek`, `pesan`, `tanggal`) VALUES
(1, 'res', 'a@a.com', 'sasd', 'tes', '2013-04-11');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=24 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `kategori_seo`) VALUES
(23, 'Minuman', 'minuman'),
(20, 'Kue Tradisional', 'kue-tradisional'),
(21, 'Oleh-oleh Medan', 'oleholeh-medan'),
(22, 'Makanan', 'makanan');

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE IF NOT EXISTS `modul` (
  `id_modul` int(5) NOT NULL AUTO_INCREMENT,
  `nama_modul` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `static_content` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('user','admin') COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  `urutan` int(5) NOT NULL,
  PRIMARY KEY (`id_modul`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=57 ;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `link`, `static_content`, `gambar`, `status`, `aktif`, `urutan`) VALUES
(18, 'Tambah Produk', '?module=produk', '', '', 'admin', 'Y', 5),
(42, 'Lihat Pesanan', '?module=order', '', '', 'admin', 'Y', 8),
(31, 'Tambah Kategori Produk', '?module=kategori', '', '', 'admin', 'Y', 4),
(43, 'Edit Profil', '?module=profil', '<p class="MsoNormal">\r\n<!--[if gte mso 9]><xml>\r\n<w:WordDocument>\r\n<w:View>Normal</w:View>\r\n<w:Zoom>0</w:Zoom>\r\n<w:Compatibility>\r\n<w:BreakWrappedTables/>\r\n<w:SnapToGridInCell/>\r\n<w:WrapTextWithPunct/>\r\n<w:UseAsianBreakRules/>\r\n</w:Compatibility>\r\n<w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>\r\n</w:WordDocument>\r\n</xml><![endif]-->\r\n<!--\r\n/* Style Definitions */\r\np.MsoNormal, li.MsoNormal, div.MsoNormal\r\n{mso-style-parent:"";\r\nmargin:0cm;\r\nmargin-bottom:.0001pt;\r\nmso-pagination:widow-orphan;\r\nfont-size:12.0pt;\r\nfont-family:"Times New Roman";\r\nmso-fareast-font-family:"Times New Roman";}\r\n@page Section1\r\n{size:612.0pt 792.0pt;\r\nmargin:72.0pt 90.0pt 72.0pt 90.0pt;\r\nmso-header-margin:35.4pt;\r\nmso-footer-margin:35.4pt;\r\nmso-paper-source:0;}\r\ndiv.Section1\r\n{page:Section1;}\r\n-->\r\n<!--[if gte mso 10]>\r\n<style>\r\n/* Style Definitions */\r\ntable.MsoNormalTable\r\n{mso-style-name:"Table Normal";\r\nmso-tstyle-rowband-size:0;\r\nmso-tstyle-colband-size:0;\r\nmso-style-noshow:yes;\r\nmso-style-parent:"";\r\nmso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\nmso-para-margin:0cm;\r\nmso-para-margin-bottom:.0001pt;\r\nmso-pagination:widow-orphan;\r\nfont-size:10.0pt;\r\nfont-family:"Times New Roman";}\r\n</style>\r\n<![endif]--><font size="2">Buana Elektronik adalah toko elektronik online, yang menyediakan segala kebutuhan barang-barang elektronik anda. Buana elektronik&nbsp;</font><font size="2">ingin memberikan kemudahan kepada para calon pembeli, cara santai, mudah dan hemat dalam berbelanja barang elektronik berkualias dengan harga yang terjangkau.\r\n</font>\r\n</p>\r\n<p class="MsoNormal">\r\n<font size="2">Karena itulah website ini dibuat sedemikian sederhananya sehingga diharapkan dapat membantu para pengunjung untuk dapat menelusuri produk-produk yang ditawarkan secara lebih mudah.<br />\r\n</font>\r\n</p>\r\n<p class="MsoNormal">\r\n<font size="2">Selain melayani pesanan produk-produk yang ada di toko online, kami menerima pembelian secara offline dengan datang ke toko kami yang ada di Jl. Singaparna No.99 Tasikmalaya.<br />\r\n</font>\r\n</p>\r\n<p class="MsoNormal">\r\n<font size="2">Akhirnya, kami mengucapkan terima kasih atas kunjungan anda di Buana Elektronik.</font>\r\n</p>\r\n', '12sfhijau.jpg', 'admin', 'Y', 7),
(44, 'Lihat Pesan Masuk', '?module=hubungi', '', '', 'admin', 'Y', 9),
(45, ' Edit Cara Pemesanan', '?module=carapesan', '<ol>\r\n	<li>Klik tombol <strong>Pesan&nbsp;</strong>pada produk yang ingin Anda pesan.</li>\r\n	<li>Produk yang Anda pesan akan masuk ke dalam <span style="font-weight: bold">Pesanan</span>. Anda dapat melakukan perubahan jumlah produk yang diinginkan dengan mengganti angka di kolom <span style="font-weight: bold">Jumlah</span>, kemudian klik tombol <span style="font-weight: bold">Update</span>. Sedangkan untuk menghapus sebuah produk dari Daftar Pesanan, klik tombol Kali (x) yang berada di kolom paling kanan.</li>\r\n	<li>Jika sudah selesai, klik tombol <span style="font-weight: bold">Selesai Memesan</span>, maka akan tampil form untuk pengisian data kustomer/pembeli.</li>\r\n	<li>Setelah data pembeli selesai diisikan, klik tombol <span style="font-weight: bold">Proses</span>, maka akan tampil data pembeli beserta produk yang dipesannya (jika diperlukan catat nomor ordernya).</li>\r\n</ol>\r\n', 'gedung.jpg', 'admin', 'Y', 10),
(49, 'Ubah Password', '?module=password', '', '', 'user', 'Y', 1),
(52, 'Lihat Laporan Penjualan', '?module=laporan', '', '', 'user', 'Y', 14);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id_orders` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kustomer` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat` text COLLATE latin1_general_ci NOT NULL,
  `telpon` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `status_order` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT 'Baru',
  `tgl_order` date NOT NULL,
  `jam_order` time NOT NULL,
  PRIMARY KEY (`id_orders`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id_orders`, `nama_kustomer`, `alamat`, `telpon`, `status_order`, `tgl_order`, `jam_order`) VALUES
(1, 'xxx', 'xxx xxx xxx', '123456', 'Lunas/Terkirim', '2013-04-11', '15:30:33'),
(13, 'megawati', 'jalan sehati', '082165106565', 'Lunas/Terkirim', '2016-12-26', '19:23:33'),
(14, 'megawati', 'pasar 3', '082165106565', 'Lunas/Terkirim', '2017-01-02', '18:54:07'),
(16, 'thirta', 'jalan tembung', '082165106565', 'Lunas/Terkirim', '2017-01-03', '02:30:46'),
(17, 'thirta', 'jalan tembung', '082165106565', 'Lunas/Terkirim', '2017-01-03', '02:34:24'),
(18, 'kadek', 'jalan sehati', '082165106565', 'Lunas/Terkirim', '2017-01-03', '02:37:09');

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE IF NOT EXISTS `orders_detail` (
  `id_orders` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `jumlah` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`id_orders`, `id_produk`, `jumlah`) VALUES
(1, 22, 3),
(1, 21, 2),
(2, 23, 3),
(13, 23, 1),
(14, 23, 1),
(15, 23, 3),
(16, 23, 1),
(18, 22, 2),
(18, 23, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_temp`
--

CREATE TABLE IF NOT EXISTS `orders_temp` (
  `id_orders_temp` int(5) NOT NULL AUTO_INCREMENT,
  `id_produk` int(5) NOT NULL,
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `jumlah` int(5) NOT NULL,
  `tgl_order_temp` date NOT NULL,
  `jam_order_temp` time NOT NULL,
  `stok_temp` int(11) NOT NULL,
  PRIMARY KEY (`id_orders_temp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=33 ;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `id_produk` int(5) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(5) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `produk_seo` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(20) NOT NULL,
  `stok` int(5) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=73 ;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `produk_seo`, `deskripsi`, `harga`, `stok`, `gambar`) VALUES
(36, 21, 'Bika Ambon Original', 'bika-ambon-original', '', 45000, 120, '68bika ambon original - 45rb.jpg'),
(37, 21, 'Bika Ambon Pandan', 'bika-ambon-pandan', '', 50000, 100, '62bika_ambon_pandan 50rb.jpg'),
(38, 21, 'Bika Ambon Karamel', 'bika-ambon-karamel', '', 48000, 80, '90bika ambon karamel - 48rb.jpg'),
(39, 21, 'Bolu Kukus Original', 'bolu-kukus-original', '', 35000, 70, '48Brownies-Kukus-Amanda-Original - 35rb.jpg'),
(24, 20, 'Ombus -Ombus', 'ombus-ombus', '', 3000, 50, '85ombus - ombus - 3000.jpg'),
(25, 20, 'Cenil Pelangi', 'cenil-pelangi', '', 10000, 95, '65cenil pelangi - 10rb.jpg'),
(26, 20, 'Cenil Gula Merah', 'cenil-gula-merah', '', 10000, 80, '48cenil - 10rb.jpg'),
(27, 20, 'Putu Mayang', 'putu-mayang', '', 8000, 100, '78putu mayang - 8rb.jpg'),
(28, 20, 'Putu Bambu', 'putu-bambu', '', 9000, 100, '25putu bambu - 10rb.jpg'),
(29, 20, 'Lupis', 'lupis', '', 8000, 100, '70kue lupis - 8rb.jpg'),
(30, 20, 'Kue itak Gugur', 'kue-itak-gugur', '', 7000, 35, '93kue itak gugur - 7000.jpg'),
(31, 20, 'Wajik Pandan', 'wajik-pandan', '', 11000, 40, '48wajik pandan - 11rb.jpg'),
(32, 20, 'Lemang', 'lemang', '', 20000, 70, '59lemang - 20rb.jpg'),
(33, 20, 'Kue Ketawa', 'kue-ketawa', '', 15000, 100, '23kue ketawa - 15rb.png'),
(34, 20, 'Wajik Ketan Manis Legit', 'wajik-ketan-manis-legit', '', 25000, 30, '60wajik-ketan manis legit - 25rb.png'),
(35, 20, 'Kue Lapet', 'kue-lapet', '', 9000, 55, '11kue lapet - 9000.JPG'),
(40, 21, 'Bolu Kukus Cheese Cream', 'bolu-kukus-cheese-cream', '', 49000, 70, '82brownies kukus cheese cream - 49rb.jpg'),
(41, 21, 'Bolu Kukus Tiramisu', 'bolu-kukus-tiramisu', '', 47000, 70, '89brownies kukus tiramisu - 47rb.jpg'),
(42, 21, 'Bolu Kukus Serikaya Pandan', 'bolu-kukus-serikaya-pandan', '', 47000, 70, '76brownies kukus serikaya pandan - 47rb.jpg'),
(43, 21, 'Pancake Durian', 'pancake-durian', '', 70000, 150, '28pancake durian - 70rb.jpg'),
(44, 22, 'Sambal Tuk Tuk', 'sambal-tuk-tuk', '', 25000, 20, '90sambal-tuktuk - 25rb.jpg'),
(45, 22, 'Sayur Daun Ubi', 'sayur-daun-ubi', '', 5000, 25, '91daun ubi tumbuk - 5rb.gif'),
(46, 22, 'Arsik Ikan Mas', 'arsik-ikan-mas', '', 60000, 20, '56arsik - 60rb.jpg'),
(47, 22, 'Dengke Mas Na Niura (Ikan Mas yang tidak dimasak)', 'dengke-mas-na-niura-ikan-mas-yang-tidak-dimasak', '', 55000, 25, '40Dengke Mas Na Niura - 55rb.jpg'),
(48, 22, 'Lontong Sayur', 'lontong-sayur', '', 10000, 15, '26Lontong Medan - 10000.jpg'),
(49, 22, 'Nasi Uduk', 'nasi-uduk', '', 12000, 15, '7nasi uduk - 12000.jpg'),
(50, 21, 'Sambal Tuk Tuk', 'sambal-tuk-tuk', '', 30000, 30, '5sambal tuk tuk.jpg'),
(51, 22, 'Mie Gomak', 'mie-gomak', '', 15000, 15, '78mie gomak goreng - 15000.jpg'),
(52, 22, 'Mie Rebus', 'mie-rebus', '', 15000, 50, '86mie rebus - 15000.jpg'),
(53, 21, 'Bolu Gulung 3in1', 'bolu-gulung-3in1', '', 80000, 120, '93bolu-gulung-3in1 - 80rb.jpg'),
(54, 22, 'Udang Tauco Medan', 'udang-tauco-medan', '', 35000, 40, '65udang tauco medan - 35000.jpg'),
(55, 22, 'Steam Bawal Putih', 'steam-bawal-putih', '', 37000, 40, '38steam bawal putih - 37rb.JPG'),
(56, 23, 'Teh Susu Telur', 'teh-susu-telur', '', 17000, 100, '89TST-Teh-Susu-Telur.jpg'),
(57, 23, 'Jus Martabe', 'jus-martabe', '', 15000, 100, '53Jus Martabe Khas Medan.jpg'),
(58, 23, 'Es Kolding', 'es-kolding', '', 18000, 50, '2es kolding.jpg'),
(59, 23, 'Es Jelly', 'es-jelly', '', 10000, 100, '13es jelly.png'),
(60, 23, 'Es Campur', 'es-campur', '', 15000, 100, '60es campur.jpg'),
(61, 23, 'Soda Markisa Nanas', 'soda-markisa-nanas', '', 18000, 100, '55soda markisa nanas.jpg'),
(62, 23, 'Jus Alpukat', 'jus-alpukat', '', 15000, 100, '17jus alpukat.png'),
(63, 23, 'Jus Melon', 'jus-melon', '', 15000, 100, '18jus melon.jpg'),
(64, 23, 'Jus Sirsak', 'jus-sirsak', '', 15000, 100, '92jus sirsak.jpeg'),
(65, 23, 'Jus Jambu', 'jus-jambu', '', 15000, 100, '11jus-jambu.png'),
(66, 23, 'Jus Mangga', 'jus-mangga', '', 15000, 100, '84Jus-Mangga.jpg'),
(67, 23, 'Jus Strawberry', 'jus-strawberry', '', 15000, 100, '55jus-strawberry-.jpg'),
(68, 23, 'Es Merah Delima', 'es-merah-delima', '', 16000, 100, '17es merah delima.jpg'),
(69, 23, 'Es Mie Jelly', 'es-mie-jelly', '', 10000, 50, '34Es Mie Jelly.jpg'),
(70, 23, 'Es Lecy Jelly', 'es-lecy-jelly', '', 10000, 50, '90Es-Leci-Jelly1.jpg'),
(71, 23, 'Jus Semangka', 'jus-semangka', '', 15000, 50, '43jus-semangka.jpg'),
(72, 23, 'Es Coffe Cincau', 'es-coffe-cincau', '', 10000, 50, '86kopi cincau.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
