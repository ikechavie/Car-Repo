IF OBJECT_ID('dbo.CarRental') IS NOT NULL BEGIN
DROP DATABASE CarRental;
END;
ELSE
CREATE DATABASE CarRental;