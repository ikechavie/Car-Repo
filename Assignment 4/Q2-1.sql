CREATE PROC spCustomerInfo
AS
SELECT CustomerFName, CustomerLName, CustomerPhone
FROM Customer
WHERE CustomerFName = 'Bob';