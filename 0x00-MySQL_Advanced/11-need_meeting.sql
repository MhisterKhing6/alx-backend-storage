-- A view lists all students that have a score under 80 (strict) and no last_meeting or more than 1 month.
-- View nice meeting produce the above requirement
CREATE VIEW IF NOT EXISTS `need_meeting` AS SELECT * FROM students WHERE score <= 80 AND (last_mettings IS NULL);