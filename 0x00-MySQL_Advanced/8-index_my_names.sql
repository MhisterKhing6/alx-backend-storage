-- Creating index on names table with first letter of name
-- Creating a name Index using the first letter of name
CREATE INDEX IF NOT EXISTS `idx_name_first` ON `names`(`name`(1));
