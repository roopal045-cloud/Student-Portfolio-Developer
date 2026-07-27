-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2026 at 02:20 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `students_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `about` text NOT NULL,
  `education` text NOT NULL,
  `current_sem` varchar(20) NOT NULL,
  `cgpa` decimal(3,2) NOT NULL,
  `skills` text NOT NULL,
  `projects` longtext NOT NULL,
  `certifications` longtext NOT NULL,
  `internships` longtext NOT NULL,
  `achievements` longtext NOT NULL,
  `languages` longtext NOT NULL,
  `github` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `contact_email` varchar(200) NOT NULL,
  `status` enum('draft','published') NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `user_id`, `about`, `education`, `current_sem`, `cgpa`, `skills`, `projects`, `certifications`, `internships`, `achievements`, `languages`, `github`, `linkedin`, `contact_email`, `status`, `updated_at`) VALUES
(1, 1, 'I am a second year student currently working on my frontend skills.\r\nAspiring Full Stack developer', 'Board of secondary education , Rajasthan:94%\r\nSwami Keshwanand Institute of Technology \r\nB.Tech (2025-2029)', '3', 9.30, 'HTML, CSS, JavaScript, Bootstrap, React, php, MySQL , Github', 'Amazon homepage clone\r\nSalesBot\r\nFlowMind-AI\r\nBridalGlow- Salon Booking Platform', 'NPTEL', '', '', 'C ,C++', 'https://github.com//roopal045-cloud', 'https://www.linkedin.com/in/roopal-khandelwal-426957407/', 'khandelwalroopal045@gmail.com', 'draft', '2026-07-23 18:14:08'),
(2, 4, 'I am a second year student exploring frontend development', 'B.Tech cse', '3', 9.55, 'HTML,CSS,js', 'Currency Converter', '', 'GSSoC', '', 'C, C++', 'https://github.com//priyanshiy1312-ui', '', 'priyanshi@gmail.com', 'draft', '2026-07-11 03:52:58'),
(3, 3, 'I am a second year student aspiring to be full stack developer.\r\n', 'B.Tech Cse', '3', 8.50, 'HTML,CSS,js,node.js,Express,Mogodb,Bootstrap', 'EcoTrace\r\nSarkariSathi', 'Project-expo', '3 months internship at 1Stop', '', 'C , C++', 'https://github.com//rajshree-0512cloud', '', 'rajshree@gmail.com', 'draft', '2026-07-23 17:43:54'),
(4, 5, 'I am lovely', '', '', 0.00, '', '', '', '', '', '', '', '', '', 'draft', '2026-07-23 14:37:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `username` varchar(100) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `full_name`, `email`, `phone`, `password`, `created_at`) VALUES
(1, 'B250760', 'Roopal Khandelwal', 'khandelwalroopal045@gmail.com', '6005879342', '$2y$10$PVucHyRsAJtjm35OimUTielpuwHlbyRJWS.EFTMhnpPsX1KvCoFVS', '2026-07-10 19:53:17'),
(2, 'B251432', 'Sakshi ', 'sakshi@gmailcom', '6005879342', '$2y$10$zLXO8OIyswz4i4sS7MRm6uBGKYUYe5gka5auj1SFB/iRQdjux8I7.', '2026-07-10 22:02:25'),
(3, 'rajshreekavia', 'Rajshree Kavia', 'rajshree@gmail.com', '9166473086', '$2y$10$Z68mtJ9TUf3i80iocm.hk.b5A5aQssqE.S5tcAtYrZ5yYzHr1/6i6', '2026-07-11 03:24:27'),
(4, 'B250506', 'Priyanshi', 'priyanshi@gmail.com', '9829992288', '$2y$10$nr8wh8.Gke5/6o2pfOFk0e9XzIqJC97eIKeeLD46Z95iGtsOQ./iK', '2026-07-11 03:37:23'),
(5, 'lovelysolet', 'Lovely Solet', 'lovely@gmail.com', '00000000000', '$2y$10$i4dpvb6qzfkbofzEZ1JB4uXoCWSmqGDV/abhzd0fO.ViJUvNSS8du', '2026-07-23 14:34:28'),
(6, 'B250760', 'Roopal Khandelwal', 'khandelwalroopal045@gmail.com', '8290557339', '$2y$10$A7Qc3RoHE20bKh6eIprBh.n8d23ZQgdYAk.OOkIdSJGwh1vIhPYZ.', '2026-07-23 18:08:35'),
(7, 'mahi', 'Mahi rajawat', 'mahi@gmail.com', '8955932325', '$2y$10$3a0hU6V0n3oesyDdeUHbYeMi0DBuKma7m9Q4/3wieMnBHlI5cKKHC', '2026-07-26 12:05:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
