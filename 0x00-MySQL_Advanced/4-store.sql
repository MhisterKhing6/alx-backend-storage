--Creating a triger on orders to update a table on insert
--updates the quantity table when oder is inserted
DELIMITER //;
--Create the triger process
CREATE Trigger `decrease_item` AFTER INSERT ON `orders`
For EACH ROW
BEGIN
UPDATE `items`
-- Decrease quantity value
SET `quantity` = `quantity` - NEW.number
WHERE `name` = NEW.item_name;
END;//
DELIMITER ;//
