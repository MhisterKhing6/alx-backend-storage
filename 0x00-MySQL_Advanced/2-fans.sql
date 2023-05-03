-- order the number of fan from a band
-- Select the orgisins from metal bans
select `origin` , SUM(`fans`) as `nb_fans` FROM `metal_bands`
GROUP BY  `origin`
ORDER BY `nb_fans` DESC;
