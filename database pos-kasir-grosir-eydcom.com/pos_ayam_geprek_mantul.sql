-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2023 at 10:36 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos-kasir-grosir-eydcom.com`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `barang_id` int(11) NOT NULL,
  `barang_kode` varchar(500) NOT NULL,
  `barang_kode_slug` varchar(500) NOT NULL,
  `barang_kode_count` int(11) NOT NULL,
  `barang_nama` varchar(250) NOT NULL,
  `barang_harga_beli` varchar(250) NOT NULL,
  `barang_harga` varchar(250) NOT NULL,
  `barang_harga_grosir_1` int(11) NOT NULL,
  `barang_harga_grosir_2` int(11) NOT NULL,
  `barang_harga_s2` int(11) NOT NULL,
  `barang_harga_grosir_1_s2` int(11) NOT NULL,
  `barang_harga_grosir_2_s2` int(11) NOT NULL,
  `barang_harga_s3` int(11) NOT NULL,
  `barang_harga_grosir_1_s3` int(11) NOT NULL,
  `barang_harga_grosir_2_s3` int(11) NOT NULL,
  `barang_stock` text NOT NULL,
  `barang_tanggal` varchar(250) NOT NULL,
  `barang_kategori_id` int(11) NOT NULL,
  `kategori_id` varchar(250) NOT NULL,
  `barang_satuan_id` varchar(250) NOT NULL,
  `satuan_id` varchar(250) NOT NULL,
  `satuan_id_2` int(11) NOT NULL,
  `satuan_id_3` int(11) NOT NULL,
  `satuan_isi_1` int(11) NOT NULL,
  `satuan_isi_2` int(11) NOT NULL,
  `satuan_isi_3` int(11) NOT NULL,
  `barang_deskripsi` text NOT NULL,
  `barang_option_sn` int(11) NOT NULL,
  `barang_terjual` int(11) NOT NULL,
  `barang_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`barang_id`, `barang_kode`, `barang_kode_slug`, `barang_kode_count`, `barang_nama`, `barang_harga_beli`, `barang_harga`, `barang_harga_grosir_1`, `barang_harga_grosir_2`, `barang_harga_s2`, `barang_harga_grosir_1_s2`, `barang_harga_grosir_2_s2`, `barang_harga_s3`, `barang_harga_grosir_1_s3`, `barang_harga_grosir_2_s3`, `barang_stock`, `barang_tanggal`, `barang_kategori_id`, `kategori_id`, `barang_satuan_id`, `satuan_id`, `satuan_id_2`, `satuan_id_3`, `satuan_isi_1`, `satuan_isi_2`, `satuan_isi_3`, `barang_deskripsi`, `barang_option_sn`, `barang_terjual`, `barang_cabang`) VALUES
(83, 'KERTAS F4', 'KERTAS-F4', 1, 'KERTAS F4', '40000', '50000', 0, 0, 0, 0, 0, 0, 0, 0, '5', '19 September 2023 4:22:58 pm', 8, '8', '4', '4', 4, 0, 1, 0, 0, 'KERTAS F4', 0, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `barang_sn`
--

CREATE TABLE `barang_sn` (
  `barang_sn_id` int(11) NOT NULL,
  `barang_sn_desc` text NOT NULL,
  `barang_kode_slug` varchar(500) NOT NULL,
  `barang_sn_status` int(11) NOT NULL,
  `barang_sn_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_nama` varchar(500) NOT NULL,
  `customer_tlpn` varchar(250) NOT NULL,
  `customer_email` varchar(250) NOT NULL,
  `customer_alamat` text NOT NULL,
  `customer_create` varchar(250) NOT NULL,
  `customer_status` varchar(250) NOT NULL,
  `customer_category` int(11) NOT NULL,
  `customer_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_nama`, `customer_tlpn`, `customer_email`, `customer_alamat`, `customer_create`, `customer_status`, `customer_category`, `customer_cabang`) VALUES
(0, 'Customer Umum', '', '', '', '', '1', 0, 0),
(1, 'Dari Marketplace', '', '', '', '', '1', 0, 0),
(20, 'ELVIS', '081279721081', 'elvis.eydcom@gmail.com', 'KOTABUMI', '18 November 2023 3:11:51 pm', '1', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ekspedisi`
--

CREATE TABLE `ekspedisi` (
  `ekspedisi_id` int(11) NOT NULL,
  `ekspedisi_nama` varchar(500) NOT NULL,
  `ekspedisi_status` varchar(250) NOT NULL,
  `ekspedisi_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ekspedisi`
--

INSERT INTO `ekspedisi` (`ekspedisi_id`, `ekspedisi_nama`, `ekspedisi_status`, `ekspedisi_cabang`) VALUES
(2, 'JNE', '1', 0),
(3, 'TIKI', '1', 0),
(4, 'POS', '1', 0),
(5, 'JNE Cabang', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hutang`
--

CREATE TABLE `hutang` (
  `hutang_id` int(11) NOT NULL,
  `hutang_invoice` text NOT NULL,
  `hutang_invoice_parent` text NOT NULL,
  `hutang_date` varchar(500) NOT NULL,
  `hutang_date_time` varchar(500) NOT NULL,
  `hutang_kasir` int(11) NOT NULL,
  `hutang_nominal` varchar(500) NOT NULL,
  `hutang_tipe_pembayaran` int(11) NOT NULL,
  `hutang_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hutang_kembalian`
--

CREATE TABLE `hutang_kembalian` (
  `hl_id` int(11) NOT NULL,
  `hl_invoice` text NOT NULL,
  `hl_invoice_parent` text NOT NULL,
  `hl_date` varchar(500) NOT NULL,
  `hl_date_time` varchar(500) NOT NULL,
  `hl_nominal` varchar(500) NOT NULL,
  `hl_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `penjualan_invoice` text NOT NULL,
  `penjualan_invoice_count` varchar(250) NOT NULL,
  `invoice_tgl` varchar(250) NOT NULL,
  `invoice_customer` varchar(500) NOT NULL,
  `invoice_customer_category` int(11) NOT NULL,
  `invoice_kurir` varchar(500) NOT NULL,
  `invoice_status_kurir` int(11) NOT NULL,
  `invoice_tipe_transaksi` int(11) NOT NULL,
  `invoice_total_beli` int(11) NOT NULL,
  `invoice_total` int(11) NOT NULL,
  `invoice_ongkir` int(11) NOT NULL,
  `invoice_diskon` int(11) NOT NULL,
  `invoice_sub_total` int(11) NOT NULL,
  `invoice_bayar` int(11) NOT NULL,
  `invoice_kembali` int(11) NOT NULL,
  `invoice_kasir` varchar(500) NOT NULL,
  `invoice_date` date NOT NULL,
  `invoice_date_year_month` varchar(250) NOT NULL,
  `invoice_date_edit` varchar(500) NOT NULL,
  `invoice_kasir_edit` varchar(250) NOT NULL,
  `invoice_total_beli_lama` int(11) NOT NULL,
  `invoice_total_lama` varchar(500) NOT NULL,
  `invoice_ongkir_lama` int(11) NOT NULL,
  `invoice_sub_total_lama` int(11) NOT NULL,
  `invoice_bayar_lama` varchar(500) NOT NULL,
  `invoice_kembali_lama` varchar(500) NOT NULL,
  `invoice_marketplace` varchar(500) NOT NULL,
  `invoice_ekspedisi` int(11) NOT NULL,
  `invoice_no_resi` varchar(500) NOT NULL,
  `invoice_date_selesai_kurir` varchar(500) NOT NULL,
  `invoice_piutang` int(11) NOT NULL,
  `invoice_piutang_dp` varchar(500) NOT NULL,
  `invoice_piutang_jatuh_tempo` varchar(500) NOT NULL,
  `invoice_piutang_lunas` int(11) NOT NULL,
  `invoice_draft` int(11) NOT NULL,
  `invoice_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `penjualan_invoice`, `penjualan_invoice_count`, `invoice_tgl`, `invoice_customer`, `invoice_customer_category`, `invoice_kurir`, `invoice_status_kurir`, `invoice_tipe_transaksi`, `invoice_total_beli`, `invoice_total`, `invoice_ongkir`, `invoice_diskon`, `invoice_sub_total`, `invoice_bayar`, `invoice_kembali`, `invoice_kasir`, `invoice_date`, `invoice_date_year_month`, `invoice_date_edit`, `invoice_kasir_edit`, `invoice_total_beli_lama`, `invoice_total_lama`, `invoice_ongkir_lama`, `invoice_sub_total_lama`, `invoice_bayar_lama`, `invoice_kembali_lama`, `invoice_marketplace`, `invoice_ekspedisi`, `invoice_no_resi`, `invoice_date_selesai_kurir`, `invoice_piutang`, `invoice_piutang_dp`, `invoice_piutang_jatuh_tempo`, `invoice_piutang_lunas`, `invoice_draft`, `invoice_cabang`) VALUES
(25, '202309191', '1', '19 September 2023 4:25:37 pm', '0', 0, '0', 1, 0, 40000, 50000, 0, 0, 50000, 50000, 0, '3', '2023-09-19', '2023-09', ' ', ' ', 40000, '50000', 0, 50000, '50000', '0', '', 0, '-', '-', 0, '0', '0', 0, 0, 0),
(26, '202309202', '2', '20 September 2023 12:38:07 pm', '0', 0, '18', 1, 0, 0, 0, 0, 0, 0, 100000, 100000, '3', '2023-09-20', '2023-09', '2023-10-12', '3', 80000, '100000', 0, 100000, '100000', '0', '', 0, '-', '-', 0, '0', '0', 0, 0, 0),
(27, '202310143', '3', '14 October 2023 9:31:19 pm', '0', 0, '0', 1, 0, 40000, 50000, 0, 0, 50000, 50000, 0, '17', '2023-10-14', '2023-10', ' ', ' ', 40000, '50000', 0, 50000, '50000', '0', '', 0, '-', '-', 0, '0', '0', 0, 0, 0),
(28, '202310184', '4', '18 October 2023 8:37:02 pm', '0', 0, '0', 1, 1, 40000, 50000, 0, 0, 50000, 50000, 0, '3', '2023-10-18', '2023-10', ' ', ' ', 40000, '50000', 0, 50000, '50000', '0', '', 0, '-', '-', 0, '0', '0', 0, 0, 0),
(29, '202310195', '5', '19 October 2023 2:52:42 pm', '0', 0, '0', 1, 0, 40000, 50000, 0, 0, 50000, 100000, 50000, '3', '2023-10-19', '2023-10', ' ', ' ', 40000, '50000', 0, 50000, '100000', '50000', '', 0, '-', '-', 0, '0', '0', 0, 0, 0),
(30, '202311186', '6', '18 November 2023 3:12:29 pm', '20', 0, '0', 1, 1, 40000, 50000, 0, 0, 50000, 50000, 0, '3', '2023-11-18', '2023-11', ' ', ' ', 40000, '50000', 0, 50000, '50000', '0', '', 0, '-', '-', 0, '0', '0', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_pembelian`
--

CREATE TABLE `invoice_pembelian` (
  `invoice_pembelian_id` int(11) NOT NULL,
  `pembelian_invoice` text NOT NULL,
  `pembelian_invoice_parent` text NOT NULL,
  `invoice_tgl` varchar(250) NOT NULL,
  `invoice_supplier` varchar(500) NOT NULL,
  `invoice_total` int(11) NOT NULL,
  `invoice_bayar` int(11) NOT NULL,
  `invoice_kembali` int(11) NOT NULL,
  `invoice_kasir` varchar(500) NOT NULL,
  `invoice_date` date NOT NULL,
  `invoice_date_edit` varchar(500) NOT NULL,
  `invoice_kasir_edit` varchar(250) NOT NULL,
  `invoice_total_lama` varchar(500) NOT NULL,
  `invoice_bayar_lama` varchar(500) NOT NULL,
  `invoice_kembali_lama` varchar(500) NOT NULL,
  `invoice_hutang` int(11) NOT NULL,
  `invoice_hutang_dp` varchar(500) NOT NULL,
  `invoice_hutang_jatuh_tempo` varchar(500) NOT NULL,
  `invoice_hutang_lunas` int(11) NOT NULL,
  `invoice_pembelian_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `invoice_pembelian`
--

INSERT INTO `invoice_pembelian` (`invoice_pembelian_id`, `pembelian_invoice`, `pembelian_invoice_parent`, `invoice_tgl`, `invoice_supplier`, `invoice_total`, `invoice_bayar`, `invoice_kembali`, `invoice_kasir`, `invoice_date`, `invoice_date_edit`, `invoice_kasir_edit`, `invoice_total_lama`, `invoice_bayar_lama`, `invoice_kembali_lama`, `invoice_hutang`, `invoice_hutang_dp`, `invoice_hutang_jatuh_tempo`, `invoice_hutang_lunas`, `invoice_pembelian_cabang`) VALUES
(5, '1', '20230919130', '19 September 2023 4:24:55 pm', '4', 400000, 400000, 0, '3                                  ', '2023-09-19', ' ', ' ', '400000', '400000', '0', 0, '0', '0', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_pembelian_number`
--

CREATE TABLE `invoice_pembelian_number` (
  `invoice_pembelian_number_id` int(11) NOT NULL,
  `invoice_pembelian_number_input` varchar(250) NOT NULL,
  `invoice_pembelian_number_parent` text NOT NULL,
  `invoice_pembelian_number_user` varchar(250) NOT NULL,
  `invoice_pembelian_number_delete` varchar(250) NOT NULL,
  `invoice_pembelian_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(500) NOT NULL,
  `kategori_status` varchar(250) NOT NULL,
  `kategori_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_nama`, `kategori_status`, `kategori_cabang`) VALUES
(8, 'Kabel', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `keranjang_id` int(11) NOT NULL,
  `keranjang_nama` varchar(500) NOT NULL,
  `keranjang_harga_beli` varchar(250) NOT NULL,
  `keranjang_harga` varchar(250) NOT NULL,
  `keranjang_harga_parent` int(11) NOT NULL,
  `keranjang_harga_edit` int(11) NOT NULL,
  `keranjang_satuan` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_kode_slug` varchar(500) NOT NULL,
  `keranjang_qty` int(11) NOT NULL,
  `keranjang_qty_view` int(11) NOT NULL,
  `keranjang_konversi_isi` int(11) NOT NULL,
  `keranjang_barang_sn_id` int(11) NOT NULL,
  `keranjang_barang_option_sn` int(11) NOT NULL,
  `keranjang_sn` text NOT NULL,
  `keranjang_id_kasir` int(11) NOT NULL,
  `keranjang_id_cek` varchar(500) NOT NULL,
  `keranjang_tipe_customer` int(11) NOT NULL,
  `keranjang_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keranjang_draft`
--

CREATE TABLE `keranjang_draft` (
  `keranjang_draf_id` int(11) NOT NULL,
  `keranjang_nama` varchar(250) NOT NULL,
  `keranjang_harga_beli` varchar(250) NOT NULL,
  `keranjang_harga` varchar(250) NOT NULL,
  `keranjang_harga_parent` int(11) NOT NULL,
  `keranjang_harga_edit` int(11) NOT NULL,
  `keranjang_satuan` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_kode_slug` varchar(250) NOT NULL,
  `keranjang_qty` int(11) NOT NULL,
  `keranjang_qty_view` int(11) NOT NULL,
  `keranjang_konversi_isi` int(11) NOT NULL,
  `keranjang_barang_sn_id` int(11) NOT NULL,
  `keranjang_barang_option_sn` int(11) NOT NULL,
  `keranjang_sn` text NOT NULL,
  `keranjang_id_kasir` int(11) NOT NULL,
  `keranjang_id_cek` varchar(500) NOT NULL,
  `keranjang_tipe_customer` int(11) NOT NULL,
  `keranjang_draft_status` int(11) NOT NULL,
  `keranjang_invoice` text NOT NULL,
  `keranjang_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keranjang_pembelian`
--

CREATE TABLE `keranjang_pembelian` (
  `keranjang_id` int(11) NOT NULL,
  `keranjang_nama` varchar(500) NOT NULL,
  `keranjang_harga` varchar(250) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `keranjang_qty` int(11) NOT NULL,
  `keranjang_id_kasir` int(11) NOT NULL,
  `keranjang_id_cek` varchar(500) NOT NULL,
  `keranjang_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keranjang_transfer`
--

CREATE TABLE `keranjang_transfer` (
  `keranjang_transfer_id` int(11) NOT NULL,
  `keranjang_transfer_nama` text NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_kode_slug` text NOT NULL,
  `keranjang_transfer_qty` int(11) NOT NULL,
  `keranjang_barang_sn_id` int(11) NOT NULL,
  `keranjang_barang_option_sn` int(11) NOT NULL,
  `keranjang_sn` text NOT NULL,
  `keranjang_transfer_id_kasir` int(11) NOT NULL,
  `keranjang_id_cek` varchar(500) NOT NULL,
  `keranjang_pengirim_cabang` int(11) NOT NULL,
  `keranjang_penerima_cabang` int(11) NOT NULL,
  `keranjang_transfer_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laba_bersih`
--

CREATE TABLE `laba_bersih` (
  `lb_id` int(11) NOT NULL,
  `lb_pendapatan_lain` int(11) NOT NULL,
  `lb_pengeluaran_gaji` int(11) NOT NULL,
  `lb_pengeluaran_listrik` int(11) NOT NULL,
  `lb_pengeluaran_tlpn_internet` int(11) NOT NULL,
  `lb_pengeluaran_perlengkapan_toko` int(11) NOT NULL,
  `lb_pengeluaran_biaya_penyusutan` int(11) NOT NULL,
  `lb_pengeluaran_bensin` int(11) NOT NULL,
  `lb_pengeluaran_tak_terduga` int(11) NOT NULL,
  `lb_pengeluaran_lain` int(11) NOT NULL,
  `lb_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `laba_bersih`
--

INSERT INTO `laba_bersih` (`lb_id`, `lb_pendapatan_lain`, `lb_pengeluaran_gaji`, `lb_pengeluaran_listrik`, `lb_pengeluaran_tlpn_internet`, `lb_pengeluaran_perlengkapan_toko`, `lb_pengeluaran_biaya_penyusutan`, `lb_pengeluaran_bensin`, `lb_pengeluaran_tak_terduga`, `lb_pengeluaran_lain`, `lb_cabang`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `pembelian_id` int(11) NOT NULL,
  `pembelian_barang_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_qty` int(11) NOT NULL,
  `keranjang_id_kasir` int(11) NOT NULL,
  `pembelian_invoice` text NOT NULL,
  `pembelian_invoice_parent` text NOT NULL,
  `pembelian_date` date NOT NULL,
  `barang_qty_lama` varchar(500) NOT NULL,
  `barang_qty_lama_parent` varchar(500) NOT NULL,
  `barang_harga_beli` int(11) NOT NULL,
  `pembelian_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`pembelian_id`, `pembelian_barang_id`, `barang_id`, `barang_qty`, `keranjang_id_kasir`, `pembelian_invoice`, `pembelian_invoice_parent`, `pembelian_date`, `barang_qty_lama`, `barang_qty_lama_parent`, `barang_harga_beli`, `pembelian_cabang`) VALUES
(5, 83, 83, 10, 3, '1', '20230919130', '2023-09-19', '10', '10', 40000, 0);

--
-- Triggers `pembelian`
--
DELIMITER $$
CREATE TRIGGER `barang_pembelian` AFTER INSERT ON `pembelian` FOR EACH ROW BEGIN 
	UPDATE barang SET barang_stock = barang_stock+new.barang_qty
    WHERE barang_id = NEW.barang_id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tidak_jado` AFTER DELETE ON `pembelian` FOR EACH ROW BEGIN
 UPDATE barang
 SET barang_stock = barang_stock - OLD.barang_qty
 WHERE
 barang_id = OLD.barang_id;
 END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `penjualan_id` int(11) NOT NULL,
  `penjualan_barang_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_qty` int(11) NOT NULL,
  `barang_qty_keranjang` int(11) NOT NULL,
  `barang_qty_konversi_isi` int(11) NOT NULL,
  `keranjang_satuan` int(11) NOT NULL,
  `keranjang_harga_beli` varchar(500) NOT NULL,
  `keranjang_harga` varchar(500) NOT NULL,
  `keranjang_harga_parent` int(11) NOT NULL,
  `keranjang_harga_edit` int(11) NOT NULL,
  `keranjang_id_kasir` int(11) NOT NULL,
  `penjualan_invoice` text NOT NULL,
  `penjualan_date` date NOT NULL,
  `penjualan_date_year_month` varchar(250) NOT NULL,
  `barang_qty_lama` varchar(500) NOT NULL,
  `barang_qty_lama_parent` varchar(500) NOT NULL,
  `barang_option_sn` int(11) NOT NULL,
  `barang_sn_id` int(11) NOT NULL,
  `barang_sn_desc` text NOT NULL,
  `invoice_customer_category` int(11) NOT NULL,
  `penjualan_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`penjualan_id`, `penjualan_barang_id`, `barang_id`, `barang_qty`, `barang_qty_keranjang`, `barang_qty_konversi_isi`, `keranjang_satuan`, `keranjang_harga_beli`, `keranjang_harga`, `keranjang_harga_parent`, `keranjang_harga_edit`, `keranjang_id_kasir`, `penjualan_invoice`, `penjualan_date`, `penjualan_date_year_month`, `barang_qty_lama`, `barang_qty_lama_parent`, `barang_option_sn`, `barang_sn_id`, `barang_sn_desc`, `invoice_customer_category`, `penjualan_cabang`) VALUES
(35, 83, 83, 1, 1, 1, 4, '40000', '50000', 50000, 0, 3, '202309191', '2023-09-19', '2023-09', '1', '1', 0, 0, '0', 0, 0),
(36, 83, 83, 0, 2, 1, 4, '40000', '50000', 50000, 0, 3, '202309202', '2023-09-20', '2023-09', '2', '2', 0, 0, '0', 0, 0),
(37, 83, 83, 1, 1, 1, 4, '40000', '50000', 50000, 0, 17, '202310143', '2023-10-14', '2023-10', '1', '1', 0, 0, '0', 0, 0),
(38, 83, 83, 1, 1, 1, 4, '40000', '50000', 50000, 0, 3, '202310184', '2023-10-18', '2023-10', '1', '1', 0, 0, '0', 0, 0),
(39, 83, 83, 1, 1, 1, 4, '40000', '50000', 50000, 0, 3, '202310195', '2023-10-19', '2023-10', '1', '1', 0, 0, '0', 0, 0),
(40, 83, 83, 1, 1, 1, 4, '40000', '50000', 50000, 0, 3, '202311186', '2023-11-18', '2023-11', '1', '1', 0, 0, '0', 0, 0);

--
-- Triggers `penjualan`
--
DELIMITER $$
CREATE TRIGGER `batal_beli` AFTER DELETE ON `penjualan` FOR EACH ROW BEGIN
 UPDATE barang
 SET barang_stock = barang_stock + OLD.barang_qty_keranjang,
 barang_terjual = barang_terjual - OLD.barang_qty_keranjang
 WHERE
 barang_id = OLD.barang_id;
 END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `penjualan_barang` AFTER INSERT ON `penjualan` FOR EACH ROW BEGIN
	UPDATE barang SET barang_stock=barang_stock-NEW.barang_qty_keranjang
    WHERE barang_id = NEW.barang_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `piutang`
--

CREATE TABLE `piutang` (
  `piutang_id` int(11) NOT NULL,
  `piutang_invoice` text NOT NULL,
  `piutang_date` varchar(500) NOT NULL,
  `piutang_date_time` varchar(500) NOT NULL,
  `piutang_kasir` int(11) NOT NULL,
  `piutang_nominal` varchar(500) NOT NULL,
  `piutang_tipe_pembayaran` int(11) NOT NULL,
  `piutang_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `piutang_kembalian`
--

CREATE TABLE `piutang_kembalian` (
  `pl_id` int(11) NOT NULL,
  `pl_invoice` text NOT NULL,
  `pl_date` varchar(500) NOT NULL,
  `pl_date_time` varchar(500) NOT NULL,
  `pl_nominal` varchar(250) NOT NULL,
  `pl_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `retur`
--

CREATE TABLE `retur` (
  `retur_id` int(11) NOT NULL,
  `retur_barang_id` varchar(500) NOT NULL,
  `retur_invoice` varchar(500) NOT NULL,
  `retur_admin_id` varchar(500) NOT NULL,
  `retur_date` date NOT NULL,
  `retur_alasan` text NOT NULL,
  `barang_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE `satuan` (
  `satuan_id` int(11) NOT NULL,
  `satuan_nama` varchar(500) NOT NULL,
  `satuan_status` varchar(250) NOT NULL,
  `satuan_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`satuan_id`, `satuan_nama`, `satuan_status`, `satuan_cabang`) VALUES
(4, 'Pcs', '1', 0),
(10, 'Pack', '1', 0),
(11, 'Dus', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `stock_opname`
--

CREATE TABLE `stock_opname` (
  `stock_opname_id` int(11) NOT NULL,
  `stock_opname_date_create` varchar(250) NOT NULL,
  `stock_opname_datetime_create` varchar(250) NOT NULL,
  `stock_opname_date_proses` varchar(250) NOT NULL,
  `stock_opname_user_create` int(11) NOT NULL,
  `stock_opname_user_eksekusi` int(11) NOT NULL,
  `stock_opname_status` int(11) NOT NULL,
  `stock_opname_user_upload` int(11) NOT NULL,
  `stock_opname_date_upload` varchar(250) NOT NULL,
  `stock_opname_datetime_upload` varchar(250) NOT NULL,
  `stock_opname_tipe` int(11) NOT NULL,
  `stock_opname_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_opname_hasil`
--

CREATE TABLE `stock_opname_hasil` (
  `soh_id` int(11) NOT NULL,
  `soh_stock_opname_id` int(11) NOT NULL,
  `soh_barang_id` int(11) NOT NULL,
  `soh_barang_kode` varchar(500) NOT NULL,
  `soh_barang_stock_system` int(11) NOT NULL,
  `soh_stock_fisik` int(11) NOT NULL,
  `soh_selisih` int(11) NOT NULL,
  `soh_note` text NOT NULL,
  `soh_date` varchar(250) NOT NULL,
  `soh_datetime` varchar(250) NOT NULL,
  `soh_tipe` int(11) NOT NULL,
  `soh_user` int(11) NOT NULL,
  `soh_barang_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Triggers `stock_opname_hasil`
--
DELIMITER $$
CREATE TRIGGER `opname_delete` AFTER DELETE ON `stock_opname_hasil` FOR EACH ROW BEGIN
 UPDATE barang
 SET barang_stock = OLD.soh_barang_stock_system
 WHERE
 barang_id = OLD.soh_barang_id;
 END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `opname_insert` AFTER INSERT ON `stock_opname_hasil` FOR EACH ROW BEGIN
	UPDATE barang SET barang_stock=NEW.soh_stock_fisik
    WHERE barang_id = NEW.soh_barang_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_nama` varchar(250) NOT NULL,
  `supplier_wa` varchar(250) NOT NULL,
  `supplier_alamat` text NOT NULL,
  `supplier_company` varchar(250) NOT NULL,
  `supplier_status` int(11) NOT NULL,
  `supplier_create` varchar(250) NOT NULL,
  `supplier_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `supplier_nama`, `supplier_wa`, `supplier_alamat`, `supplier_company`, `supplier_status`, `supplier_create`, `supplier_cabang`) VALUES
(2, 'Doni Afandi', '085780978675', 'Surabaya', 'PT Pemasok Produk', 1, '14 November 2020 7:31:51 pm', 0),
(4, 'Afandi', '085787654321', 'Surabaya', 'PT ABC', 1, '15 November 2020 7:46:06 pm', 0);

-- --------------------------------------------------------

--
-- Table structure for table `terlaris`
--

CREATE TABLE `terlaris` (
  `terlaris_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_terjual` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `terlaris`
--

INSERT INTO `terlaris` (`terlaris_id`, `barang_id`, `barang_terjual`) VALUES
(1, 83, 1),
(2, 83, 2),
(3, 83, 1),
(4, 83, 1),
(5, 83, 1),
(6, 83, 1);

--
-- Triggers `terlaris`
--
DELIMITER $$
CREATE TRIGGER `barang_terlaris` AFTER INSERT ON `terlaris` FOR EACH ROW BEGIN 
	UPDATE barang SET barang_terjual = barang_terjual+new.barang_terjual
    WHERE barang_id = NEW.barang_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `toko_id` int(11) NOT NULL,
  `toko_nama` varchar(500) NOT NULL,
  `toko_kota` varchar(250) NOT NULL,
  `toko_alamat` text NOT NULL,
  `toko_tlpn` varchar(250) NOT NULL,
  `toko_wa` varchar(250) NOT NULL,
  `toko_email` varchar(500) NOT NULL,
  `toko_print` int(11) NOT NULL,
  `toko_status` int(11) NOT NULL,
  `toko_ongkir` int(11) NOT NULL,
  `toko_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`toko_id`, `toko_nama`, `toko_kota`, `toko_alamat`, `toko_tlpn`, `toko_wa`, `toko_email`, `toko_print`, `toko_status`, `toko_ongkir`, `toko_cabang`) VALUES
(1, 'EYD COMPUTER', 'KELAPA TUJUH', 'KELAPA TUJUH', '081279721081', '081279721081', 'id.eydcom@gmail.com', 8, 1, 0, 0),
(2, 'EYD COMPUTER', 'KEBON EMPAT', 'KEBON EMPAT', '081279721081', '081279721081', 'suport.eydcom@gmail.com', 10, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `transfer_id` int(11) NOT NULL,
  `transfer_ref` text NOT NULL,
  `transfer_count` int(11) NOT NULL,
  `transfer_date` varchar(250) NOT NULL,
  `transfer_date_time` varchar(250) NOT NULL,
  `transfer_terima_date` varchar(250) NOT NULL,
  `transfer_terima_date_time` varchar(250) NOT NULL,
  `transfer_note` text NOT NULL,
  `transfer_pengirim_cabang` int(11) NOT NULL,
  `transfer_penerima_cabang` int(11) NOT NULL,
  `transfer_id_tipe_keluar` int(11) NOT NULL,
  `transfer_id_tipe_masuk` int(11) NOT NULL,
  `transfer_status` int(11) NOT NULL,
  `transfer_user` int(11) NOT NULL,
  `transfer_user_penerima` int(11) NOT NULL,
  `transfer_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_produk_keluar`
--

CREATE TABLE `transfer_produk_keluar` (
  `tpk_id` int(11) NOT NULL,
  `tpk_transfer_barang_id` int(11) NOT NULL,
  `tpk_barang_id` int(11) NOT NULL,
  `tpk_kode_slug` varchar(500) NOT NULL,
  `tpk_qty` int(11) NOT NULL,
  `tpk_ref` text NOT NULL,
  `tpk_date` varchar(11) NOT NULL,
  `tpk_date_time` varchar(500) NOT NULL,
  `tpk_barang_option_sn` int(11) NOT NULL,
  `tpk_barang_sn_id` int(11) NOT NULL,
  `tpk_barang_sn_desc` varchar(500) NOT NULL,
  `tpk_user` int(11) NOT NULL,
  `tpk_pengirim_cabang` int(11) NOT NULL,
  `tpk_penerima_cabang` int(11) NOT NULL,
  `tpk_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Triggers `transfer_produk_keluar`
--
DELIMITER $$
CREATE TRIGGER `batal_transfer` AFTER DELETE ON `transfer_produk_keluar` FOR EACH ROW BEGIN
 UPDATE barang
 SET barang_stock = barang_stock + OLD.tpk_qty
 WHERE
 barang_id = OLD.tpk_barang_id;
 END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `pengeluaran_barang` AFTER INSERT ON `transfer_produk_keluar` FOR EACH ROW BEGIN
	UPDATE barang SET barang_stock=barang_stock-NEW.tpk_qty
    WHERE barang_id = NEW.tpk_barang_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_produk_masuk`
--

CREATE TABLE `transfer_produk_masuk` (
  `tpm_id` int(11) NOT NULL,
  `tpm_kode_slug` text NOT NULL,
  `tpm_qty` int(11) NOT NULL,
  `tpm_ref` text NOT NULL,
  `tpm_date` varchar(250) NOT NULL,
  `tpm_date_time` varchar(250) NOT NULL,
  `tpm_barang_option_sn` int(11) NOT NULL,
  `tpm_barang_sn_id` int(11) NOT NULL,
  `tpm_barang_sn_desc` varchar(500) NOT NULL,
  `tpm_user` int(11) NOT NULL,
  `tpm_pengirim_cabang` int(11) NOT NULL,
  `tpm_penerima_cabang` int(11) NOT NULL,
  `tpm_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Triggers `transfer_produk_masuk`
--
DELIMITER $$
CREATE TRIGGER `tambah_stock_cabang` AFTER INSERT ON `transfer_produk_masuk` FOR EACH ROW BEGIN
	UPDATE barang SET barang_stock=barang_stock+NEW.tpm_qty
    WHERE barang_kode_slug = NEW.tpm_kode_slug && barang_cabang = NEW.tpm_penerima_cabang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_select_cabang`
--

CREATE TABLE `transfer_select_cabang` (
  `tsc_id` int(11) NOT NULL,
  `tsc_cabang_pusat` int(11) NOT NULL,
  `tsc_cabang_penerima` int(11) NOT NULL,
  `tsc_user_id` int(11) NOT NULL,
  `tsc_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transfer_select_cabang`
--

INSERT INTO `transfer_select_cabang` (`tsc_id`, `tsc_cabang_pusat`, `tsc_cabang_penerima`, `tsc_user_id`, `tsc_cabang`) VALUES
(2, 0, 1, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(500) NOT NULL,
  `user_no_hp` varchar(250) NOT NULL,
  `user_alamat` text NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_password` varchar(500) NOT NULL,
  `user_create` varchar(250) NOT NULL,
  `user_level` varchar(250) NOT NULL,
  `user_status` varchar(250) NOT NULL,
  `user_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_nama`, `user_no_hp`, `user_alamat`, `user_email`, `user_password`, `user_create`, `user_level`, `user_status`, `user_cabang`) VALUES
(3, 'eydcom.com', '081279721081', 'Kotabumi', 'id.eydcom@gmail.com', '10e0f2a34d3c76f1a2a4645d380299cb', '30 March 2020 9:17:00 pm', 'super admin', '1', 0),
(16, 'ADMIN', '081279721081', 'Kotabumi', 'admin.eydcom@gmail.com', '10e0f2a34d3c76f1a2a4645d380299cb', '19 September 2023 3:39:27 pm', 'admin', '1', 0),
(17, 'KASIR', '081279721081', 'Kotabumi', 'kasir.eydcom@gmail.com', '10e0f2a34d3c76f1a2a4645d380299cb', '19 September 2023 3:40:08 pm', 'kasir', '1', 0),
(18, 'KURIR', '081279721081', 'Kotabumi', 'kurir.eydcom@gmail.com', '10e0f2a34d3c76f1a2a4645d380299cb', '19 September 2023 3:41:50 pm', 'kurir', '1', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`barang_id`);

--
-- Indexes for table `barang_sn`
--
ALTER TABLE `barang_sn`
  ADD PRIMARY KEY (`barang_sn_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `ekspedisi`
--
ALTER TABLE `ekspedisi`
  ADD PRIMARY KEY (`ekspedisi_id`);

--
-- Indexes for table `hutang`
--
ALTER TABLE `hutang`
  ADD PRIMARY KEY (`hutang_id`);

--
-- Indexes for table `hutang_kembalian`
--
ALTER TABLE `hutang_kembalian`
  ADD PRIMARY KEY (`hl_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `invoice_pembelian`
--
ALTER TABLE `invoice_pembelian`
  ADD PRIMARY KEY (`invoice_pembelian_id`);

--
-- Indexes for table `invoice_pembelian_number`
--
ALTER TABLE `invoice_pembelian_number`
  ADD PRIMARY KEY (`invoice_pembelian_number_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`keranjang_id`);

--
-- Indexes for table `keranjang_draft`
--
ALTER TABLE `keranjang_draft`
  ADD PRIMARY KEY (`keranjang_draf_id`);

--
-- Indexes for table `keranjang_pembelian`
--
ALTER TABLE `keranjang_pembelian`
  ADD PRIMARY KEY (`keranjang_id`);

--
-- Indexes for table `keranjang_transfer`
--
ALTER TABLE `keranjang_transfer`
  ADD PRIMARY KEY (`keranjang_transfer_id`);

--
-- Indexes for table `laba_bersih`
--
ALTER TABLE `laba_bersih`
  ADD PRIMARY KEY (`lb_id`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`pembelian_id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`penjualan_id`);

--
-- Indexes for table `piutang`
--
ALTER TABLE `piutang`
  ADD PRIMARY KEY (`piutang_id`);

--
-- Indexes for table `piutang_kembalian`
--
ALTER TABLE `piutang_kembalian`
  ADD PRIMARY KEY (`pl_id`);

--
-- Indexes for table `retur`
--
ALTER TABLE `retur`
  ADD PRIMARY KEY (`retur_id`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`satuan_id`);

--
-- Indexes for table `stock_opname`
--
ALTER TABLE `stock_opname`
  ADD PRIMARY KEY (`stock_opname_id`);

--
-- Indexes for table `stock_opname_hasil`
--
ALTER TABLE `stock_opname_hasil`
  ADD PRIMARY KEY (`soh_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `terlaris`
--
ALTER TABLE `terlaris`
  ADD PRIMARY KEY (`terlaris_id`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`toko_id`);

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`transfer_id`);

--
-- Indexes for table `transfer_produk_keluar`
--
ALTER TABLE `transfer_produk_keluar`
  ADD PRIMARY KEY (`tpk_id`);

--
-- Indexes for table `transfer_produk_masuk`
--
ALTER TABLE `transfer_produk_masuk`
  ADD PRIMARY KEY (`tpm_id`);

--
-- Indexes for table `transfer_select_cabang`
--
ALTER TABLE `transfer_select_cabang`
  ADD PRIMARY KEY (`tsc_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `barang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `barang_sn`
--
ALTER TABLE `barang_sn`
  MODIFY `barang_sn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ekspedisi`
--
ALTER TABLE `ekspedisi`
  MODIFY `ekspedisi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hutang`
--
ALTER TABLE `hutang`
  MODIFY `hutang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hutang_kembalian`
--
ALTER TABLE `hutang_kembalian`
  MODIFY `hl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `invoice_pembelian`
--
ALTER TABLE `invoice_pembelian`
  MODIFY `invoice_pembelian_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `invoice_pembelian_number`
--
ALTER TABLE `invoice_pembelian_number`
  MODIFY `invoice_pembelian_number_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `keranjang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `keranjang_draft`
--
ALTER TABLE `keranjang_draft`
  MODIFY `keranjang_draf_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keranjang_pembelian`
--
ALTER TABLE `keranjang_pembelian`
  MODIFY `keranjang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `keranjang_transfer`
--
ALTER TABLE `keranjang_transfer`
  MODIFY `keranjang_transfer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `laba_bersih`
--
ALTER TABLE `laba_bersih`
  MODIFY `lb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `pembelian_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `penjualan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `piutang`
--
ALTER TABLE `piutang`
  MODIFY `piutang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `piutang_kembalian`
--
ALTER TABLE `piutang_kembalian`
  MODIFY `pl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `retur`
--
ALTER TABLE `retur`
  MODIFY `retur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `satuan`
--
ALTER TABLE `satuan`
  MODIFY `satuan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `stock_opname`
--
ALTER TABLE `stock_opname`
  MODIFY `stock_opname_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `stock_opname_hasil`
--
ALTER TABLE `stock_opname_hasil`
  MODIFY `soh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `terlaris`
--
ALTER TABLE `terlaris`
  MODIFY `terlaris_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
  MODIFY `toko_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `transfer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transfer_produk_keluar`
--
ALTER TABLE `transfer_produk_keluar`
  MODIFY `tpk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transfer_produk_masuk`
--
ALTER TABLE `transfer_produk_masuk`
  MODIFY `tpm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transfer_select_cabang`
--
ALTER TABLE `transfer_select_cabang`
  MODIFY `tsc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
