SELECT c.CustomerID, c.CustomerFName, c.CustomerLName, v.Model
FROM Rental AS r
INNER JOIN Customer AS c ON
c.CustomerID = r.CustomerID
INNER JOIN Vehicle AS v ON
r.VehicleID = v.VehicleID;