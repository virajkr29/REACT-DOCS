-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2020 at 12:14 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_title`) VALUES
(1, 'PCs'),
(2, 'Smartphones'),
(3, 'Gamming'),
(4, 'Tech News'),
(5, 'Entertainment'),
(6, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(255) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_count` int(11) NOT NULL,
  `post_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`, `post_user`) VALUES
(1, 2, 'Samsung Galaxy M21 featuring huge Battery', 'Viraj Kr', '2020-03-20', 'post1.jpg', 'Samsung Galaxy M21 has been launched in India as the successor to the Galaxy M20. The new smartphone comes with an Infinity-U Super AMOLED display and features a 20-megapixel selfie camera.\r\n\r\n', 'viraj,smartphones,samsung', 0, 'draft', 0, 0),
(2, 2, 'Realme 6 featuring a 64 mp camera and 90 HZ Display', 'Viraj', '2020-03-18', 'post2.jpg', 'Realme and Xiaomi are battling it out once again, this time for the top spot in the sub-Rs. 15,000 phone segment. We compare the new Redmi Note 9 Pro and the Realme 6 to see which of these two budget powerhouses you should buy.\r\n\r\n', 'viraj,smartphones,realme,display,samsung', 0, 'draft', 0, 0),
(3, 0, 'Redmi Note 9 Pro featuring the latest 720g processor', 'Viraj', '2020-03-11', 'post3.jpg', 'The Redmi Note 9 Pro has a lower starting price than its predecessors, but also doesn\'t offer all the modern features that you might expect. It has a 6.67-inch LCD screen with a 60Hz refresh rate and hole-punch front camera at the top. The processor is a Qualcomm Snapdragon 720G which is surprisingly powerful for this segment. You also get a 5020mAh battery and suppport for 18W fast charging. \r\n\r\n', 'redmi,smartphones,processor,data,samsung', 0, 'draft', 0, 0),
(4, 0, 'Comet Lake-S desktop processors led by Intel Core i9-10900K post respectable Fire Strike Physics Scores but have yet to face AMD\'s Ryzen 4000 Vermeer', 'Viraj', '2020-03-12', 'post4.jpg', 'An AMD Ryzen 7 4800HS has been spotted being put through its paces on Geekbench 5. The Ryzen 4000 APU was part of an Asus ROG Zephyrus G14 laptop. The 8-core Renoir chip amassed decent single-core scores of 1,135 and 1,164 points and multi-core scores of 7,444 and 7,544 points in two separate tests. This puts it on a very fair footing with the Coffee Lake Intel Core i9-9880H.\r\n', 'ryzen,intel,corei5,faster,processor,pc', 0, 'draft', 0, 0),
(5, 0, 'The 10-core i9-10900KF matches the 12-core Ryzen 9 3900X in leaked Time Spy bench, but upcoming Ryzen 4000 lineup means Comet Lake could still be DOA\r\n', 'Viraj', '2020-03-18', 'post4.jpg', 'Leaked Time Spy CPU scores for the Intel i9-10900KF offer some hope for Team Blue’s 2020 consumer CPU plans. The 10-core 20-thread Comet Lake part, which operates at up to 5.3 GHz, scored 12412 on the Time Spy CPU Benchmark, which is marginally slower than the Ryzen 9 3900X’s score of 12857.\r\n\r\n', '', 0, 'draft', 0, 0),
(6, 0, 'The Ryzen 9 version of the ROG Zephyrus G14 breaks cover again in a new retail leak\r\n', 'Viraj', '2020-03-16', 'post4.jpg', 'There are indications that Asus may incorporate Zen 2-based APUs besides the Ryzen 7 4800HS in the new ROG Zephyrus G14 notebook. They include the 9 4900HS-based variant, which has been listed by a Danish e-tailer - as has the also-rumored 5 4600HS SKU. This site also now claims to have pre-sales pages for new TUF Gaming- and ROG Strix-series laptops.\r\n', '', 0, 'draft', 0, 0),
(7, 0, 'Assassin\'s Creed Odyssey, Far Cry 5, and more get massive discounts with Ubisoft\'s Spring sale\r\n', 'Viraj', '2020-03-19', 'accreed.jpg\r\n', 'Ubisoft\'s Spring sale is live now, and it\'s discounting most of their modern titles by up to 75%. This gives you the chance to play some of today\'s most-acclaimed triple-A games for extraordinarily cheap, which sounds like just the thing to cure your isolation blues. Keep in mind, while discounts are available on other platforms, the best deals are on PC.\r\n', '', 0, 'draft', 0, 0),
(8, 0, 'Resident Evil 3’s demo is a sublime slice of survival horror', 'Viraj', '2020-03-16', 'rsevil.jpg\r\n', 'The newly released demo opens with Jill Valentine agreeing to work with members of the Umbrella Biohazard Countermeasure Service as they’re attempting to escape Raccoon City. After a brief yet entertaining back-and-forth between her and Carlos Oliveira that continues over walkie-talkie, players are free to explore the zombie-infested city with the goal of getting the subway infrastructure back online. That’s it for story. This is a brief demo, and it launches players right into the thick of it.\r\n', '', 0, 'draft', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
