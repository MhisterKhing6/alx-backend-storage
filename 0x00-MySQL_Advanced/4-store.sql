--Creating a triger on orders to update a table on insert
DELIMITER //;
CREATE Trigger `decrease_item` AFTER INSERT ON `orders`
For EACH ROW
BEGIN
UPDATE `items`
SET `quantity` = `quantity` - `NEW.number`
WHERE `name` = `NEW.item_name`;
END;//
DELIMITER ;
