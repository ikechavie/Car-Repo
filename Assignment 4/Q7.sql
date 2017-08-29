CREATE TRIGGER CustomerChange
ON Customer
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
	PRINT 'Customer table has been changed!'
END;