/*Q2*/
select * from temporary_crop;
select region_name, crop_name from temporary_crop;
select region_name, crop_name, area from temporary_crop order by area asc;
select region_name, crop_name, area from temporary_crop order by area desc;
select * from temporary_crop order by area limit 10;
select * from temporary_crop order by area desc limit 100,10;
select count(*) from temporary_crop;
select distinct crop_name from temporary_crop limit 5;
