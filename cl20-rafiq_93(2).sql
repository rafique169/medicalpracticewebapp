-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 02, 2018 at 12:41 PM
-- Server version: 10.1.27-MariaDB
-- PHP Version: 5.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cl20-rafiq_93`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctor_appointment_admin`
--

CREATE TABLE IF NOT EXISTS `doctor_appointment_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Conatct_number` varchar(255) NOT NULL,
  `avatar` varchar(250) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `admin_type` tinyint(1) DEFAULT '2' COMMENT '1 for superadmin and 2 for admin',
  `status` tinyint(1) DEFAULT '1',
  `login_ip` varchar(255) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name_UNIQUE` (`user_name`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=12 ;

--
-- Dumping data for table `doctor_appointment_admin`
--

INSERT INTO `doctor_appointment_admin` (`id`, `user_name`, `first_name`, `last_name`, `email`, `Address`, `password`, `Conatct_number`, `avatar`, `salt`, `admin_type`, `status`, `login_ip`, `last_login`) VALUES
(5, 'ri169', 'Rahim', 'Ali', 'ri169@angliamedicalpractice.co.uk', 'East Road, Cambridge CB1 1PT', '79804b72852f1e4d664fb7ffd3d98672', '08452713333', '', '', 1, 1, NULL, NULL),
(7, ' Imran Khan', ' Imran', 'Khan', 'Ik153_angliamedicalpractice@outlook.com', 'new delhi', '79804b72852f1e4d664fb7ffd3d98672', '123456789', '', '', 2, 1, NULL, NULL),
(8, ' Abdul Karim', ' Abdul', 'Karim', 'Ak157_angliamedicalpractice@outlook.com', 'new delhi', '79804b72852f1e4d664fb7ffd3d98672', '1234567890', '', '', 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_availity_data`
--

CREATE TABLE IF NOT EXISTS `doctor_availity_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) NOT NULL,
  `day` varchar(255) NOT NULL,
  `avail_time` time NOT NULL,
  `from_minute` time NOT NULL,
  `end_time` time NOT NULL,
  `to_minute` time NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

--
-- Dumping data for table `doctor_availity_data`
--

INSERT INTO `doctor_availity_data` (`id`, `doctor_id`, `day`, `avail_time`, `from_minute`, `end_time`, `to_minute`, `status`, `created_date`) VALUES
(63, 9, '1', '10:00:00', '00:00:00', '11:30:00', '00:00:00', 1, '2018-05-01 17:56:13'),
(64, 9, '0', '00:00:00', '00:00:00', '00:00:00', '00:00:00', 1, '2018-05-01 17:56:13'),
(65, 9, '5', '11:00:00', '00:00:00', '11:30:00', '00:00:00', 1, '2018-05-01 17:56:13'),
(67, 16, '4', '09:00:00', '00:00:00', '10:00:00', '00:00:00', 1, '2018-05-01 23:34:39'),
(68, 15, '5', '11:30:00', '00:00:00', '12:30:00', '00:00:00', 1, '2018-05-01 23:41:37'),
(69, 14, '0', '11:30:00', '00:00:00', '12:00:00', '00:00:00', 1, '2018-05-02 02:37:04');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_booking_data`
--

CREATE TABLE IF NOT EXISTS `doctor_booking_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `Appnmt_no` varchar(255) NOT NULL,
  `department_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `doctor_booking_data`
--

INSERT INTO `doctor_booking_data` (`id`, `user_id`, `Appnmt_no`, `department_id`, `doctor_id`, `appointment_date`, `appointment_time`, `created_date`, `status`) VALUES
(15, 31, 'exT010001', 6, 9, '2018-05-09', ': AM', '2018-05-02 10:17:47', 1),
(16, 32, '56Qw100016', 6, 9, '2018-05-04', '2:05 AM', '2018-05-02 10:20:23', 1),
(17, 33, 'KMSj100017', 4, 16, '2018-05-28', '7:30 AM', '2018-05-02 10:23:53', 1),
(18, 33, 'kmqe100018', 4, 16, '2018-05-04', '9:00:00 AM-10:00:00 AM', '2018-05-02 10:30:33', 1),
(19, 34, 'Ntr1100019', 4, 16, '2018-05-04', '9:00:00 AM-10:00:00 AM', '2018-05-02 10:37:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_new_user`
--

CREATE TABLE IF NOT EXISTS `doctor_new_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `doctor_new_user`
--

INSERT INTO `doctor_new_user` (`id`, `uid`, `first_name`, `last_name`, `email`, `contact_number`, `address`, `city`, `dob`, `Gender`, `user_image`, `status`, `created_date`) VALUES
(16, '5ae7cb25422cc', 'salman', 'abdul', 'sahin.ozturk@yahoo.com', '01224715715', 'Norfolk street', 'Cambridge', '0000-00-00', '', '', 1, '2018-05-01 02:04:21'),
(24, '5ae92710c39a2', 'Sadique', 'Islam', 'ru129@outlook.com', '07480344442', '10 Hills Road', 'Cambridge', '0000-00-00', '', '', 1, '2018-05-02 02:48:48'),
(30, '5ae97d81adb8d', 'fggh', 'hhghghghg', 'ravitripathi240@gmail.com', '1234567890', 'kjjk', 'jkkjjk', '0000-00-00', '', '', 1, '2018-05-02 08:57:37'),
(31, '5ae9904b7f0d2', 'hello', 'dear', 'ashish@codeyiizenc.com', '3432423', 'delhi', 'city', '1980-04-08', 'male', '', 1, '2018-05-02 10:17:47'),
(32, '5ae990e7eaf64', 'drando', 'dea', 'ashish@codeyiizen.com', '12134567890', 'delhi', 'city', '2018-05-08', 'male', '', 1, '2018-05-02 10:20:23'),
(33, '5ae991b9ec442', 'price', 'toprice', 'ashish@codeyiizen.com', '12343445345', 'getna', 'citoly', '1990-05-08', 'male', '', 1, '2018-05-02 10:23:53'),
(34, '5ae9943b06f6b', 'solve', 'trate', 'ashish@codeyiizen.com', '1234567890', 'delhi', 'city', '0000-00-00', '', '', 1, '2018-05-02 10:34:34');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_patient_perception`
--

CREATE TABLE IF NOT EXISTS `doctor_patient_perception` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `patient_phone` varchar(255) NOT NULL,
  `patient_email` varchar(255) NOT NULL,
  `end_date` date NOT NULL,
  `Extend_Date` date NOT NULL,
  `Issue_Date` date NOT NULL,
  `appointment_time` varchar(255) NOT NULL,
  `prescription` varchar(255) NOT NULL,
  `patient_note` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `doctor_patient_perception`
--

INSERT INTO `doctor_patient_perception` (`id`, `patient_id`, `department_id`, `doctor_id`, `patient_name`, `patient_phone`, `patient_email`, `end_date`, `Extend_Date`, `Issue_Date`, `appointment_time`, `prescription`, `patient_note`, `created_date`) VALUES
(9, 11, 4, 16, 'Ravi Tripathi', '1234567890', 'ravitripathi240@gmail.com', '2018-05-14', '2018-05-12', '2018-05-13', '9:00:00 AM-10:00:00 AM', 'worker.png', 'nice', '2018-05-02 08:53:11'),
(10, 15, 6, 9, 'hello dear', '3432423', 'ashish@codeyiizenc.com', '2018-05-07', '2018-05-21', '2018-05-15', ': AM', '', '', '2018-05-02 10:21:12'),
(11, 17, 4, 16, 'price toprice', '12343445345', 'ashish@codeyiizen.com', '2018-05-24', '2018-05-09', '2018-05-22', '8:30 AM', '', '', '2018-05-02 10:25:58');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_profile_details`
--

CREATE TABLE IF NOT EXISTS `doctor_profile_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `speciality_id` int(11) NOT NULL,
  `doctor_name` varchar(255) NOT NULL,
  `doctor_email` varchar(255) NOT NULL,
  `doctor_phone` varchar(255) NOT NULL,
  `doctor_degree` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `doctor_image` varchar(255) NOT NULL,
  `is_home` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `doctor_profile_details`
--

INSERT INTO `doctor_profile_details` (`id`, `speciality_id`, `doctor_name`, `doctor_email`, `doctor_phone`, `doctor_degree`, `address`, `description`, `doctor_image`, `is_home`, `status`, `created_date`) VALUES
(9, 6, 'Ahmad-Farhaan', 'Smith@gmail.com', '1234567890', 'M.B.B.S', 'new delhi,rithala', 'Lorem Ipsum is simply dummy text of the printing and typesetting..', 'AC716329-9424-49E2-9259-C1AD6A12EF0A.jpg', 1, 1, '2018-04-20 16:51:46'),
(14, 10, 'Dr. Pankaj E Chopade ', 'Surendradpatil@gmail.com', '08452713333', 'B.P.Th Physiotherapist', 'East Rd, Cambridge CB1 1PT', 'Orthopedics/ Musculoskeletal/ Rheumatology (at Physio OPD, Trauma wards, Cold Orthopedic wards, Arthroplasty wards, Spine ward, Pediatric wards, shoulder ward, Knee and Spine rehabilitation groups, musculoskeletal and General ICU/ HDU).', 'C54A43A3-DEA9-4E66-9B38-FE5330CE397B.jpg', 1, 1, '2018-04-10 09:55:23'),
(15, 9, 'Dr. Piyush Chaudhar', 'Surendradpatil@gmail.com', '08452713333', 'M.B.B.S., DNB (Internal Medicine), Fellow in HIV Medicine (HIVMAI) & Infectious Diseases, ', 'East Rd, Cambridge CB1 1PT', 'Dr. Piyush is a consultant physician & Infectious Diseases Specialist and brings along an experience of 7 years. He has been an Infectious Diseases Specialist at some of Pune’s biggest hospitals like Jehangir, KEM, Inlaks and Budhrani.', '130ACBD5-517C-4254-A1FC-C6D0DB6A5E8F.jpg', 1, 1, '2018-04-10 09:56:00'),
(16, 4, 'Dr.surendra.patil', 'Zerin@gmail.com', '1234567890', 'M.B.B.S', 'new delhi rithala', 'He is an expert in Primary and Revision Joint replacement surgeries of Knee, Hip, Shoulder, Elbow and Ankle joints.', '28A5BF37-9073-48F4-98AA-8BDA7C42F89E.jpg', 0, 1, '2018-05-01 23:33:48');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_request_appointment`
--

CREATE TABLE IF NOT EXISTS `doctor_request_appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `specialty_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `dob` date NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_specialty_data`
--

CREATE TABLE IF NOT EXISTS `doctor_specialty_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_specialty` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `doctor_specialty_data`
--

INSERT INTO `doctor_specialty_data` (`id`, `doctor_specialty`, `title`, `description`, `image`, `status`, `created_date`) VALUES
(4, 'Orphopaedics', 'Nephrology ', 'An orthopaedic surgeon is a physician devoted to the diagnosis, treatment, prevention and rehabilitation of injuries, disorders and diseases of the body''s musculoskeletal system. This system includes bones, joints, ligaments, muscles, nerves and tendons.', '5B8F3C9F-4A3F-4913-BB6E-F28014E671F1.jpg', 1, '2018-04-10 08:41:36'),
(6, 'Cardiologiest ', 'Cardiologiest  doctor', 'Each Pediatric Cardiology exam is built to the same specifications, also known as the blueprint. This blueprint is used to ensure that, for the initial certification and in-training exams, each exam measures the same depth and breadth of content knowledge.', 'E96F11F9-C6B3-4B75-92C6-24A8DAD659DD.jpg', 1, '2018-04-10 08:38:05'),
(9, 'Physician ', 'Physician Docter', 'Each Pediatric Cardiology exam is built to the same specifications, also known as the blueprint. This blueprint is used to ensure that, for the initial certification and in-training exams, each exam measures the same depth and breadth of content knowledge.', 'BF3F04BE-671F-4D79-86A6-65312F4F7557.jpg', 1, '2018-04-10 08:35:32'),
(10, 'Physiotherapist', 'Physiotherapist Docter', '    Stroke patient rehabilitation\r\n    Pre and post-operative Physiotherapy after joint replacement\r\n    Musculo skeletal and sports injuries & rehabilitation\r\n    Home care physiotherapy\r\n    Bronchial hygiene\r\n    Chest physiotherapy\r\n    Mobilization techniques\r\n    Neurology and neuro-surgical rehabilitation\r\n    Cardio thoracic & critical intensive care unit (CTS & CICU)\r\n    Orthopedic and Geriatrics\r\n    Neurosurgery and neurology\r\n    Burns\r\n    Obstreatic and Gynecology\r\n', '45F028D4-E879-49D5-AC67-D713186DB52C.png', 1, '2018-04-24 07:42:14');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `permissions` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role_name`, `description`, `permissions`, `date_created`) VALUES
(1, 'Super Admin', 'have all the access of backend', 'have all the access of backend', '2017-07-10 08:20:13'),
(2, 'Admin', 'have all doctor related access', 'have all doctor related access', '2017-07-10 08:34:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banner`
--

CREATE TABLE IF NOT EXISTS `tbl_banner` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `status` tinyint(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_banner`
--

INSERT INTO `tbl_banner` (`id`, `title`, `description`, `image`, `status`) VALUES
(4, 'Serving', 'collecting of sputum, urine and feces samples; monitoring of vital life signs; operating of specialized equipment related to this function; preparing equipment and assisting physicians during patient ', '221DC648-544E-41E0-8EB0-976F233715A4.jpg', 1),
(5, 'PEDIATRIC INTENSIVE', 'A Pediatric Intensive Care Unit provides care to children less than 14 years of age of a more intensive nature than the usual Pediatric Acute level. ', '58C3BF51-E813-4804-B642-3D7C03DAC35B.jpg', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
