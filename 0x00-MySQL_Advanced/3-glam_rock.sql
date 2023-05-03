--order the number of fan from a band --
select `band_name` ,(`split` - `formed`) as `lifespan` 
FROM  `metal_bands`
WHERE `style`='Glam rock'
ORDER BY `lifespan` DESC;
