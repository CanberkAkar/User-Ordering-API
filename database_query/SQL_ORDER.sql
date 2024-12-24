-- -------------------------------------------------------------
-- TablePlus 6.2.0(576)
--
-- https://tableplus.com/
--
-- Database: u339680110_JSONAPI
-- Generation Time: 2024-12-17 11:36:03.7660
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_desc` varchar(255) DEFAULT NULL,
  `order_usr_id` int(11) DEFAULT NULL,
  `order_comment_id` int(11) DEFAULT NULL,
  `order_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `order` (`order_id`, `order_desc`, `order_usr_id`, `order_comment_id`, `order_category_id`) VALUES
(1, 'Bruschetta', 1, 1, 1),
(2, 'Stuffed Mushrooms', 2, 2, 1),
(3, 'Garlic Bread', 3, 3, 1),
(4, 'Caprese Salad Skewers', 4, 4, 1),
(5, 'Mozzarella Sticks', 5, 5, 1),
(6, 'Tomato Soup', 1, 6, 2),
(7, 'Chicken Noodle Soup', 2, 7, 2),
(8, 'Minestrone', 3, 8, 2),
(9, 'Lentil Soup', 4, 9, 2),
(10, 'French Onion Soup', 5, 10, 2),
(11, 'Caesar Salad', 1, 11, 3),
(12, 'Greek Salad', 2, 12, 3),
(13, 'Cobb Salad', 3, 13, 3),
(14, 'Quinoa Salad', 4, 14, 3),
(15, 'Pasta Salad', 5, 15, 3),
(16, 'Grilled Steak', 1, 16, 4),
(17, 'Roast Chicken', 2, 17, 4),
(18, 'Spaghetti Carbonara', 3, 18, 4),
(19, 'Baked Salmon', 4, 19, 4),
(20, 'Beef Stroganoff', 5, 20, 4),
(21, 'Mashed Potatoes', 1, 21, 5),
(22, 'Roasted Vegetables', 2, 22, 5),
(23, 'Steamed Asparagus', 3, 23, 5),
(24, 'Rice Pilaf', 4, 24, 5),
(25, 'Grilled Zucchini', 5, 25, 5),
(26, 'Cheesecake', 1, 26, 6),
(27, 'Chocolate Cake', 2, 27, 6),
(28, 'Apple Pie', 3, 28, 6),
(29, 'Tiramisu', 4, 29, 6),
(30, 'Panna Cotta', 5, 30, 6),
(31, 'Mojito', 1, 31, 7),
(32, 'Lemonade', 2, 32, 7),
(33, 'Iced Tea', 3, 33, 7),
(34, 'Coffee', 4, 34, 7),
(35, 'Smoothie', 5, 35, 7),
(36, 'Pancakes', 1, 36, 8),
(37, 'Omelette', 2, 37, 8),
(38, 'French Toast', 3, 38, 8),
(39, 'Breakfast Burrito', 4, 39, 8),
(40, 'Avocado Toast', 5, 40, 8),
(41, 'BLT Sandwich', 1, 41, 9),
(42, 'Club Sandwich', 2, 42, 9),
(43, 'Grilled Cheese', 3, 43, 9),
(44, 'Chicken Caesar Wrap', 4, 44, 9),
(45, 'Quiche', 5, 45, 9),
(46, 'Lasagna', 1, 46, 10),
(47, 'Beef Wellington', 2, 47, 10),
(48, 'Chicken Parmesan', 3, 48, 10),
(49, 'Shrimp Scampi', 4, 49, 10),
(50, 'Stuffed Peppers', 5, 50, 10),
(51, 'Paella', 1, 51, 11),
(52, 'Sushi', 2, 52, 11),
(53, 'Beef Bourguignon', 3, 53, 11),
(54, 'Ratatouille', 4, 54, 11),
(55, 'Chicken Tikka Masala', 5, 55, 11);


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;