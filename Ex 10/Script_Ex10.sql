CREATE TABLE region_temp
    SELECT * FROM region;
   
INSERT INTO region_temp 
    (NutsID, `Level`, OriginalCode, region_name, region_level)
  VALUES 
    ('PT', 0, 'PT', 'Portugal', 'country');
   
SELECT * FROM region_temp WHERE region_name = 'Portugal'; 

INSERT INTO region_temp 
    (NutsID, `Level`, OriginalCode, region_name, region_level)
  VALUES 
    ('ES', 0, 'ES', 'Espanha', 'country'),
    ('FR', 0, 'FR', 'França', 'country');
    
SELECT * FROM region_temp WHERE ParentCodeID IS NULL; 

UPDATE region_temp 
SET ParentCodeID = 'EU'
where ParentCodeID IS NULL;

delete from region_temp 
where OriginalCode = 'ES' OR OriginalCode = 'FR';

SELECT * FROM region_temp WHERE OriginalCode = 'ES' OR OriginalCode = 'FR';

SELECT * FROM region_temp WHERE region_level = 'freguesia';
DELETE FROM region_temp WHERE region_level = 'freguesia';

select * from region where region_level = 'freguesia';

INSERT INTO region_temp
SELECT * FROM region WHERE region_level = 'freguesia';
