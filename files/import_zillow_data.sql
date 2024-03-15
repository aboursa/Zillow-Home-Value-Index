-- Create tables to import Zillow Home Value Index data sets into database
-- Import 5 data sets - data sets are broken out by metro and number of bedrooms

CREATE TABLE zhvi_metro_1bd (
	RegionID VARCHAR(25),
	SizeRank INT,
	RegionName VARCHAR(255),
	RegionType VARCHAR(25),
	StateName VARCHAR(5),
	date_12_31_2019 FLOAT,
	date_12_31_2020 FLOAT,
	date_12_31_2021 FLOAT,
	date_12_31_2022 FLOAT,
	date_12_31_2023 FLOAT
)





-- Once data sets are imported, add column named "bedrooms" for each data set

ALTER TABLE zhvi_metro_1bd
ADD bedroom INT;





-- Populate bedroom number for each data set in newly added bedrooms column

UPDATE zhvi_metro_1bd
SET bedrooms = 1;




-- Create new table and combine all data sets by UNION

CREATE TABLE zhvi_metro_5yrs
AS

	SELECT *
	FROM zhvi_metro_1bd

	UNION

	SELECT *
	FROM zhvi_metro_2bd

	UNION

	SELECT *
	FROM zhvi_metro_3bd

	UNION

	SELECT *
	FROM zhvi_metro_4bd

	UNION

	SELECT *
	FROM zhvi_metro_5bd
	
	
	
	
-- Rename "statename" column to simply "state"

ALTER TABLE zhvi_metro_5yrs
RENAME statename TO state;




-- Data set is now ready to export and upload to Tableau Public (cannot establish an SQL database connection using Tableau Public)