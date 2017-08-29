INSERT INTO dbo.CustomerTarget(CustomerID,Name,PersonID)
SELECT c.CustomerID, p.FirstName + ' ' + p.LastName, PersonID
FROM AdventureWorks2012.Sales.Customer AS c
INNER JOIN AdventureWorks2012.Person.Person AS p ON c.PersonID = p.BusinessEntityID
WHERE c.CustomerID IN (29485,29486,21139);