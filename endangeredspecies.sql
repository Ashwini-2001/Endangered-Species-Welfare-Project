-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2023 at 07:52 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `endangeredspecies`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Username` varchar(40) NOT NULL,
  `Password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Username`, `Password`) VALUES
('ashwini', '123as'),
('sindhu', '123si');

-- --------------------------------------------------------

--
-- Table structure for table `adoption`
--

CREATE TABLE `adoption` (
  `Adoptor_name` varchar(40) NOT NULL,
  `Phone` bigint(10) NOT NULL,
  `Email_id` varchar(40) NOT NULL,
  `Species_id` int(11) NOT NULL,
  `Species_name` varchar(40) NOT NULL,
  `Start_date` date NOT NULL,
  `End_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `animal_attendants`
--

CREATE TABLE `animal_attendants` (
  `Vol_id` int(11) NOT NULL,
  `Species_id` int(11) NOT NULL,
  `Salary` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `animal_attendants`
--

INSERT INTO `animal_attendants` (`Vol_id`, `Species_id`, `Salary`) VALUES
(5007, 1008, '6310Rs'),
(5001, 1012, '7645Rs');

-- --------------------------------------------------------

--
-- Table structure for table `assign`
--

CREATE TABLE `assign` (
  `Volunteer_name` varchar(40) NOT NULL,
  `vol_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assign`
--

INSERT INTO `assign` (`Volunteer_name`, `vol_id`) VALUES
('ashwini', 5000),
('Sindhu', 5001),
('Bhargavi', 5002),
('ash', 5003),
('Shamitha', 5004),
('sam', 5005),
('karan', 5006),
('kavya', 5007),
('Roopa', 5015);

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `Name` varchar(40) NOT NULL,
  `Phone` bigint(10) NOT NULL,
  `Email_id` varchar(40) NOT NULL,
  `Contribution` varchar(30) NOT NULL,
  `Comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`Name`, `Phone`, `Email_id`, `Contribution`, `Comments`) VALUES
('Vaishnavi', 7235167891, 'vaish@gmail.com', 'Rs 15000/-', 'Plants and animals are our family');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `Name` varchar(40) NOT NULL,
  `Email_id` varchar(40) NOT NULL,
  `Phone` bigint(10) NOT NULL,
  `Complaint_Location` varchar(40) NOT NULL,
  `Complaint_description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`Name`, `Email_id`, `Phone`, `Complaint_Location`, `Complaint_description`) VALUES
('rashmi', 'rashmi@gmail.com', 7892792156, 'samrudhi layout', 'throwing stones to dogs near my house by some cruel people');

-- --------------------------------------------------------

--
-- Table structure for table `species`
--

CREATE TABLE `species` (
  `Species_id` int(11) NOT NULL,
  `Common_name` varchar(40) NOT NULL,
  `Scientific_name` varchar(40) NOT NULL,
  `Conservation_status` varchar(40) NOT NULL,
  `Image` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `species`
--

INSERT INTO `species` (`Species_id`, `Common_name`, `Scientific_name`, `Conservation_status`, `Image`) VALUES
(1000, 'Tiger', 'Panthera Tigris', 'Endangered Species', 0x612e6a7067),
(1001, 'Asian Elephant', 'Elphas maximus indicus', 'Endangered Species', 0x632e6a666966),
(1002, 'Kagu', 'Rhynochetos Jubatus', 'Endangered Species', 0x686b2e6a666966),
(1003, 'Grey Shanked Douc', 'Rhynochetos Jubatus', 'Endangered Species', 0x4b4f4e20504c4f4e472e6a7067),
(1004, 'Giant Panda', 'Ailuropoda melanoleuca', 'Endangered Species', 0x642e6a666966),
(1005, 'Yak', 'Bos grunniens', 'Vulnerable Species', 0x59414b2056554c2e6a7067),
(1006, 'Blue Whale', 'Balaenotera musculus', 'Endangered Species', 0x626c7565207768616c652e6a666966),
(1007, 'black footed ferret', 'Mustela nigripes', 'Endangered Species', 0x626c61636b20666f6f746564206665727265742e6a7067),
(1008, 'Orangutan', 'Pongo', 'Endangered Species', 0x652e6a7067),
(1009, 'Venus fly Trap', 'Dionaea muscipula', 'Vulnerable Species', 0x56656e75735f466c79747261702e6a7067),
(1010, 'Green Pitcher Plant', 'Sarracenia oreophila', 'Endangered Species', 0x7069746368657220706c616e742e6a666966),
(1011, 'Snowdonia Hawkweed', 'Hieracium snowdoniense', 'Endangered Species', 0x736e6f77646f6e69612e706e67),
(1012, 'Rafflesia', 'Rafflesia Arnoldi', 'Endangered Species', 0x526166666c657369612d7363686164656e6265726769616e612e6a7067),
(100015, 'Lion', 'Panthera Leo', 'Endangered Species', 0x6c696f6e2e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `volunteer`
--

CREATE TABLE `volunteer` (
  `Name` varchar(40) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Phone` bigint(10) NOT NULL,
  `Email_id` varchar(40) NOT NULL,
  `Address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `volunteer`
--

INSERT INTO `volunteer` (`Name`, `Gender`, `Phone`, `Email_id`, `Address`) VALUES
('Ashwini B Y ', 'Female', 8088334623, 'ashwiniby12@gmail.com', 'Hyderabad'),
('Rohan', 'Male', 8088334623, 'naren@gmail.com', 'Hyderabad'),
('rose', 'Female', 8553345123, 'rose12@gmail.com', 'bangalore');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `adoption`
--
ALTER TABLE `adoption`
  ADD PRIMARY KEY (`Email_id`);

--
-- Indexes for table `animal_attendants`
--
ALTER TABLE `animal_attendants`
  ADD PRIMARY KEY (`Salary`),
  ADD KEY `Vol_id` (`Vol_id`),
  ADD KEY `Species_id` (`Species_id`);

--
-- Indexes for table `assign`
--
ALTER TABLE `assign`
  ADD PRIMARY KEY (`vol_id`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`Email_id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`Email_id`);

--
-- Indexes for table `species`
--
ALTER TABLE `species`
  ADD PRIMARY KEY (`Species_id`);

--
-- Indexes for table `volunteer`
--
ALTER TABLE `volunteer`
  ADD PRIMARY KEY (`Email_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `animal_attendants`
--
ALTER TABLE `animal_attendants`
  ADD CONSTRAINT `Species_id` FOREIGN KEY (`Species_id`) REFERENCES `species` (`Species_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `Vol_id` FOREIGN KEY (`Vol_id`) REFERENCES `assign` (`vol_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
