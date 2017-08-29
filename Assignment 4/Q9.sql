SELECT *
FROM
(SELECT VehicleID, VehicleType
FROM Vehicle) AS vPivot
PIVOT
(
COUNT(VehicleID)
	FOR VehicleType
	IN ([1], [2],[3],[4])
) AS PivotTable;