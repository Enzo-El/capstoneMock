-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2024 at 11:34 AM
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
-- Database: `omniview`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `customer_sales` decimal(10,2) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `firstname`, `middlename`, `lastname`, `address`, `contact_number`, `customer_sales`, `status`, `date_added`, `date_updated`) VALUES
(3, 'Lorenzo Laurel', 'N/A', 'Chaolan', 'Naga City, Camarines Sur', '09195499133', 12000.00, 'Active', '2024-02-20 16:00:00', '2024-02-21 06:32:11'),
(5, 'Christopher', 'Jorge', 'Abellana', 'Naga City, Camarines Sur', '09462871234', 6000.00, 'Active', '2024-02-20 16:00:00', '2024-02-21 05:00:17'),
(6, 'Jupiter', 'Silver', 'Arcenas', 'Naga City, Camarines Sur', '09152802223', 2500.00, 'Inactive', '2024-02-20 16:00:00', '2024-02-22 17:57:11'),
(7, 'Jasper', 'Elijah', 'Senit', 'Naga City, Camarines Sur', '09162825443', 7000.00, 'Active', '2024-02-20 16:00:00', '2024-02-22 17:57:21'),
(8, 'Jose Jaime', 'Jorz', 'Tandog, Jr.', 'Naga City, Camarines Sur', '09123000258', 10000.00, 'Inactive', '2024-02-20 16:00:00', '2024-02-21 05:28:28'),
(12, 'Aisiah', 'Mandagit', 'Severino', 'Naga City, Camarines Sur', '09105201234', 6500.00, 'Inactive', '2024-02-20 16:00:00', '2024-02-21 11:41:32'),
(13, 'Thomari Yvan', 'Wayne', 'Gabito', 'Naga City, Camarines Sur', '09150023467', 2500.00, 'Active', '2024-02-21 16:00:00', '2024-02-22 17:52:19'),
(14, 'Robert', 'Ian', 'Chua', 'Naga City, Camarines Sur', '09142035788', 3500.00, 'Inactive', '2024-02-21 16:00:00', '2024-02-22 17:52:46'),
(15, 'Iori', 'Shun', 'Yoo', 'Labo, Camarines Norte', '09772543120', 99999999.99, 'Active', '2024-02-21 16:00:00', '2024-02-22 17:53:54'),
(16, 'Vivian', 'Angel', 'Letrodo', 'Naga City, Camarines Sur', '09182547773', 8500.00, 'Active', '2024-02-21 16:00:00', '2024-02-22 17:54:26'),
(17, 'Lee', 'Chao', 'Lan', 'Buhi, Camarines Sur', '09174412365', 5600.00, 'Active', '2024-02-21 16:00:00', '2024-02-22 17:56:55'),
(18, 'Lorenof', 'Garol', 'Almeda', 'Naga City, Camarines Sur', '0945562010', 3000.00, 'Active', '2024-02-21 16:00:00', '2024-02-22 17:56:04'),
(19, 'Trish', 'Ardante', 'Miravil', 'Iriga City, Camarines Sur', '09203887930', 4700.00, 'Active', '2024-02-21 16:00:00', '2024-02-22 17:56:45'),
(20, 'Bryan', 'Enginesort', 'Fury', 'Milaor, Camarines Sur', '09810927320', 4500.00, 'Inactive', '2024-02-21 16:00:00', '2024-02-22 18:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `stock`, `price`, `date_added`, `date_updated`) VALUES
(3, 'Product 3', 5, 23.00, '2024-02-20 11:06:33', '2024-02-20 16:00:00'),
(5, 'Product 5', 7, 35.00, '2024-02-20 11:13:36', '2024-02-22 17:03:37'),
(7, 'Product 6', 2, 19.00, '2024-02-19 16:00:00', '2024-02-20 11:22:17'),
(8, 'Product 2', 6, 28.00, '2024-02-19 16:00:00', '2024-02-22 17:31:39'),
(11, 'Product 7', 14, 16.00, '2024-02-19 16:00:00', '2024-02-22 17:31:49'),
(12, 'Product 10', 17, 35.00, '2024-02-20 16:00:00', '2024-02-22 17:02:52'),
(16, 'Product C', 6, 24.00, '2024-02-20 16:00:00', '2024-02-22 17:02:39'),
(18, 'Product 12', 2, 20.00, '2024-02-21 16:00:00', '2024-02-22 16:55:19'),
(19, 'Product X', 25, 500.00, '2024-02-21 16:00:00', '2024-02-22 16:55:32'),
(20, 'Product Y', 40, 120.00, '2024-02-21 16:00:00', '2024-02-22 16:55:45'),
(21, 'Product 100', 100, 1500.00, '2024-02-21 16:00:00', '2024-02-22 16:55:59'),
(22, 'Product AB', 12, 15.00, '2024-02-21 16:00:00', '2024-02-22 16:57:35'),
(23, 'Product XXX', 2, 700.00, '2024-02-21 16:00:00', '2024-02-22 16:57:53'),
(24, 'Product K', 25, 200.00, '2024-02-21 16:00:00', '2024-02-22 16:58:10'),
(25, 'Rexona', 12, 47.00, '2024-02-21 16:00:00', '2024-02-22 17:29:27'),
(26, 'Clear Shampoo', 12, 180.00, '2024-02-21 16:00:00', '2024-02-22 17:31:25');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_list`
--

CREATE TABLE `supplier_list` (
  `supplier_id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `status` enum('Paid','Unpaid') NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier_list`
--

INSERT INTO `supplier_list` (`supplier_id`, `company_name`, `address`, `contact_number`, `status`, `amount`, `date_added`, `date_updated`) VALUES
(1, 'ABC Company', 'Naga City, Camarines Sur', '09195499133', 'Paid', 1000.00, '2024-02-20 16:00:00', '2024-02-21 10:32:24'),
(2, 'DEF Company', 'Naga City, Camarines Sur', '09125480003', 'Paid', 2000.00, '2024-02-20 16:00:00', '2024-02-21 10:26:25'),
(3, 'GHI Company', 'Naga City, Camarines Sur', '09162581345', 'Unpaid', 3000.00, '2024-02-20 16:00:00', '2024-02-21 10:27:01'),
(4, 'JKL Company', 'Naga City, Camarines Sur', '09175220316', 'Paid', 4000.00, '2024-02-20 16:00:00', '2024-02-21 10:27:29'),
(5, 'MNO Compnay', 'Naga City, Camarines Sur', '09051664320', 'Unpaid', 6500.00, '2024-02-20 16:00:00', '2024-02-21 10:32:37'),
(6, 'PQR Company', 'Naga City, Camarines Sur', '09453661870', 'Paid', 6720.00, '2024-02-20 16:00:00', '2024-02-21 10:32:16'),
(9, 'XYZ Company', 'Naga City, Camarines Sur', '09273951423', 'Paid', 2000.00, '2024-02-21 16:00:00', '2024-02-22 17:17:12'),
(10, 'ZIA Company', 'Naga City, Camarines Sur', '09125556287', 'Paid', 4500.00, '2024-02-21 16:00:00', '2024-02-22 17:17:34'),
(11, 'RIO Company', 'Naga City, Camarines Sur', '09120010542', 'Unpaid', 4000.00, '2024-02-21 16:00:00', '2024-02-22 17:18:00'),
(12, 'AAA Company', 'Naga City, Camarines Sur', '09164528879', 'Unpaid', 2500.00, '2024-02-21 16:00:00', '2024-02-22 17:18:52'),
(13, 'ZBD Company', 'Naga City, Camarines Sur', '09170527792', 'Unpaid', 1400.00, '2024-02-21 16:00:00', '2024-02-22 17:21:13'),
(14, 'DIY Company', 'Naga City, Camarines Sur', '09103956420', 'Unpaid', 2500.00, '2024-02-21 16:00:00', '2024-02-22 17:21:42'),
(15, 'CC Company', 'Naga City, Camarines Sur', '09452871130', 'Paid', 5000.00, '2024-02-21 16:00:00', '2024-02-22 17:22:10'),
(16, 'XVI Company', 'Camaligan, Camarines Sur', '09162562330', 'Unpaid', 2560.00, '2024-02-21 16:00:00', '2024-02-22 17:34:21'),
(17, 'NBA Company', 'Buhi, Camarines Sur', '09154482013', 'Unpaid', 2500.00, '2024-02-21 16:00:00', '2024-02-22 17:34:58'),
(18, 'SF6 Company', 'Iriga City, Camarines Sur', '09772891003', 'Paid', 12000.00, '2024-02-21 16:00:00', '2024-02-22 17:35:33'),
(19, 'NGA Company', 'San Fernando, Camarines Sur', '09245889102', 'Unpaid', 150.00, '2024-02-21 16:00:00', '2024-02-22 17:36:09'),
(20, 'BAC RES, Inc.', 'Lagonoy, Camarines Sur', '09302891223', 'Paid', 1400.00, '2024-02-21 16:00:00', '2024-02-22 17:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_list`
--

CREATE TABLE `transaction_list` (
  `transaction_id` int(11) NOT NULL,
  `transaction_date` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `transaction_type` enum('cash_income','cash_expense','credit_receivable','credit_payable') NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_list`
--

INSERT INTO `transaction_list` (`transaction_id`, `transaction_date`, `description`, `amount`, `transaction_type`, `date_added`, `date_updated`) VALUES
(1, '2024-01-02', 'Sales', 1500.00, 'cash_income', '2024-02-21 16:00:00', '2024-02-22 17:04:40'),
(2, '2024-01-29', 'Revenue from Services', 5000.00, 'cash_income', '2024-02-21 16:00:00', '2024-02-22 15:23:46'),
(3, '2024-02-05', 'Utilities Expense', 300.00, 'cash_expense', '2024-02-21 16:00:00', '2024-02-22 17:06:18'),
(4, '2024-02-02', 'Collectibles', 4500.00, 'credit_receivable', '2024-02-21 16:00:00', '2024-02-22 15:29:47'),
(5, '2024-02-03', 'Credit to Aling Nena', 150.00, 'credit_payable', '2024-02-21 16:00:00', '2024-02-22 15:30:14'),
(6, '2024-02-06', 'Office Supplies', 2300.00, 'cash_expense', '2024-02-21 16:00:00', '2024-02-22 15:30:52'),
(7, '2024-02-10', 'Credit Sale', 5000.00, 'credit_receivable', '2024-02-21 16:00:00', '2024-02-22 15:31:25'),
(8, '2024-01-31', 'Credit to ABC Co.', 3500.00, 'credit_payable', '2024-02-21 16:00:00', '2024-02-22 15:32:43'),
(9, '2024-02-13', 'Sales to Ate Bidang', 5600.00, 'cash_income', '2024-02-21 16:00:00', '2024-02-22 15:33:12'),
(10, '2024-02-20', 'Credit Revenue', 2000.00, 'credit_receivable', '2024-02-21 16:00:00', '2024-02-22 16:00:19'),
(11, '2024-02-16', 'Rent Expense', 5000.00, 'cash_expense', '2024-02-21 16:00:00', '2024-02-22 16:00:45'),
(12, '2024-02-14', 'Office Tools', 450.00, 'cash_expense', '2024-02-21 16:00:00', '2024-02-22 16:33:19'),
(13, '2024-02-13', 'Service Vehicle', 200.00, 'cash_expense', '2024-02-21 16:00:00', '2024-02-22 16:40:07'),
(14, '2024-02-01', 'Cash Sales', 1250.00, 'cash_income', '2024-02-21 16:00:00', '2024-02-22 16:41:08'),
(15, '2024-02-02', 'Cash Sales', 1250.00, 'cash_income', '2024-02-21 16:00:00', '2024-02-22 16:41:20'),
(16, '2024-02-04', 'Cash Sales', 2500.00, 'cash_income', '2024-02-21 16:00:00', '2024-02-22 16:41:33'),
(17, '2024-02-05', 'Purchase of Machine', 3000.00, 'credit_payable', '2024-02-21 16:00:00', '2024-02-22 16:42:00'),
(18, '2024-02-08', 'Cash Sales', 5000.00, 'cash_income', '2024-02-21 16:00:00', '2024-02-22 16:44:28'),
(19, '2024-02-16', 'Servince on Account', 14000.00, 'credit_receivable', '2024-02-21 16:00:00', '2024-02-22 16:44:53'),
(20, '2024-02-16', 'Purchase of PC', 12000.00, 'credit_payable', '2024-02-21 16:00:00', '2024-02-22 16:45:28'),
(22, '2024-02-21', 'Supplies Stock', 2000.00, 'cash_expense', '2024-02-21 16:00:00', '2024-02-22 17:07:38'),
(23, '2024-02-20', 'Received Cash', 15000.00, 'cash_income', '2024-02-21 16:00:00', '2024-02-22 17:32:33');

-- --------------------------------------------------------

--
-- Table structure for table `users_list`
--

CREATE TABLE `users_list` (
  `Id` int(11) NOT NULL,
  `Username` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_list`
--

INSERT INTO `users_list` (`Id`, `Username`, `Email`, `Password`) VALUES
(6, 'enzoreyes016', 'enzoreyes016@gmail.com', 'Lorere10'),
(7, 'aisiahseverino77', 'aisiahseverino77@gmail.com', 'Admin123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `supplier_list`
--
ALTER TABLE `supplier_list`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `transaction_list`
--
ALTER TABLE `transaction_list`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `users_list`
--
ALTER TABLE `users_list`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `supplier_list`
--
ALTER TABLE `supplier_list`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `transaction_list`
--
ALTER TABLE `transaction_list`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users_list`
--
ALTER TABLE `users_list`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
