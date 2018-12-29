-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2018 at 02:52 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ars`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `city` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `street_line_1` int(50) NOT NULL,
  `street_line_2` int(50) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `city`, `country`, `postcode`, `street_line_1`, `street_line_2`, `active`) VALUES
(1, 'Jefferson City', 'Brunei', '243020', 0, 832, 0),
(2, 'Merksem', 'Sudan', '32240', 508, 0, 1),
(3, 'Destelbergen', 'Samoa', 'K4X 2L0', 227, 0, 0),
(4, 'Alexandria', 'Canada', '99547', 0, 2021, 0),
(5, 'Lexington', 'Ghana', 'H5W 3L9', 6076, 0, 1),
(6, 'Dera Ghazi Khan', 'Svalbard and Jan May', '00020', 8067, 307, 0),
(7, 'Posina', 'Trinidad and Tobago', '0885 RH', 8256, 652, 0),
(8, 'Comblain-Fairon', 'Malawi', '25751', 0, 2832, 1),
(9, 'Municipal District', 'Ethiopia', '15400', 0, 0, 0),
(10, 'Helchteren', 'Italy', '70686', 324, 0, 1),
(11, 'Joncret', 'Hungary', '2509 ZA', 2731, 0, 0),
(12, 'Fogo', 'Northern Mariana Isl', '08276', 0, 0, 0),
(13, 'Forbach', 'Ukraine', '633950', 0, 0, 1),
(14, 'Niel-bij-As', 'Curaçao', '76538', 482, 0, 0),
(15, 'Campinas', 'Qatar', 'I4 9IC', 0, 1336, 1),
(16, 'Tiruchirapalli', 'Malaysia', '71618', 0, 0, 1),
(17, 'La Ligua', 'French Polynesia', '61616', 0, 287, 1),
(18, 'Ziano di Fiemme', 'Saint Helena, Ascens', 'X4V 3WW', 356, 0, 1),
(19, 'Beringen', 'Isle of Man', '876549', 0, 0, 0),
(20, 'Roux', 'Netherlands', 'BD9L 6MS', 6479, 289, 1),
(21, 'Talgarth', 'Costa Rica', '233821', 0, 0, 0),
(22, 'Sclayn', 'Mozambique', '04744', 0, 0, 1),
(23, 'Saalfelden am Steine', 'Cook Islands', '43128', 0, 389, 1),
(24, 'Villa Verde', 'Kenya', '84223-943', 0, 619, 1),
(25, 'Genappe', 'Madagascar', '665303', 0, 0, 1),
(26, 'San Piero Patti', 'Tajikistan', '124717', 0, 0, 1),
(27, 'Helensburgh', 'Guatemala', '423516', 805, 1947, 1),
(28, 'Builth Wells', 'El Salvador', '52576', 0, 0, 1),
(29, 'Hulshout', 'Tonga', '24771', 937, 0, 0),
(30, 'Sint-Laureins-Berche', 'Sri Lanka', '164807', 0, 4300, 1),
(31, 'Carlton', 'Greenland', '70-944', 0, 7398, 0),
(32, 'Siracusa', 'New Caledonia', '11668', 2955, 4115, 1),
(33, 'Rhisnes', 'Ukraine', '17254', 0, 380, 0),
(34, 'Shaftesbury', 'Saint Pierre and Miq', '79754', 984, 0, 0),
(35, 'Épernay', 'Côte D\'Ivoire (Ivory', '10164-806', 0, 655, 0),
(36, 'Mâcon', 'Japan', '4184 ZA', 0, 299, 0),
(37, 'Kitscoty', 'Solomon Islands', '46538', 0, 1515, 0),
(38, 'Bitterfeld-Wolfen', 'Lesotho', '29556-504', 0, 329, 1),
(39, 'Washington', 'Croatia', '492098', 0, 248, 0),
(40, 'Mantova', 'Malta', '181959', 5317, 0, 0),
(41, 'Wolfenbüttel', 'Andorra', '4665', 5221, 2272, 1),
(42, 'Overmere', 'Sri Lanka', '65368', 0, 351, 0),
(43, 'Durness', 'Zambia', '10903', 0, 232, 0),
(44, 'Hove', 'Malta', '1779', 0, 4551, 0),
(45, 'Hanau', 'Swaziland', '8241', 867, 808, 0),
(46, 'Las Cabras', 'Sudan', '297171', 0, 0, 0),
(47, 'Ferrere', 'Russian Federation', '9486', 0, 456, 0),
(48, 'Göttingen', 'Colombia', 'JQ06 2CA', 2298, 136, 1),
(49, 'Tulita', 'Morocco', '72722-553', 5255, 312, 0),
(50, 'Laren', 'Sint Maarten', '94158-691', 2659, 886, 0),
(51, 'Grand Rapids', 'Bonaire, Sint Eustat', '33064', 0, 415, 0),
(52, 'Caprino Bergamasco', 'Djibouti', '44499', 0, 5578, 1),
(53, 'Allerona', 'Djibouti', '92425', 193, 0, 0),
(54, 'Grado', 'Svalbard and Jan May', '4116', 0, 0, 1),
(55, 'Leuze', 'Central African Repu', '998069', 443, 1793, 0),
(56, 'Gonars', 'Andorra', '9580', 115, 0, 0),
(57, 'Waiuku', 'Costa Rica', 'U4I 6YQ', 839, 0, 1),
(58, 'Wichita', 'Cambodia', '764086', 839, 0, 0),
(59, 'Bathgate', 'Senegal', '50836', 0, 9210, 0),
(60, 'Wansin', 'Costa Rica', '67495', 0, 402, 0),
(61, 'Moffat', 'Fiji', '08413', 6106, 7133, 0),
(62, 'Stamford', 'Bulgaria', '80574', 4863, 0, 0),
(63, 'Pace del Mela', 'Jamaica', '984345', 9037, 0, 0),
(64, 'Port Harcourt', 'Jamaica', '2715', 0, 5608, 1),
(65, 'San Mauro Marchesato', 'Saint Pierre and Miq', 'SN80 7AD', 735, 0, 1),
(66, 'San Nicolás', 'India', 'B9G 6C9', 0, 8074, 0),
(67, 'Wachtebeke', 'Korea, South', '1423', 548, 3689, 1),
(68, 'Montgomery', 'Cyprus', '56897', 838, 0, 0),
(69, 'Merthyr Tydfil', 'Ethiopia', '92318', 0, 0, 1),
(70, 'Fauvillers', 'Italy', '6981', 0, 0, 1),
(71, 'Comblain-Fairon', 'Nigeria', '3303', 0, 0, 0),
(72, 'Kerkrade', 'Ecuador', '02-001', 3305, 282, 0),
(73, 'Hindupur', 'Mayotte', '39080-453', 6947, 0, 1),
(74, 'Kamarhati', 'Kyrgyzstan', '86688', 1365, 0, 0),
(75, 'San Pablo', 'Madagascar', '92295', 0, 8359, 1),
(76, 'Ottawa', 'Honduras', '561473', 0, 0, 1),
(77, 'Eberswalde-Finow', 'Macao', '18407', 1000, 0, 0),
(78, 'Modinagar', 'El Salvador', '3411', 4127, 0, 0),
(79, 'Kanpur', 'Tuvalu', '67908', 0, 0, 1),
(80, 'Milano', 'Sudan', '5946', 846, 0, 1),
(81, 'Boussu-lez-Walcourt', 'Holy See (Vatican Ci', '367577', 0, 637, 0),
(82, 'Bastogne', 'Liberia', 'V7H 0KU', 0, 0, 0),
(83, 'Salice Salentino', 'Libya', '61986', 0, 390, 0),
(84, 'Ayas', 'Sri Lanka', '078946', 0, 0, 1),
(85, 'Allahabad', 'Uzbekistan', '45246', 0, 0, 0),
(86, 'Aubervilliers', 'Bermuda', '10156', 0, 715, 1),
(87, 'Grand-Reng', 'Burundi', '99814', 246, 2202, 0),
(88, 'San Luca', 'Saint Lucia', '926595', 0, 0, 0),
(89, 'Cambridge Bay', 'Palestine, State of', '50601', 802, 0, 1),
(90, 'Gualdo Tadino', 'Lithuania', '45672-193', 0, 0, 1),
(91, 'Indianapolis', 'Angola', '9264 OS', 1166, 0, 1),
(92, 'Colmar', 'Maldives', '37981', 6921, 286, 0),
(93, 'Gloucester', 'Guernsey', '869467', 0, 0, 1),
(94, 'Rovereto', 'Paraguay', '78017', 2610, 219, 1),
(95, 'Tsiigehtchic', 'Czech Republic', '3002', 0, 0, 1),
(96, 'Serrungarina', 'Bulgaria', 'R8H 8S0', 0, 0, 0),
(97, 'Santa Maria a Monte', 'Malta', '19532-524', 0, 0, 1),
(98, 'Liberchies', 'Jersey', 'Y6S 9N3', 9157, 346, 0),
(99, 'Kanchrapara', 'Burkina Faso', '93798', 0, 804, 1),
(100, 'Estevan', 'Turkmenistan', '10016-421', 0, 6191, 1);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `booking_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `flight_id` int(11) NOT NULL,
  `destination_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `departure`
--

CREATE TABLE `departure` (
  `id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `departure_time` time NOT NULL,
  `departure_day` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departure`
--

INSERT INTO `departure` (`id`, `flight_id`, `departure_time`, `departure_day`, `active`, `created`) VALUES
(1, 1, '08:30:00', '{\'day\':[\'monday\',\'tuesday\',\'wednesday\',\'thursday\',\'friday\',\'saturday\',\'sunday\']}', 1, '2018-12-27 13:14:26'),
(2, 2, '08:30:00', '{\'day\':[\'monday\',\'tuesday\',\'wednesday\',\'thursday\',\'friday\',\'saturday\',\'sunday\']}', 1, '2018-12-27 13:16:23'),
(3, 3, '08:00:00', '{\'day\':[\'monday\',\'wednesday\',\'friday\']}', 1, '2018-12-27 13:18:18'),
(4, 4, '08:00:00', '{\'day\':[\'monday\',\'wednesday\',\'friday\']}', 1, '2018-12-27 13:18:47');

-- --------------------------------------------------------

--
-- Table structure for table `destination`
--

CREATE TABLE `destination` (
  `id` int(11) NOT NULL,
  `destination_name` varchar(15) NOT NULL,
  `duration` time(6) NOT NULL,
  `flight_type_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `destination`
--

INSERT INTO `destination` (`id`, `destination_name`, `duration`, `flight_type_id`, `active`) VALUES
(1, 'Manchester', '01:00:00.000000', 1, 1),
(2, 'Glasgow', '01:30:00.000000', 1, 1),
(3, 'Dublin', '01:20:01.000000', 1, 1),
(4, 'Paris', '01:15:00.000000', 2, 1),
(5, 'Madrid', '02:30:00.000000', 2, 1),
(6, 'Brussels', '01:20:01.000000', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `flight_id` varchar(10) NOT NULL DEFAULT 'flight',
  `seats` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`id`, `type_id`, `flight_id`, `seats`, `active`) VALUES
(1, 1, 'FL112', 0, 1),
(2, 1, 'AL113', 0, 0),
(3, 2, 'BL114', 0, 1),
(4, 2, 'HL113', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `flight_type`
--

CREATE TABLE `flight_type` (
  `id` int(11) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight_type`
--

INSERT INTO `flight_type` (`id`, `type`) VALUES
(1, 'Domestic'),
(2, 'Europe');

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE `returns` (
  `id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `return_time` time NOT NULL,
  `return_day` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returns`
--

INSERT INTO `returns` (`id`, `flight_id`, `return_time`, `return_day`, `active`, `created`) VALUES
(1, 1, '18:00:00', '{\'day\':[\'monday\',\'tuesday\',\'wednesday\',\'thursday\',\'friday\',\'saturday\',\'sunday\']}', 1, '2018-12-27 13:21:04'),
(2, 2, '18:00:00', '{\'day\':[\'monday\',\'tuesday\',\'wednesday\',\'thursday\',\'friday\',\'saturday\',\'sunday\']}', 1, '2018-12-27 13:21:48'),
(3, 3, '18:30:00', '{\'day\':[\'tuesday\',\'thursday\',\'friday\']}', 1, '2018-12-27 13:22:47'),
(4, 4, '18:30:00', '{\'day\':[\'tuesday\',\'thursday\',\'friday\']}', 1, '2018-12-27 13:23:00');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'Registered');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `date_of_birth` date NOT NULL,
  `address_id` int(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `date_of_birth`, `address_id`, `role_id`, `email`, `active`) VALUES
(1, 'Mark', 'Anthony', '1990-11-13', 19, 1, 'markanthony@gmail.com', 1),
(2, 'lucy', 'Thompson', '1995-12-19', 80, 2, 'lucythompson@gmail.com', 1),
(3, 'Daniel', 'Craig', '1980-05-12', 50, 1, 'danielcraig@gmail.com', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `destination_id` (`destination_id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `departure`
--
ALTER TABLE `departure`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flight_type_id` (`flight_type_id`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `flight_id` (`flight_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `flight_type`
--
ALTER TABLE `flight_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `address_id` (`address_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `departure`
--
ALTER TABLE `departure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `destination`
--
ALTER TABLE `destination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `flight_type`
--
ALTER TABLE `flight_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `booking_ibfk_4` FOREIGN KEY (`destination_id`) REFERENCES `destination` (`id`),
  ADD CONSTRAINT `booking_ibfk_5` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`id`);

--
-- Constraints for table `departure`
--
ALTER TABLE `departure`
  ADD CONSTRAINT `departure_ibfk_1` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`id`);

--
-- Constraints for table `destination`
--
ALTER TABLE `destination`
  ADD CONSTRAINT `destination_ibfk_1` FOREIGN KEY (`flight_type_id`) REFERENCES `flight_type` (`id`);

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `flight_type` (`id`);

--
-- Constraints for table `returns`
--
ALTER TABLE `returns`
  ADD CONSTRAINT `returns_ibfk_1` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
