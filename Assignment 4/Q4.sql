WITH VTypeCount AS
(SELECT VehicleID, VehicleType
FROM Vehicle)
SELECT VehicleType, COUNT(*) AS VehicleTotalByID
FROM VTypeCount
GROUP BY VehicleType;