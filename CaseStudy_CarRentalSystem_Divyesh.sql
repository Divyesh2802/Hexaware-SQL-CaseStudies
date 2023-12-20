-- CAR RENTAL SYSTEM CASE STUDY
CREATE DATABASE CarRentalSystemCaseStudy;
USE CarRentalSystemCaseStudy;
-- SQL Schema
CREATE TABLE Vehicle(
	vehicleID INT PRIMARY KEY,
	make VARCHAR(50) NOT NULL,
	model VARCHAR(50) NOT NULL,
	year INT NOT NULL,
	dailyRate FLOAT NOT NULL,
	status INT NOT NULL,
	passengerCapacity INT NOT NULL, 
	engineCapacity INT NOT NULL
);
CREATE TABLE Customer(
	customerID INT PRIMARY KEY,
	firstName VARCHAR(50) NOT NULL,
	lastName VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	phoneNumber VARCHAR(20) NOT NULL
);
CREATE TABLE Lease(
	leaseID INT PRIMARY KEY,
	vehicleID INT NOT NULL,
	customerID INT NOT NULL,
	startDate DATE NOT NULL,
	endDate DATE NOT NULL,
	type VARCHAR(50) NOT NULL,
	FOREIGN KEY(vehicleID) REFERENCES Vehicle(vehicleID) ON DELETE CASCADE,
	FOREIGN KEY(customerID) REFERENCES Customer(customerID) ON DELETE CASCADE
);
CREATE TABLE Payment(
	paymentID INT PRIMARY KEY,
	leaseID INT NOT NULL,
	paymentDate DATE NOT NULL,
	amount FLOAT NOT NULL,
	FOREIGN KEY(leaseID) REFERENCES Lease(leaseID) ON DELETE CASCADE
);
-- Inserting Values
INSERT INTO [dbo].[Vehicle] VALUES(1,'Toyota','Camry',2022,50.00,1,4,1450);
INSERT INTO [dbo].[Vehicle] VALUES(2,'Honda','Civic',2023,45.00,1,7,1500);
INSERT INTO [dbo].[Vehicle] VALUES(3,'Ford','Focus',2022,48.00,0,4,1400);
INSERT INTO [dbo].[Vehicle] VALUES(4,'Nissan','Altima',2023,52.00,1,7,1200);
INSERT INTO [dbo].[Vehicle] VALUES(5,'Chevrolet','Malibu',2022,47.00,1,4,1800);
INSERT INTO [dbo].[Vehicle] VALUES(6,'Hyundai','Sonata',2023,49.00,0,7,1400);
INSERT INTO [dbo].[Vehicle] VALUES(7,'BMW','3 Series',2023,60.00,1,7,2499);
INSERT INTO [dbo].[Vehicle] VALUES(8,'Mercedes','C-Class',2022,58.00,1,8,2599);
INSERT INTO [dbo].[Vehicle] VALUES(9,'Audi','A4',2022,55.00,0,4,2500);
INSERT INTO [dbo].[Vehicle] VALUES(10,'Lexus','ES',2023,54.00,1,4,2500);

INSERT INTO [dbo].[Customer] VALUES(1,'John','Doe','johndoe@example.com','555-555-5555');
INSERT INTO [dbo].[Customer] VALUES(2,'Jane','Smith','janesmith@example.com','555-123-4567');
INSERT INTO [dbo].[Customer] VALUES(3,'Robert','Johnson','robert@example.com','555-789-1234');
INSERT INTO [dbo].[Customer] VALUES(4,'Sarah','Brown','sarah@example.com','555-456-7890');
INSERT INTO [dbo].[Customer] VALUES(5,'David','Lee','david@example.com','555-987-6543');
INSERT INTO [dbo].[Customer] VALUES(6,'Laura','Hall','laura@example.com','555-234-5678');
INSERT INTO [dbo].[Customer] VALUES(7,'Michael','Davis','michael@example.com','555-876-5432');
INSERT INTO [dbo].[Customer] VALUES(8,'Emma','Wilson','emma@example.com','555-432-1098');
INSERT INTO [dbo].[Customer] VALUES(9,'William','Taylor','william@example.com','555-321-6547');
INSERT INTO [dbo].[Customer] VALUES(10,'Olivia','Adams','olivia@example.com','555-765-4321');

INSERT INTO [dbo].[Lease] VALUES(1,1,1,'2023-01-01','2023-01-05','Daily');
INSERT INTO [dbo].[Lease] VALUES(2,2,2,'2023-02-15','2023-02-28','Monthly');
INSERT INTO [dbo].[Lease] VALUES(3,3,3,'2023-03-10','2023-03-15','Daily');
INSERT INTO [dbo].[Lease] VALUES(4,4,4,'2023-04-20','2023-04-30','Monthly');
INSERT INTO [dbo].[Lease] VALUES(5,5,5,'2023-05-05','2023-05-10','Daily');
INSERT INTO [dbo].[Lease] VALUES(6,4,3,'2023-06-15','2023-06-30','Monthly');
INSERT INTO [dbo].[Lease] VALUES(7,7,7,'2023-07-01','2023-07-10','Daily');
INSERT INTO [dbo].[Lease] VALUES(8,8,8,'2023-08-12','2023-08-15','Monthly');
INSERT INTO [dbo].[Lease] VALUES(9,3,3,'2023-09-07','2023-09-10','Daily');
INSERT INTO [dbo].[Lease] VALUES(10,10,10,'2023-10-10','2023-10-31','Monthly');

INSERT INTO [dbo].[Payment] VALUES(1,1,'2023-01-03',200.00);
INSERT INTO [dbo].[Payment] VALUES(2,2,'2023-02-20',1000.00);
INSERT INTO [dbo].[Payment] VALUES(3,3,'2023-03-12',75.00);
INSERT INTO [dbo].[Payment] VALUES(4,4,'2023-04-25',900.00);
INSERT INTO [dbo].[Payment] VALUES(5,5,'2023-05-07',60.00);
INSERT INTO [dbo].[Payment] VALUES(6,6,'2023-06-18',1200.00);
INSERT INTO [dbo].[Payment] VALUES(7,7,'2023-07-03',40.00);
INSERT INTO [dbo].[Payment] VALUES(8,8,'2023-08-14',1100.00);
INSERT INTO [dbo].[Payment] VALUES(9,9,'2023-09-09',80.00);
INSERT INTO [dbo].[Payment] VALUES(10,10,'2023-10-25',1500.00);
-- Displaying Tables
SELECT * FROM [dbo].[Vehicle];
SELECT * FROM [dbo].[Customer];
SELECT * FROM [dbo].[Lease];
SELECT * FROM [dbo].[Payment];