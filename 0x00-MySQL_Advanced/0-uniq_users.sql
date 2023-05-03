--Create a table with unique attributes
--Create a table with unique attri
CREATE TABLE IF NOT EXISTS `users`
( `id` int AUTO_INCREMENT PRIMARY KEY NOT NULL,
  `email` varchar(255) NOT NULL UNIQUE,
  `name` varchar(255)
 );
