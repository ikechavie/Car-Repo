SELECT c.CustomerFName, c.CustomerLName, Rental.VehicleID
FROM Customer AS c
INNER JOIN Rental
ON c.CustomerID = Rental.CustomerID
WHERE c.CustomerState = 'MN';