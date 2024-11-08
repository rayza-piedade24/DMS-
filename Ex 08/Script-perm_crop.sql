
select region_name, crop_name from permanent_crop;
SELECT region_name, crop_name, area FROM permanent_crop ORDER BY area ASC;
SELECT region_name, crop_name, area FROM permanent_crop ORDER BY area DESC;
select * from permanent_crop order by area desc limit 10;
SELECT * FROM permanent_crop ORDER BY area DESC LIMIT 100,10;
SELECT count(*) FROM permanent_crop;
/*Q1*/
SELECT DISTINCT crop_name  FROM permanent_crop limit 5;

select * from permanent_crop where region_level = 'municipality';
select * from permanent_crop where region_level = 'municipality' and `year`=2019;
/*Q3*/
select * from permanent_crop where region_level = 'municipality' and `year`=2019 and crop_name = 'Vineyards';
/*Q4*/
select region_name, crop_name, area from permanent_crop where region_level = 'municipality' and `year`=2019 and crop_name = 'Vineyards';
/*Q5*/
select region_name, crop_name, area from permanent_crop where region_level = 'municipality' and `year`=2019 and crop_name = 'Vineyards' order by area desc;
/*Q6*/
select region_name, crop_name, area from permanent_crop where region_level = 'municipality' and `year`=2019 and crop_name = 'Vineyards' order by area desc limit 10;
/*Q7 ad Q9 ask me to complete the same thing*/
select * from permanent_crop where area = 0;
/*Q8*/
select distinct region_name from permanent_crop where area = 0;

select * from permanent_crop where region_level = 'municipality' or region_level = 'freguesia';
/*Q10. The resuly will be an error as the dataset doesn't incorporate 2 regional levels simultaneously*/
