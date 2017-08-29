USE CarRental

IF OBJECT_ID('dbo.Store', 'U') IS NOT NULL 
  DROP TABLE dbo.Store; 

IF OBJECT_ID('dbo.Midsize', 'U') IS NOT NULL 
  DROP TABLE dbo.Midsize; 

IF OBJECT_ID('dbo.Payment', 'U') IS NOT NULL 
  DROP TABLE dbo.Payment; 

IF OBJECT_ID('dbo.SUV', 'U') IS NOT NULL 
  DROP TABLE dbo.SUV; 

IF OBJECT_ID('dbo.Truck', 'U') IS NOT NULL 
  DROP TABLE dbo.Truck; 

IF OBJECT_ID('dbo.Vehicle', 'U') IS NOT NULL 
  DROP TABLE dbo.Vehicle;
  
IF OBJECT_ID('dbo.Customer', 'U') IS NOT NULL 
  DROP TABLE dbo.Customer; 

IF OBJECT_ID('dbo.Rental', 'U') IS NOT NULL 
  DROP TABLE dbo.Rental;
  
IF OBJECT_ID('dbo.Compact', 'U') IS NOT NULL 
  DROP TABLE dbo.Compact; 

CREATE TABLE Store (
    StoreID int NOT NULL PRIMARY KEY,
    StoreCity varchar(50) NOT NULL,
    StoreZip int NOT NULL,
    StoreState varchar(2) NOT NULL
);

CREATE TABLE Customer (
    CustomerID int NOT NULL PRIMARY KEY,
    CustomerFName varchar(50) NOT NULL,
    CustomerLName varchar(50) NOT NULL,
    CustomerAddress varchar(50) NOT NULL,
    CustomerCity varchar(50) NOT NULL,
	AptNum varchar(10),
	CustomerState char(2) NOT NULL,
	CustomerZip int NOT NULL,
	CustomerPhone varchar(10) NOT NULL,
	CustomerEmail varchar(100),
	LicenseID varchar(30) NOT NULL,
	LienseExpiration date NOT NULL
);

CREATE TABLE Rental (
    RentalID int NOT NULL PRIMARY KEY,
    CustomerID int NOT NULL,
    PaymentID int NOT NULL,
    StoreID int NOT NULL,
    VehicleID int NOT NULL,
	RentalStartDate date NOT NULL,
	RentalReturnDate date,
	MilesDriven int,
	InsuranceAmount MONEY NOT NULL,
	LateFeeDays int,
	LateFeePrice MONEY
);

CREATE TABLE Payment (
    PaymentID int NOT NULL PRIMARY KEY,
    RentalID int NOT NULL,
    PaymentBalance MONEY NOT NULL,
    PaymentMade MONEY,
    PaymentType varchar(30) 
);

CREATE TABLE Vehicle (
    VehicleID int NOT NULL PRIMARY KEY,
    VehicleType varchar(50) NOT NULL,
    Make varchar(50) NOT NULL,
    Model varchar(50) NOT NULL,
    VehicleYear int NOT NULL,
	Mileage int,
	LicensePlace varchar(6) NOT NULL,
	VinNumb varchar(100) NOT NULL,
	RentalPrice MONEY
);

CREATE TABLE Truck (
    VehicleID int NOT NULL PRIMARY KEY,
    BedSize varchar(3) 
);

CREATE TABLE SUV (
    VehicleID int NOT NULL PRIMARY KEY,
    TowLimit int 
);

CREATE TABLE Compact (
    VehicleID int NOT NULL PRIMARY KEY,
    MaxPassenger int
);

CREATE TABLE Midsize (
    VehicleID int NOT NULL PRIMARY KEY,
    FoldableSeats BIT
);