SELECT (c.CustomerFName + ' ' + c.CustomerLName) AS CustomerName,
v.Make, v.Model, v.VehicleYear
FROM Vehicle AS v WITH(INDEX(VehicleAge))
INNER JOIN Rental AS r
ON v.VehicleID = r.VehicleID
INNER JOIN Customer AS c
ON c.CustomerID = r.CustomerID;