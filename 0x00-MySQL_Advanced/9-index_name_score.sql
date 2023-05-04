-- Creating index on names table with first letter of name
-- Creating a name Index using the first letter of name
CREATE INDEX IF NOT EXISTS `idx_name_first_score` ON  `names`(`name`(1),`score`);
