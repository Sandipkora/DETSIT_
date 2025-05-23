-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2023 at 05:28 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dets`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `id` int(11) NOT NULL,
  `stream` varchar(255) NOT NULL,
  `batch` varchar(255) NOT NULL,
  `question` text NOT NULL,
  `duedate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `job_openings`
--

CREATE TABLE `job_openings` (
  `id` int(11) NOT NULL,
  `Position` varchar(255) NOT NULL,
  `JD` text NOT NULL,
  `Pdate` date NOT NULL,
  `Experience` text NOT NULL,
  `batch` text NOT NULL,
  `stream` text NOT NULL,
  `image` text NOT NULL,
  `link` text NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_openings`
--

INSERT INTO `job_openings` (`id`, `Position`, `JD`, `Pdate`, `Experience`, `batch`, `stream`, `image`, `link`, `location`) VALUES
(1, 'Google Software Developer', 'A Software Developer is a professional who is charged with designing and coding software for businesses and consumers alike. They work closely with clients to determine what they need, then use programming languages like Java or C++ to create programs. They must have critical thinking skills, as well as strong problem-solving abilities.', '2023-06-09', '2-3', '2022,2021,2022,2023', 'Freshers', 'mom.png', 'www.google.com/carreer', 'gurugram,banglore'),
(2, 'Full Stack Developer', 'A Software Developer is a professional who is charged with designing and coding software for businesses and consumers alike. They work closely with clients to determine what they need, then use programming languages like Java or C++ to create programs. They must have critical thinking skills, as well as strong problem-solving abilities.', '2023-06-22', 'Freshers', '2023', 'All stream', 'Free_Sample_By_Wix.jpg', 'https://careers.jio.com/frmCandidate.aspx', 'delhi');

-- --------------------------------------------------------

--
-- Table structure for table `meeting`
--

CREATE TABLE `meeting` (
  `id` int(11) NOT NULL,
  `meeting_type` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `attendie` text NOT NULL,
  `invitee` text NOT NULL,
  `venue` varchar(255) NOT NULL,
  `file` text NOT NULL,
  `post_file` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meeting`
--

INSERT INTO `meeting` (`id`, `meeting_type`, `subject`, `message`, `attendie`, `invitee`, `venue`, `file`, `post_file`, `date`, `time`, `status`) VALUES
(1, 'internal', 'final year placement', 'A Software Developer is a professional who is charged with designing and coding software for businesses and consumers alike. They work closely with clients to determine what they need, then use programming languages like Java or C++ to create programs. They must have critical thinking skills, as well as strong problem-solving abilities.', 'sandipkora12@gmail.com,ujjwal21@gmail.com,srinkabasu23@gmail.com', 'sandipkora12@gmail.com,srinkabasu23@gmail.com', 'annex', 'java resume ujjwal.pdf', 'ABC ID for P.G. Students,K.U..pdf', '2023-06-12', '29:26:28', 'Scheduled'),
(2, 'infrastructure', 'development of DETS', 'A Software Developer is a professional who is charged with designing and coding software for businesses and consumers alike. They work closely with clients to determine what they need, then use programming languages like Java or C++ to create programs. They must have critical thinking skills, as well as strong problem-solving abilities.', 'sandipkora12@gmail.com,ujjwal21@gmail.com,srinkabasu23@gmail.com', 'sandipkora12@gmail.com,ujjwal21@gmail.com,srinkabasu23@gmail.com', 'adam', 'java resume ujjwal.pdf', 'ABC ID for P.G. Students,K.U..pdf', '2023-06-16', '83:47:28', 'Completed'),
(3, 'Exam', 'final semester', 'An examination (exam or evaluation) or test is an educational assessment intended to measure a test-taker\'s knowledge, skill, aptitude, physical fitness, or classification in many other topics (e.g., beliefs).[1] A test may be administered verbally, on paper, on a computer, or in a predetermined area that requires a test taker to demonstrate or perform a set of skills.', 'sandipkora12@gmail.com,ujjwal32@gmail.com,srinkabasu24@gmial.com', 'sandipkora12@gmail.com,ujjwal32@gmail.com,srinkabasu24@gmial.com', 'annex', 'java resume ujjwal.pdf', 'java resume ujjwal.pdf', '2023-06-01', '15:53:42', 'Cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `pdf` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `title`, `message`, `pdf`) VALUES
(1, 'Btech Part 3', 'A test may be administered formally or informally. An example of an informal test is a reading test administered by a parent to a child.', 'GROUP A _ MASLOW’S HIERARCHY OF NEEDS.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `part1`
--

CREATE TABLE `part1` (
  `id` int(11) NOT NULL,
  `teacher` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `subcode` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `stream` varchar(255) NOT NULL,
  `batch` varchar(255) NOT NULL,
  `sdate` date NOT NULL,
  `syllabus` text NOT NULL,
  `subimg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `part1`
--

INSERT INTO `part1` (`id`, `teacher`, `subject`, `subcode`, `contact`, `stream`, `batch`, `sdate`, `syllabus`, `subimg`) VALUES
(1, 'Dr Srinka Basu', 'COMPILER DESIGN', 'IT-501', '9897678774', 'IT', 'B.TECH PART 3', '2023-06-08', 'UJJWAL KUMAR LABH Resume.pdf', '345330.jpg'),
(2, 'Dr Nabin Ghosal', 'C programming', 'IT-301', '8675645635', 'IT', 'B.TECH PART 1', '2023-06-09', 'Practice sheet.pdf', 'edtech-The-Week.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `registered_students`
--

CREATE TABLE `registered_students` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `stream` text NOT NULL,
  `batch` text NOT NULL,
  `rollno` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `regno` int(11) NOT NULL,
  `dob` date NOT NULL,
  `street` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `pin` int(11) NOT NULL,
  `state` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registered_students`
--

INSERT INTO `registered_students` (`id`, `email`, `password`, `name`, `phone`, `stream`, `batch`, `rollno`, `image`, `regno`, `dob`, `street`, `city`, `pin`, `state`) VALUES
(1, 'sandipkora12@gmail.com', 'sandipk', 'Sandip kora', 1234567898, 'IT', 'B.Tech part 3', '90/INT/190019', '_DSC0280.JPG', 121215, '2023-06-03', 'kalyani n90', 'kalyani', 741235, 'west bengal');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `email`, `contact`, `password`, `image`) VALUES
(1, 'Dr.Srinka Basu', 'hod_klyuinv@ac.in', '9151444452', '123', 'srinka basu.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `teacher` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `stream` varchar(255) NOT NULL,
  `batch` varchar(255) NOT NULL,
  `studymaterial` text NOT NULL,
  `sdate` date NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `teacher`, `contact`, `email`, `subject`, `stream`, `batch`, `studymaterial`, `sdate`, `time`) VALUES
(1, 'Dr.Srinka Basu', '9516454544', 'hod_engg@univ.kly', 'compiler design', 'IT', 'B.Tech part 3', 'UJJWAL KUMAR LABH Resume.pdf', '2023-06-29', '2023-06-12 15:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `scholarship`
--

CREATE TABLE `scholarship` (
  `id` int(11) NOT NULL,
  `meritname` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `disc` text NOT NULL,
  `Idate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scholarship`
--

INSERT INTO `scholarship` (`id`, `meritname`, `link`, `disc`, `Idate`) VALUES
(1, 'National Scholarship Scheme', 'https://scholarship.gov.in/', 'The National Scholarship Portal (NSP) is an online portal by the Government of India for applying, processing, verifying and sanction of Government scholarships to students. It aims to reduce discrepancies and provide a common, effective and transparent way to disburse scholarships to students. ', '2023-06-10'),
(2, 'Pre and Post Matric Scholarship', 'https://oasis.gov.in/', 'The National Scholarship Portal (NSP) is an online portal by the Government of India for applying, processing, verifying and sanction of Government scholarships to students. It aims to reduce discrepancies and provide a common, effective and transparent way to disburse scholarships to students. ', '2023-06-08'),
(3, 'Swami Vivekananda Merit cum scholarship', 'https://svmcm.wbhed.gov.in/', 'The National Scholarship Portal (NSP) is an online portal by the Government of India for applying, processing, verifying and sanction of Government scholarships to students. It aims to reduce discrepancies and provide a common, effective and transparent way to disburse scholarships to students. ', '2023-06-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_openings`
--
ALTER TABLE `job_openings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meeting`
--
ALTER TABLE `meeting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `part1`
--
ALTER TABLE `part1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registered_students`
--
ALTER TABLE `registered_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scholarship`
--
ALTER TABLE `scholarship`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job_openings`
--
ALTER TABLE `job_openings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `meeting`
--
ALTER TABLE `meeting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `part1`
--
ALTER TABLE `part1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `registered_students`
--
ALTER TABLE `registered_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `scholarship`
--
ALTER TABLE `scholarship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
