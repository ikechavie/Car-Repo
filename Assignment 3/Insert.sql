USE CarRental;

TRUNCATE TABLE Compact;
TRUNCATE TABLE Customer;
TRUNCATE TABLE Midsize;
TRUNCATE TABLE Payment;
TRUNCATE TABLE Rental;
TRUNCATE TABLE Store;
TRUNCATE TABLE SUV;
TRUNCATE TABLE Truck;
TRUNCATE TABLE Vehicle;

INSERT INTO Compact
(VehicleID, MaxPassenger)
VALUES
(5, 5),
(6, 5);

INSERT INTO Customer
(CustomerID, CustomerFName, CustomerLName, CustomerAddress, CustomerCity,
AptNum, CustomerState, CustomerZip, CustomerPhone,
CustomerEmail, LicenseID, LienseExpiration)
VALUES
(1, 'Bob', 'Smith', '120 Main Street', 'Mankato',
NULL, 'MN', 56001, 5077776666,
'bob.smith@gmail.com', '56TGHY67JNHYU8I9', '20210410'),

(2, 'Eugine', 'Burger', '22 Penny Lane', 'New York',
NULL, 'NY', 99880, 6789879943,
NULL, '3WWI95827FKPLMQ8', '20200331'),

(3, 'Marie', 'Ann', '1200 Cedar Place', 'Tampa',
'102B', 'FL', 87766, 2334326987,
'marie22@hotmail.com', '9JJ59WKH03ZMT9WI', '20300101'),

(4, 'Susan', 'Tompson', '565 Maple Lane', 'St. Paul',
NULL, 'MN', 55304, 4435789900,
'susan.tompson@gmail.com', '384JGH39TURJVNDJ', '20190701')

INSERT INTO Midsize
(VehicleID, FoldableSeats)
VALUES
(7, 1),
(8, 0)

INSERT INTO Payment
([PaymentID]
      ,[RentalID]
      ,[PaymentBalance]
      ,[PaymentMade]
      ,[PaymentType])
VALUES
(1, 1, 450, 0, NULL),
(2, 2, 330, 100, 'Credit')

INSERT INTO Rental
([RentalID]
      ,[CustomerID]
      ,[PaymentID]
      ,[StoreID]
      ,[VehicleID]
      ,[RentalStartDate]
      ,[RentalReturnDate]
      ,[MilesDriven]
      ,[InsuranceAmount]
      ,[LateFeeDays]
      ,[LateFeePrice])
VALUES
(1, 1, 1, 1, 1, '20170331', '20170425',
300, 5000, NULL, NULL),
(2, 2, 2, 2, 1, '20170402', '20170412',
75, 4750, 3, 50),
(3, 3, 3, 1, 6, '20170506', '20170606',
322, 3200, NULL, NULL),
(4, 4, 2, 2, 5, '20170404', '20170408',
298, 1000, NULL, NULL)

INSERT INTO Store
([StoreID]
      ,[StoreCity]
      ,[StoreState]
      ,[StoreZip])
VALUES
(1, 'Mankato', 'MN', 56001),
(2, 'Sacramento', 'CA', 10223)

INSERT INTO SUV
(VehicleID, TowLimit)
VALUES
(3, 1500),
(4, 2000)

INSERT INTO Truck
(VehicleID, BedSize)
VALUES
(1, '4x4'),
(2, '6x4')

INSERT INTO Vehicle
([VehicleID]
      ,[VehicleType]
      ,[Make]
      ,[Model]
      ,[VehicleYear]
      ,[Mileage]
      ,[LicensePlace]
      ,[VinNumb]
      ,[RentalPrice])
VALUES
(1, 1, 'Ford', 'F-150', 2016, 40356, 'VFT435', '7564829047', 200),
(2, 1, 'Chevrolet', 'Silverado', 2012, 76882, 'BUU871', '8493088295', 180),
(3, 2, 'Honda', 'CR-V', 2014, 56778, 'NNC221', '6648229687', 145),
(4, 2, 'Mazda', 'CX-5', 2014, 65790, 'YQQ509', '8712823318', 175),
(5, 3, 'Kia', 'Soul', 2017, 2901, 'POI113', '1422538693', 210),
(6, 3, 'Chevrolet', 'Bolt', 2016, 43112, 'CVW544', '7559300254', 185),
(7, 4, 'Toyota', 'Camry', 2015, 74338, 'MJJ964', '5527384122', 160),
(8, 4, 'Nissan', 'Altima', 2016, 45663, 'QVB990', '7744928675', 180)
