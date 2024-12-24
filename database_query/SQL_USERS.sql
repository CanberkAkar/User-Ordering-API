-- -------------------------------------------------------------
-- TablePlus 6.2.0(576)
--
-- https://tableplus.com/
--
-- Database: u339680110_JSONAPI
-- Generation Time: 2024-12-17 11:36:32.4620
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


CREATE TABLE `users` (
  `usr_id` int(11) NOT NULL AUTO_INCREMENT,
  `usr_name` varchar(255) NOT NULL,
  `usr_email` varchar(255) NOT NULL,
  `usr_password` varchar(255) NOT NULL,
  `usr_token` varchar(255) NOT NULL,
  PRIMARY KEY (`usr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`usr_id`, `usr_name`, `usr_email`, `usr_password`, `usr_token`) VALUES
(1, 'John Doe', 'john.doe@example.com', 'e99a18c428cb38d5f260853678922e03', '123e4567-e89b-12d3-a456-426614174000'),
(2, 'Jane Smith', 'jane.smith@example.com', '5f4dcc3b5aa765d61d8327deb882cf99', '987f1234-b89c-34a7-c789-547a89103423'),
(3, 'Michael Johnson', 'michael.johnson@example.com', 'c4ca4238a0b923820dcc509a6f75849b', '654e3210-a32d-56f8-b901-987654321012'),
(4, 'Emily Davis', 'emily.davis@example.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', '321b5678-c56e-78d9-e321-123f65478901'),
(5, 'David Brown', 'david.brown@example.com', '25f9e794323b453885f5181f1b624d0b', '789a0123-d78e-89f0-5432-109876543210');


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;