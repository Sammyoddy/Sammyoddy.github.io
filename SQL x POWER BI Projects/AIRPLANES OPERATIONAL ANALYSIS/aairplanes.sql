-- Total Landed Weight by Airline
SELECT OperatingAirline, SUM(TotalLandedWeight) AS TotalWeight
FROM AirlineOperations
GROUP BY OperatingAirline;

-- Top 10 Airlines by Total Landed Weight
SELECT OperatingAirline, SUM(TotalLandedWeight) AS TotalWeight
FROM AirlineOperations
GROUP BY OperatingAirline
ORDER BY 2 DESC
LIMIT 10;

-- Aircraft Types and Counts
SELECT AircraftBodyType AS AircraftType, COUNT(*) AS AircraftCount
FROM AirlineOperations
GROUP BY AircraftBodyType
ORDER BY 2 DESC;

-- Aircraft Manufacturer Distribution
SELECT AircraftManufacturer, COUNT(*) AS OperationCount
FROM AirlineOperations
GROUP BY AircraftManufacturer;

-- Top 10 Airlines by Operation Count
SELECT OperatingAirline, COUNT(*) AS OperationCount
FROM AirlineOperations
GROUP BY OperatingAirline
ORDER BY 2 DESC
LIMIT 10;

-- Total Landings by Airline and Aircraft Model
SELECT OperatingAirline, AircraftModel, SUM(LandingCount) AS TotalLandings
FROM AirlineOperations
GROUP BY OperatingAirline, AircraftModel
ORDER BY 3 DESC
LIMIT 7;
