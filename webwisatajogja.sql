-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2024 at 08:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webwisata`
--

-- --------------------------------------------------------

--
-- Table structure for table `destinasi`
--

CREATE TABLE `destinasi` (
  `id_destinasi` int(10) NOT NULL,
  `nama_destinasi` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `id_kabkot` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `destinasi`
--

INSERT INTO `destinasi` (`id_destinasi`, `nama_destinasi`, `deskripsi`, `alamat`, `foto`, `id_kabkot`) VALUES
(2, 'Museum Sonobudoyo', 'Museum Negeri Sonobudoyo merupakan Unit Pelaksana Teknis Daerah pada Dinas Kebudayaan Provinsi Daerah Istimewa Yogyakarta, mempunyai fungsi pengelolaan benda museum yang memiliki nilai budaya ilmiah, meliputi koleksi pengembangan dan bimbingan edukatif kultural. Sedangkan tugasnya adalah mengumpulkan, merawat, pengawetan, melaksanakan penelitian, pelayanan pustaka, bimbingan edukatif kultural serta penyajian benda koleksi Museum Negeri Sonobudoyo.\r\n \r\nMuseum Sonobudoyo yang berlokasi di pusat kota berada dalam lokasi yang strategis, berada dalam lingkungan Pusat Budaya Yogyakarta yang banyak mendapatkan perhatian dari berbagai pihak baik dari dalam maupun luar negeri.\r\n \r\nBangunan Museum Sonobudoyo merupakan rumah joglo dengan arsitektur masjid keraton kesepuhan Cirebon. Didesain oleh Ir. Th. Karsten.\r\n \r\nKeberadaan museum erat hubungannya dengan sebuah yayasan masa Kolonial Java Institut dibidang kebudayaan Jawa, Madura, Bali, dan Lombok sebagai pencetus berdirinya Museum Sonobudoyo, yang diresmikan pada tanggal 6 November 1935, oleh Sri Sultan Hamengku Buwono VIII dengan ditandai Candrasengkala “Kayu Winayang Ing Brahmana Budha”.\r\n \r\nMuseum Sonobudoyo sebagai museum provinsi kedepannya diharapkan akan menjadi gambaran dari fungsi museum dalam hal pelayanan dan optimalisasi fungsi, dengan melihat potensi yang dimiliki, sehingga akan mempunyai prospek dan peluang untuk lebih dikembangkan dan ditingkatkan, dalam rangka menghadapi persaingan baik pada level Nasional maupun Internasional.', 'Jl. Pangurakan No.6, Ngupasan, Kec. Gondomanan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55122\r\n', 'sonobudoyo.png', 14),
(3, 'Benteng Vredeburg', 'Benteng Vredeburg adalah sebuah bangunan benteng pertahanan yang terletak di depan Gedung Agung dan Kraton Kesultanan Yogyakarta. Benteng ini dibangun pada tahun 1771 oleh Sultan Hamengkubuwono I atas permintaan Belanda. Nama \"Vredeburg\" yang berarti \"benteng perdamaian\" diberikan oleh Belanda sebagai simbol persahabatan antara Belanda dan Kesultanan Yogyakarta.\r\n\r\nBenteng Vredeburg memiliki bentuk persegi empat dengan bastion di setiap sudutnya. Benteng ini terbuat dari batu bata dan memiliki tinggi sekitar 6 meter. Pada masa kolonial Belanda, benteng ini digunakan sebagai markas militer. Setelah kemerdekaan Indonesia, benteng ini digunakan sebagai markas TNI dan kemudian diubah menjadi museum pada tahun 1985.\r\n\r\nKoleksi Museum Benteng Vredeburg meliputi berbagai macam benda bersejarah yang berkaitan dengan perjuangan kemerdekaan Indonesia, seperti senjata, pakaian perang, dan foto-foto. Selain itu, museum ini juga memiliki beberapa diorama yang menggambarkan peristiwa-peristiwa bersejarah yang terjadi di Yogyakarta.', 'Jl. Margo Mulyo No.6, Ngupasan, Kec. Gondomanan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55122', 'beteng vredeburg.jpg', 9);

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id_hotel` int(11) NOT NULL,
  `nama_hotel` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `alamat` text NOT NULL,
  `foto` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id_hotel`, `nama_hotel`, `deskripsi`, `alamat`, `foto`) VALUES
(1, 'Prime Cailendra Hotel', 'Hotel bujet simpel yang terletak di jalan dengan deretan tempat makan kasual ini berjarak 3 km dari Keraton Yogyakarta dan Fort Vredeburg Museum, serta 5 km dari stasiun kereta Yogyakarta.', 'Jl. Taman Siswa No.91, Wirogunan, Kec. Mergangsan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55111•(021) 80629666', '1719341397hotel1.jpg'),
(2, 'Top Malioboro Hotel Jogja', 'Hotel trendi dengan restoran warna-warni, kolam renang outdoor, dan bar/lounge keren dengan musik live. Harga: Rp307.465 per malam (20% lebih murah dari biasanya). Rating: 4.1/5', 'Jl. HOS Cokroaminoto No.145, Tegalrejo, Kec. Tegalrejo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55244•(0274) 5305755', '1670169634grandq.jpg'),
(4, 'Royal Malioboro by ASTON', 'Berlokasi di Yogyakarta, 6 menit jalan kaki dari Mal Malioboro, Royal Malioboro by ASTON menyediakan akomodasi dengan tempat fitness lengkap, parkir pribadi gratis, lounge bersama, dan bar. Mempunyai layanan concierge, akomodasi ini juga menawarkan restoran untuk Anda. Akomodasi ini menawarkan resepsionis 24 jam, transfer bandara, layanan kamar, dan WiFi gratis di seluruh area akomodasi.\r\n\r\nHotel menyediakan kamar ber-AC dengan meja kerja, ketel listrik, minibar, brankas, TV layar datar, dan kamar mandi pribadi dengan shower. Unit memiliki lemari pakaian.\r\n\r\nAnda dapat menikmati sarapan prasmanan di Royal Malioboro by ASTON.\r\n\r\nTempat-tempat menarik yang populer di dekat Royal Malioboro by ASTON termasuk Stasiun Tugu Yogyakarta, Gedung Agung Yogyakarta, dan Benteng Vredeburg. Bandara terdekat adalah Bandara Adisutjipto, 12 km dari hotel.', ' Jl. Pasar Kembang no. 29 Yogyakarta Indonesia, Gedongtengen, 55271 Yogyakarta, Indonesia ', '1670169723aston.jpg'),
(5, 'Tasneem Convention Hotel Yogyakarta', 'Hotel sederhana dan nyaman ini berjarak sekitar 2 km dari area perbelanjaan dan restoran di Jalan Malioboro yang ramai, serta 1 km dari Keraton Ngayogyakarta Hadiningrat, istana megah yang dibangun pada abad ke-18 dan masih digunakan sebagai tempat tinggal keluarga kerajaan.', 'Purawisata, Kawasan Mandira Baruga, Jl. Brigjen Katamso, Keparakan, Kec. Mergangsan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55152', '1670170978damhil.jpg'),
(6, 'Emersia Malioboro Hotel', 'Hotel santai di pusat kota ini berjarak 2 menit berjalan kaki dari tempat makan, 8 menit dari stasiun kereta Yogyakarta, dan 10 menit berjalan kaki dari kawasan perbelanjaan ramai di Jalan Malioboro.', 'Jl. Gowongan Kidul No.34, Gowongan, Kec. Jetis, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55232•0811-2788-833', '1670244158amaris.jpg'),
(7, 'Grand Senyum Hotel Yogyakarta', 'Hotel santai yang terletak di area perbelanjaan dan restoran yang ramai ini berjarak 14 menit berjalan kaki dari stasiun kereta Yogyakarta, serta 4 km dari Taman Sari dan Museum Benteng Vredeburg.', 'Jl. Pangeran Diponegoro No.27, Gowongan, Kec. Jetis, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55232•(0274) 566306', '1670249630millinov.jpg'),
(8, 'The Phoenix Hotel', 'Terletak di sebuah bangunan kolonial yang dibangun pada tahun 1918, hotel mewah ini berjarak 2,1 km dari toko-toko dan restoran di Jalan Malioboro, dan 4 km dari istana Kraton Ngayogyakarta Hadiningrat abad ke-18.', 'Jl. Jend. Sudirman No.9, Cokrodiningratan, Kec. Jetis, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55233•(0274) 566617', '1670249715sunrise.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `kabkot`
--

CREATE TABLE `kabkot` (
  `id_kabkot` int(11) NOT NULL,
  `nama_kabkot` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kabkot`
--

INSERT INTO `kabkot` (`id_kabkot`, `nama_kabkot`, `deskripsi`, `foto`) VALUES
(10, 'Kota Yogyakarta', 'Kota Yogyakarta, sering disebut sebagai Jogja atau Yogya, adalah ibu kota dan pusat pemerintahan dari Provinsi Daerah Istimewa Yogyakarta (DIY), Indonesia. Kota ini memiliki sejarah yang kaya, warisan budaya yang melimpah, serta dikenal sebagai pusat pendidikan dan pariwisata. Terletak di bagian tengah-selatan Pulau Jawa, Yogyakarta dikelilingi oleh Kabupaten Sleman di utara dan Kabupaten Bantul di selatan. Kota ini didirikan pada tahun 1755 setelah Perjanjian Giyanti yang memisahkan Kerajaan Mataram menjadi Kesultanan Yogyakarta dan Kasunanan Surakarta. Sultan Hamengkubuwono I menjadi pendiri dan penguasa pertama Kesultanan Yogyakarta.', '1719341006keraton-yogyakarta.jpg'),
(11, 'Kabupaten Sleman', 'Kabupaten Sleman adalah salah satu kabupaten yang terletak di Provinsi Daerah Istimewa Yogyakarta (DIY), Indonesia. Kabupaten ini terkenal dengan berbagai destinasi wisata alam dan budaya, serta sebagai pusat pendidikan dengan keberadaan beberapa universitas ternama. Wilayah Sleman dahulu merupakan bagian dari Kerajaan Mataram Kuno. Banyak candi dan situs bersejarah dari masa tersebut yang ditemukan di Sleman. Sleman juga menjadi bagian dari Kerajaan Mataram Islam dan Kesultanan Yogyakarta.', '1718138317prambanan.jpg'),
(12, 'Kabupaten Gunung KIdul', 'Kabupaten Gunungkiduladalah salah satu kabupaten di Daerah Istimewa Yogyakarta, Indonesia. Pusat pemerintahan berada di Kecamatan Wonosari. Dengan luas sekitar satu per tiga dari luas daerah induknya, kabupaten ini relatif rendah kepadatan penduduknya daripada kabupaten-kabupaten lainnya. Kabupaten ini berbatasan dengan Kabupaten Klaten dan Kabupaten Sukoharjo di utara, Kabupaten Wonogiri di timur, Samudra Hindia di selatan, serta Kabupaten Bantul dan Kabupaten Sleman di barat. Kabupaten Gunungkidul memiliki 18 kecamatan. Sebagian besar wilayah kabupaten ini berupa perbukitan dan pegunungan kapur, yakni bagian dari Pegunungan Sewu. Gunungkidul dikenal sebagai daerah tandus dan sering mengalami kekeringan di musim kemarau, namun menyimpan kekhasan sejarah yang unik, selain potensi pariwisata, budaya, maupun kuliner.', '1718269260pantai-drini-yogyakarta-800x520-1280x720.jpg'),
(13, 'Kabupaten Bantul', 'Bantul adalah salah satu kabupaten yang terletak di Daerah Istimewa Yogyakarta (DIY), Indonesia. Kabupaten ini terkenal dengan kekayaan budaya, sejarah, serta destinasi wisata alam dan seni yang menarik.', '1718271169antarafoto-pergerakan-wisata-diy-tertinggi-indonesia-040323-hnd-1.jpg'),
(14, 'Kabupaten Kulon Progo', 'Kulon Progo adalah salah satu kabupaten di Provinsi Daerah Istimewa Yogyakarta (DIY), Indonesia. Kabupaten ini dikenal dengan keindahan alamnya yang meliputi pegunungan, pantai, dan sungai, serta berbagai destinasi wisata yang menarik.', '1718271855Mengenal-Pantai-Glagah.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `nama` varchar(256) DEFAULT NULL,
  `username` varchar(256) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `username`, `password`) VALUES
(15, 'Lionel Messi', 'messi', 'duasatu'),
(18, 'p', 'p', 'p'),
(20, 'Anik', 'anik123', 'anik123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `destinasi`
--
ALTER TABLE `destinasi`
  ADD PRIMARY KEY (`id_destinasi`),
  ADD KEY `id_kabkot` (`id_kabkot`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id_hotel`);

--
-- Indexes for table `kabkot`
--
ALTER TABLE `kabkot`
  ADD PRIMARY KEY (`id_kabkot`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `destinasi`
--
ALTER TABLE `destinasi`
  MODIFY `id_destinasi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id_hotel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kabkot`
--
ALTER TABLE `kabkot`
  MODIFY `id_kabkot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
