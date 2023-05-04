-- Creating index on names table with first letter of name
-- Creating a name Index using the first letter of name
CREATE INDEX first_letter ON  `names`(`name`(1));
