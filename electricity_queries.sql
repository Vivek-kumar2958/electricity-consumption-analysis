CREATE TABLE electricity_consumption (
    States VARCHAR(50),
    Regions VARCHAR(10),
    Latitude FLOAT,
    Longitude FLOAT,
    Dates DATE,
    Usage FLOAT
);

INSERT INTO electricity_consumption 
(States, Regions, Latitude, Longitude, Dates, Usage)
VALUES
('Punjab','NR',31.51997,75.98,'2019-01-01',119.9);

SELECT States, SUM(Usage) AS Total_Usage
FROM electricity_consumption
GROUP BY States;

SELECT Regions, AVG(Usage) AS Avg_Usage
FROM electricity_consumption
GROUP BY Regions;

SELECT YEAR(Dates) AS Year, SUM(Usage) AS Total_Usage
FROM electricity_consumption
GROUP BY YEAR(Dates);
