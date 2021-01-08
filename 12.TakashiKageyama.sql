-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 08, 2021 at 05:59 PM
-- Server version: 5.7.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `gs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `bookname` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `star` int(5) NOT NULL DEFAULT '3',
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `bookname`, `url`, `star`, `comment`, `indate`) VALUES
(2, 'abcaawd', 'aaa', 3, 'あいうえお', '2021-01-09 02:36:58'),
(3, 'ggg', 'aaa', 3, 'あいうえお', '2021-01-09 02:36:58'),
(4, 'fff', 'aaa', 3, 'あいうえお', '2021-01-09 02:36:58'),
(5, 'eee', 'aaa', 3, 'あいうえお', '2021-01-09 02:36:58'),
(16, '株で富を築くバフェットの法則', 'https://www.amazon.co.jp/%E6%A0%AA%E3%81%A7%E5%AF%8C%E3%82%92%E7%AF%89%E3%81%8F%E3%83%90%E3%83%95%E3%82%A7%E3%83%83%E3%83%88%E3%81%AE%E6%B3%95%E5%89%87%EF%BC%BB%E6%9C%80%E6%96%B0%E7%89%88%EF%BC%BD-%E3%83%AD%E3%83%90%E3%83%BC%E3%83%88%E3%83%BBG%E3%83%BB%E3%83%8F%E3%82%B0%E3%82%B9%E3%83%88%E3%83%AD%E3%83%BC%E3%83%A0-ebook/dp/B00K12ZA66/?_encoding=UTF8&pd_rd_w=Wr296&pf_rd_p=14c8160f-ffdc-4692-8875-d1b271eb736f&pf_rd_r=1A202MAV75AP27HJGKYC&pd_rd_r=21fd7bb5-596e-46d0-a539-634a9695b89b&pd_rd_wg=auhit&ref_=pd_gw_wish', 5, 'いい本でした', '2021-01-09 02:38:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
