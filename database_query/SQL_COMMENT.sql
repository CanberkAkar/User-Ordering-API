-- -------------------------------------------------------------
-- TablePlus 6.2.0(576)
--
-- https://tableplus.com/
--
-- Database: u339680110_JSONAPI
-- Generation Time: 2024-12-17 11:34:39.3770
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_usr_id` int(11) DEFAULT NULL,
  `comment_desc` varchar(255) DEFAULT NULL,
  `comment_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `comment` (`comment_id`, `comment_usr_id`, `comment_desc`, `comment_category_id`) VALUES
(1, 1, 'Bruschetta was fresh and tasty!', 1),
(2, 1, 'Tomato Soup was too salty for my taste.', 2),
(3, 1, 'Caesar Salad had the perfect crunch.', 3),
(4, 1, 'Grilled Steak was cooked to perfection.', 4),
(5, 1, 'Mashed Potatoes were creamy and delicious.', 5),
(6, 2, 'Stuffed Mushrooms were a bit bland.', 1),
(7, 2, 'Chicken Noodle Soup was comforting and warm.', 2),
(8, 2, 'Greek Salad had a nice balance of flavors.', 3),
(9, 2, 'Roast Chicken was moist and flavorful.', 4),
(10, 2, 'Roasted Vegetables were slightly overcooked.', 5),
(11, 3, 'Garlic Bread was a bit too crispy.', 1),
(12, 3, 'Minestrone was hearty and filling.', 2),
(13, 3, 'Cobb Salad was packed with fresh ingredients.', 3),
(14, 3, 'Spaghetti Carbonara was rich and creamy.', 4),
(15, 3, 'Steamed Asparagus was perfectly tender.', 5),
(16, 4, 'Caprese Salad Skewers were refreshing and light.', 1),
(17, 4, 'Lentil Soup was flavorful and well-seasoned.', 2),
(18, 4, 'Quinoa Salad was healthy and tasty.', 3),
(19, 4, 'Baked Salmon was moist and flavorful.', 4),
(20, 4, 'Rice Pilaf was fluffy and well-cooked.', 5),
(21, 5, 'Mozzarella Sticks were cheesy and delicious.', 1),
(22, 5, 'French Onion Soup was rich and savory.', 2),
(23, 5, 'Pasta Salad was good, but could use more seasoning.', 3),
(24, 5, 'Beef Stroganoff was tender and flavorful.', 4),
(25, 5, 'Grilled Zucchini was well-seasoned and tasty.', 5),
(26, 6, 'Cheesecake was too sweet for my liking.', 6),
(27, 6, 'Lemonade was refreshing on a hot day.', 7),
(28, 6, 'Pancakes were okay, but a bit dense.', 8),
(29, 6, 'BLT Sandwich was tasty, but could use more bacon.', 9),
(30, 6, 'Beef Bourguignon was rich and flavorful.', 11),
(31, 7, 'Chocolate Cake was moist and delicious.', 6),
(32, 7, 'Iced Tea was refreshing and just right.', 7),
(33, 7, 'French Toast was too sweet.', 8),
(34, 7, 'Grilled Cheese was very cheesy.', 9),
(35, 7, 'Sushi was fresh and well-prepared.', 11),
(36, 8, 'Apple Pie was perfect with a scoop of vanilla ice cream.', 6),
(37, 8, 'Coffee was strong, just how I like it.', 7),
(38, 8, 'Avocado Toast was tasty and well-seasoned.', 8),
(39, 8, 'Chicken Caesar Wrap was good, but a bit small.', 9),
(40, 8, 'Beef Wellington was exceptional.', 10),
(41, 9, 'Tiramisu was creamy and well-balanced.', 6),
(42, 9, 'Smoothie was very refreshing.', 7),
(43, 9, 'Omelette was well-cooked and flavorful.', 8),
(44, 9, 'Club Sandwich was hearty and filling.', 9),
(45, 9, 'Stuffed Peppers were delicious.', 10),
(46, 10, 'Panna Cotta was delicious and smooth.', 6),
(47, 10, 'Iced Tea was refreshing.', 7),
(48, 10, 'Breakfast Burrito was a bit too heavy.', 8),
(49, 10, 'Chicken Parmesan was well-prepared.', 10),
(50, 10, 'Paella was excellent and flavorful.', 11),
(51, 11, 'Cheesecake was a bit too rich.', 6),
(52, 11, 'Mojito was nice but a bit strong.', 7),
(53, 11, 'Pancakes were perfectly fluffy.', 8),
(54, 11, 'Quiche was tasty and well-seasoned.', 9),
(55, 11, 'Chicken Tikka Masala was very spicy.', 11);


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;