--Create a table with unique attributes and Enum types
CREATE TABLE IF NOT EXISTS users
( id int AUTO_INCREMENT PRIMARY KEY,
  email varchar(255) NOT NULL UNIQUE,
  name varchar(255),
  country ENUM('US', 'CO', 'UN') DEFAULT 'US'
 );
