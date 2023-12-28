-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2023 at 01:45 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uni_site`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `username`, `password`) VALUES
(1, 'rr', '$2b$10$6zlJagSPLXU3/pabQZoLd.euYF.6sq5QWqiDjs1ph0JoM0n5pkKIq'),
(2, 'rkm', '$2b$10$mnkNHrC8uuu81hfXEwleUuylA19dxuNGXqRICl.rp.LannZwyC.oG'),
(3, 'rkm', '$2b$10$gosxLnh7Eq93/iKWOlW5H.DN0ulgVthhr2Tvxg6o2wulS5NgPXHzm'),
(4, 'rkm', '$2b$10$RZ6TCpDPnNCMzNetRVafkO.j/nwERB5ZMKiv4lEhaED398Ls3eFh.'),
(5, 'rkm', '$2b$10$Db/L.O2a9IxqB0MsAawgaeapx3cCOOYjSIEx1W3BQQ8k5mK8ffUaK'),
(7, 'sp', '$2b$10$O9aNoIRJxcLNeCisg62G2.fKOFVo.NmGM3ITVSZCrcDrvzSfxxqIe'),
(8, 'hola', '$2b$10$z4GrVn7SbIUL61LorcQQc.9iPbyuKoPIFneQ3kcfL50qEkeGTt5ky'),
(9, 'hey', '$2b$10$k3QNXlAKkZQjh7DLmu2LoedyG.Av6ORS3vAx3EyaDp3RNxIgJBzJq'),
(10, 'dddd', '$2b$10$i6QpofJHBX0o1rz5oUiLk.8bjga.xvQbd1l0dRrJLdNwLJFihzcy.'),
(11, 'dd', '$2b$10$PJ9RcRCo8U3JzWGFak4HIuHG0JhS7mzRHWekn2MeJvSQyvBChLgMi'),
(12, 'ravi', '$2b$10$mZRud/caOCv5YtkvkqvzNemIm49EK53M7PleBCX9T20eGn6hPOlMe'),
(13, 'rkm', '$2b$10$BrzxvVU6RbzejXJi8DvgM.9rl6lsXwWgedCznWClyN.Ry3CNx16Z.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
