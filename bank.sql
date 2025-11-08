-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2024 at 09:43 PM
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
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `atm`
--

CREATE TABLE `atm` (
  `ATMID` int(11) NOT NULL,
  `BranchID` int(11) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `InstallationDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `atm`
--

INSERT INTO `atm` (`ATMID`, `BranchID`, `Location`, `InstallationDate`) VALUES
(1, 10, 'SdgdgSdG', '2024-07-03'),
(12, 0, '', '0000-00-00'),
(14, 10, 'SdgdgSdG', '2024-07-03'),
(15, 10, 'SdgdgSdG', '2024-07-03'),
(16, 10, 'SdgdgSdG', '2024-07-03'),
(17, 10, 'SdgdgSdG', '2024-07-03');

-- --------------------------------------------------------

--
-- Table structure for table `bankaccount`
--

CREATE TABLE `bankaccount` (
  `AccountID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `AccountType` varchar(20) NOT NULL,
  `Balance` decimal(15,2) NOT NULL,
  `OpenDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bankaccount`
--

INSERT INTO `bankaccount` (`AccountID`, `CustomerID`, `AccountType`, `Balance`, `OpenDate`) VALUES
(1, 0, '', 0.00, '0000-00-00'),
(7, 11, 'account1', 12.30, '2024-07-02'),
(8, 11, 'accyyyount1', 152.30, '2024-07-02'),
(9, 12, 'accotttunt1', 132.30, '2024-07-02'),
(10, 13, 'acrrrcount1', 122.30, '2024-07-02'),
(11, 14, 'acceeeount1', 102.30, '2024-07-02'),
(12, 15, 'accowwwunt1', 152.30, '2024-07-02'),
(44, 0, '', 0.00, '0000-00-00'),
(144, 0, '', 0.00, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `bankbranch`
--

CREATE TABLE `bankbranch` (
  `BranchID` int(11) NOT NULL,
  `BranchName` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `PhoneNumber` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bankbranch`
--

INSERT INTO `bankbranch` (`BranchID`, `BranchName`, `Address`, `PhoneNumber`) VALUES
(10, 'asdfZXV', 'FZDBFBCB', '09923569014'),
(11, 'asdfZXV', 'FZDBFBCB', '099555569014'),
(12, 'asdfZXV', 'FZDBFBCB', '099235555445614'),
(13, 'asdfZXV', 'FZDBFBCB', '099254335614'),
(14, 'asdfZXV', 'FZDBFBCB', '09923567774');

-- --------------------------------------------------------

--
-- Table structure for table `bankcard`
--

CREATE TABLE `bankcard` (
  `CardID` int(11) NOT NULL,
  `AccountID` int(11) NOT NULL,
  `CardNumber` varchar(20) NOT NULL,
  `ExpiryDate` date NOT NULL,
  `CVV` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bankcard`
--

INSERT INTO `bankcard` (`CardID`, `AccountID`, `CardNumber`, `ExpiryDate`, `CVV`) VALUES
(10, 8, 'arfSDF', '2024-07-02', 'sdsf'),
(11, 8, 'arfSDF', '2024-07-02', 'sdsf'),
(12, 8, 'arfSDF', '2024-07-02', 'sdsf'),
(13, 8, 'arfSDF', '2024-07-02', 'sdsf'),
(14, 8, 'arfSDF', '2024-07-02', 'sdsf');

-- --------------------------------------------------------

--
-- Table structure for table `bankemployee`
--

CREATE TABLE `bankemployee` (
  `EmployeeID` int(11) NOT NULL,
  `BranchID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `JobTitle` varchar(50) NOT NULL,
  `HireDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bankemployee`
--

INSERT INTO `bankemployee` (`EmployeeID`, `BranchID`, `FirstName`, `LastName`, `JobTitle`, `HireDate`) VALUES
(10, 13, 'ZDFGF', 'ADSGFSDG', 'ADSG', '2024-07-10'),
(11, 13, 'ZDFGF', 'ADSGFSDG', 'ADSG', '2024-07-10'),
(12, 13, 'ZDFGF', 'ADSGFSDG', 'ADSG', '2024-07-10'),
(13, 13, 'ZDFGF', 'ADSGFSDG', 'ADSG', '2024-07-10');

-- --------------------------------------------------------

--
-- Stand-in structure for view `branchmanagerview`
-- (See below for the actual view)
--
CREATE TABLE `branchmanagerview` (
`BranchID` int(11)
,`BranchName` varchar(50)
,`Address` varchar(100)
,`PhoneNumber` varchar(20)
,`NumberOfEmployees` bigint(21)
,`NumberOfATMs` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Address` varchar(100) NOT NULL,
  `PhoneNumber` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `FirstName`, `LastName`, `DateOfBirth`, `Address`, `PhoneNumber`, `Email`) VALUES
(11, 'taha', 'ahmadi', '2024-07-03', 'address', '09923569014', 'mz0915205@gmail.com'),
(12, 'tgggaha', 'ahmfffadi', '2024-07-03', 'addrssssess', '099236666014', 'mz0915@gmail.com'),
(13, 'tahffa', 'ahmaffdi', '2024-07-03', 'addrsssess', '09923111114', 'mz09156665@gmail.com'),
(14, 'taddha', 'ahmadddi', '2024-07-03', 'addsssress', '09927777014', 'mz0915200855705@gmail.com'),
(15, 'tasssha', 'ahssdmadi', '2024-07-03', 'addssssress', '09927779014', 'mz0915200555005@gmail.com'),
(16, 'tahasss', 'ahmasssdi', '2024-07-03', 'addsssress', '09444569014', 'mz091520555670005@gmail.com');

-- --------------------------------------------------------

--
-- Stand-in structure for view `customerview`
-- (See below for the actual view)
--
CREATE TABLE `customerview` (
`CustomerID` int(11)
,`FirstName` varchar(50)
,`LastName` varchar(50)
,`Email` varchar(50)
,`AccountID` int(11)
,`AccountType` varchar(20)
,`Balance` decimal(15,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `LoanID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `LoanAmount` decimal(15,2) NOT NULL,
  `InterestRate` decimal(5,2) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`LoanID`, `CustomerID`, `LoanAmount`, `InterestRate`, `StartDate`, `EndDate`) VALUES
(10, 11, 10.36, 2.50, '2024-07-12', '2024-07-02'),
(11, 11, 10.36, 2.50, '2024-07-12', '2024-07-02'),
(12, 11, 10.36, 2.50, '2024-07-12', '2024-07-02'),
(13, 11, 10.36, 2.50, '2024-07-12', '2024-07-02'),
(14, 11, 10.36, 2.50, '2024-07-12', '2024-07-02'),
(77, 11, 10.36, 2.50, '2024-07-19', '2024-07-01');

-- --------------------------------------------------------

--
-- Stand-in structure for view `recenttransactions`
-- (See below for the actual view)
--
CREATE TABLE `recenttransactions` (
`TransactionID` int(11)
,`AccountID` int(11)
,`TransactionType` varchar(20)
,`Amount` decimal(15,2)
,`TransactionDate` date
);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `TransactionID` int(11) NOT NULL,
  `AccountID` int(11) NOT NULL,
  `TransactionType` varchar(20) NOT NULL,
  `Amount` decimal(15,2) NOT NULL,
  `TransactionDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`TransactionID`, `AccountID`, `TransactionType`, `Amount`, `TransactionDate`) VALUES
(1, 144, 'rgzddxgxcb', 54.00, '0000-00-00'),
(10, 8, 'xghjnfgn', 32.14, '2024-07-31'),
(11, 8, 'xghjnfgn', 32.14, '2024-07-31'),
(12, 8, 'xghjnfgn', 32.14, '2024-07-31'),
(13, 8, 'xghjnfgn', 32.14, '2024-07-31'),
(14, 8, 'xghjnfgn', 32.14, '2024-07-31'),
(15, 8, 'xghjnfgn', 32.14, '2024-07-31'),
(16, 8, 'xghjnfgn', 32.14, '2024-07-31');

-- --------------------------------------------------------

--
-- Structure for view `branchmanagerview`
--
DROP TABLE IF EXISTS `branchmanagerview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `branchmanagerview`  AS SELECT `b`.`BranchID` AS `BranchID`, `b`.`BranchName` AS `BranchName`, `b`.`Address` AS `Address`, `b`.`PhoneNumber` AS `PhoneNumber`, count(`e`.`EmployeeID`) AS `NumberOfEmployees`, count(`a`.`ATMID`) AS `NumberOfATMs` FROM ((`bankbranch` `b` left join `bankemployee` `e` on(`b`.`BranchID` = `e`.`BranchID`)) left join `atm` `a` on(`b`.`BranchID` = `a`.`BranchID`)) GROUP BY `b`.`BranchID`, `b`.`BranchName`, `b`.`Address`, `b`.`PhoneNumber` ;

-- --------------------------------------------------------

--
-- Structure for view `customerview`
--
DROP TABLE IF EXISTS `customerview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customerview`  AS SELECT `c`.`CustomerID` AS `CustomerID`, `c`.`FirstName` AS `FirstName`, `c`.`LastName` AS `LastName`, `c`.`Email` AS `Email`, `a`.`AccountID` AS `AccountID`, `a`.`AccountType` AS `AccountType`, `a`.`Balance` AS `Balance` FROM (`customer` `c` left join `bankaccount` `a` on(`c`.`CustomerID` = `a`.`CustomerID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `recenttransactions`
--
DROP TABLE IF EXISTS `recenttransactions`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `recenttransactions`  AS SELECT `t`.`TransactionID` AS `TransactionID`, `t`.`AccountID` AS `AccountID`, `t`.`TransactionType` AS `TransactionType`, `t`.`Amount` AS `Amount`, `t`.`TransactionDate` AS `TransactionDate` FROM `transaction` AS `t` WHERE `t`.`TransactionDate` >= curdate() - interval 30 day ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atm`
--
ALTER TABLE `atm`
  ADD PRIMARY KEY (`ATMID`),
  ADD KEY `BranchID` (`BranchID`);

--
-- Indexes for table `bankaccount`
--
ALTER TABLE `bankaccount`
  ADD PRIMARY KEY (`AccountID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `bankbranch`
--
ALTER TABLE `bankbranch`
  ADD PRIMARY KEY (`BranchID`);

--
-- Indexes for table `bankcard`
--
ALTER TABLE `bankcard`
  ADD PRIMARY KEY (`CardID`),
  ADD KEY `AccountID` (`AccountID`);

--
-- Indexes for table `bankemployee`
--
ALTER TABLE `bankemployee`
  ADD PRIMARY KEY (`EmployeeID`),
  ADD KEY `BranchID` (`BranchID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`LoanID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TransactionID`),
  ADD KEY `AccountID` (`AccountID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atm`
--
ALTER TABLE `atm`
  MODIFY `ATMID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `TransactionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `atm`
--
ALTER TABLE `atm`
  ADD CONSTRAINT `atm_ibfk_1` FOREIGN KEY (`BranchID`) REFERENCES `bankbranch` (`BranchID`);

--
-- Constraints for table `bankaccount`
--
ALTER TABLE `bankaccount`
  ADD CONSTRAINT `bankaccount_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`);

--
-- Constraints for table `bankcard`
--
ALTER TABLE `bankcard`
  ADD CONSTRAINT `bankcard_ibfk_1` FOREIGN KEY (`AccountID`) REFERENCES `bankaccount` (`AccountID`);

--
-- Constraints for table `bankemployee`
--
ALTER TABLE `bankemployee`
  ADD CONSTRAINT `bankemployee_ibfk_1` FOREIGN KEY (`BranchID`) REFERENCES `bankbranch` (`BranchID`);

--
-- Constraints for table `loan`
--
ALTER TABLE `loan`
  ADD CONSTRAINT `loan_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`AccountID`) REFERENCES `bankaccount` (`AccountID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
