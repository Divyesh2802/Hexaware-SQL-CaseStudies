-- DATABASE DESIGN
-- Question 1
CREATE DATABASE SCHOOL;
USE SCHOOL;
CREATE TABLE CourseMaster(
	CID INT PRIMARY KEY,
	CourseName VARCHAR(40) NOT NULL,
	Category CHAR(1) CHECK(Category IN ('B','M','A')),
	Fee SMALLMONEY NOT NULL CHECK(Fee > 0)
);
CREATE TABLE StudentMaster(
	SID TINYINT PRIMARY KEY,
	StudentName VARCHAR(40) NOT NULL,
	Origin CHAR(1) NOT NULL CHECK(Origin IN ('L','F')),
	Type CHAR(1) NOT NULL CHECK(Type IN ('U','G'))
);
CREATE TABLE EnrollmentMaster(
	CID INT NOT NULL,
	SID TINYINT NOT NULL,
	DOE DATETIME NOT NULL,
	FWF BIT NOT NULL,
	Grade CHAR(1) NOT NULL CHECK(Grade IN ('O','A','B','C')),
	FOREIGN KEY(CID) REFERENCES CourseMaster(CID) ON DELETE CASCADE,
	FOREIGN KEY(SID) REFERENCES StudentMaster(SID) ON DELETE CASCADE
);
-- INSERT RECORDS
INSERT INTO CourseMaster VALUES(101,'Python','B',500.00);
INSERT INTO CourseMaster VALUES(102,'Java','M',1500.00);
INSERT INTO CourseMaster VALUES(103,'C','A',2500.00);
INSERT INTO CourseMaster VALUES(104,'C#','B',500.00);
INSERT INTO CourseMaster VALUES(105,'C++','M',1500.00);
INSERT INTO CourseMaster VALUES(106,'JavaScript','A',2500.00);
INSERT INTO CourseMaster VALUES(107,'AI','B',500.00);
INSERT INTO CourseMaster VALUES(108,'ML','M',1500.00);
INSERT INTO CourseMaster VALUES(109,'CSS','M',1500.00);
INSERT INTO CourseMaster VALUES(110,'HTML','A',2500.00);

INSERT INTO StudentMaster VALUES(1,'Aswitha','L','G');
INSERT INTO StudentMaster VALUES(2,'Vishwa','F','U');
INSERT INTO StudentMaster VALUES(3,'Guru','F','G');
INSERT INTO StudentMaster VALUES(4,'Divyesh','L','G');
INSERT INTO StudentMaster VALUES(5,'Greeshmanth','F','U');
INSERT INTO StudentMaster VALUES(6,'Kishore','L','G');
INSERT INTO StudentMaster VALUES(7,'Madeep','L','U');
INSERT INTO StudentMaster VALUES(8,'Keerthi','F','G');
INSERT INTO StudentMaster VALUES(9,'Manasa','L','U');
INSERT INTO StudentMaster VALUES(10,'Poojitha','L','G');
INSERT INTO StudentMaster VALUES(11,'Anusha','L','U');
INSERT INTO StudentMaster VALUES(12,'Anvitha','F','U');
INSERT INTO StudentMaster VALUES(13,'Harsha','F','U');
INSERT INTO StudentMaster VALUES(14,'Manas','F','U');
INSERT INTO StudentMaster VALUES(15,'Hemanth','F','U');
INSERT INTO StudentMaster VALUES(16,'Ankit','F','U');
INSERT INTO StudentMaster VALUES(17,'Anil','F','U');
INSERT INTO StudentMaster VALUES(18,'Mohith','F','U');
INSERT INTO StudentMaster VALUES(19,'Mahitha','F','U');
INSERT INTO StudentMaster VALUES(20,'Pranathi','F','U');
INSERT INTO StudentMaster VALUES(21,'Mahendra','F','U');

INSERT INTO EnrollmentMaster VALUES(101,1,'2020-05-15 15:30:02',0,'O');
INSERT INTO EnrollmentMaster VALUES(102,2,'2023-02-10 10:10:00',1,'A');
INSERT INTO EnrollmentMaster VALUES(103,4,'2022-12-20 15:30:00',0,'C');
INSERT INTO EnrollmentMaster VALUES(104,6,'2021-01-10 12:30:00',0,'B');
INSERT INTO EnrollmentMaster VALUES(101,10,'2019-10-11 19:30:12',1,'O');
INSERT INTO EnrollmentMaster VALUES(105,8,'2023-11-12 17:00:20',0,'C');
INSERT INTO EnrollmentMaster VALUES(102,8,'2020-10-01 16:30:30',1,'O');
INSERT INTO EnrollmentMaster VALUES(106,9,'2023-08-10 12:10:45',1,'A');
INSERT INTO EnrollmentMaster VALUES(107,2,'2023-07-12 10:20:20',1,'A');
INSERT INTO EnrollmentMaster VALUES(109,3,'2020-07-10 09:30:15',1,'B');
INSERT INTO EnrollmentMaster VALUES(109,5,'2020-05-28 15:30:00',1,'A');
INSERT INTO EnrollmentMaster VALUES(102,7,'2021-01-31 15:30:00',1,'O');
INSERT INTO EnrollmentMaster VALUES(110,9,'2015-02-20 16:30:00',0,'C');
INSERT INTO EnrollmentMaster VALUES(110,7,'2020-02-10 12:30:00',0,'C');
INSERT INTO EnrollmentMaster VALUES(102,9,'2023-03-20 11:00:00',0,'C');
INSERT INTO EnrollmentMaster VALUES(105,9,'2021-02-21 15:00:00',0,'C');
INSERT INTO EnrollmentMaster VALUES(106,10,'2014-04-25 15:00:00',0,'C');
INSERT INTO EnrollmentMaster VALUES(101,2,'2023-11-22 17:00:20',1,'A');
INSERT INTO EnrollmentMaster VALUES(104,4,'2020-05-10 12:30:00',0,'B');
INSERT INTO EnrollmentMaster VALUES(101,3,'2022-11-22 17:00:20',1,'A');
INSERT INTO EnrollmentMaster VALUES(101,4,'2023-10-22 17:00:20',0,'A');
INSERT INTO EnrollmentMaster VALUES(101,5,'2021-11-22 16:00:32',1,'A');
INSERT INTO EnrollmentMaster VALUES(101,6,'2020-11-22 14:00:10',0,'A');
INSERT INTO EnrollmentMaster VALUES(101,7,'2023-11-22 17:25:20',1,'A');
INSERT INTO EnrollmentMaster VALUES(101,8,'2023-11-22 17:30:20',0,'A');
INSERT INTO EnrollmentMaster VALUES(101,9,'2023-11-22 14:00:20',1,'A');
INSERT INTO EnrollmentMaster VALUES(101,11,'2020-11-22 12:00:20',1,'A');
INSERT INTO EnrollmentMaster VALUES(101,12,'2020-11-22 12:00:20',0,'C');
INSERT INTO EnrollmentMaster VALUES(101,13,'2020-11-22 12:00:20',0,'O');
INSERT INTO EnrollmentMaster VALUES(101,14,'2020-11-22 12:00:20',0,'O');
INSERT INTO EnrollmentMaster VALUES(101,15,'2020-11-22 12:00:20',0,'A');
INSERT INTO EnrollmentMaster VALUES(101,16,'2020-11-22 12:00:20',1,'B');
INSERT INTO EnrollmentMaster VALUES(101,17,'2020-11-22 12:00:20',1,'A');
INSERT INTO EnrollmentMaster VALUES(101,18,'2020-11-22 12:00:20',1,'O');
INSERT INTO EnrollmentMaster VALUES(106,19,'2016-04-25 12:10:00',0,'C');
INSERT INTO EnrollmentMaster VALUES(110,20,'2020-05-20 11:30:00',0,'C');
INSERT INTO EnrollmentMaster VALUES(106,21,'2016-04-25 12:10:00',0,'C');
INSERT INTO EnrollmentMaster VALUES(107,7,'2020-04-25 12:10:00',1,'C');
INSERT INTO EnrollmentMaster VALUES(101,21,'2020-11-22 12:00:20',1,'C');
INSERT INTO EnrollmentMaster VALUES(101,20,'2020-11-22 12:00:20',1,'O');
INSERT INTO EnrollmentMaster VALUES(101,19,'2020-11-22 12:00:20',1,'O');
INSERT INTO EnrollmentMaster VALUES(107,4,'2023-11-22 12:00:20',1,'O');
INSERT INTO EnrollmentMaster VALUES(107,6,'2023-11-22 10:10:20',1,'B');

SELECT * FROM [dbo].[CourseMaster];
SELECT * FROM [dbo].[StudentMaster];
SELECT * FROM [dbo].[EnrollmentMaster];
-- SQL QUERIES
-- Question 1
SELECT E.[CID],COUNT(S.[SID]) 'TotalNoOfForeignStudentsEnrolled' FROM [dbo].[StudentMaster] AS S
JOIN [dbo].[EnrollmentMaster] AS E
ON S.[SID] = E.[SID]
WHERE S.[Origin] = 'F'
GROUP BY E.[CID]
HAVING COUNT(S.[SID]) > 10;
-- Question 2
SELECT S.[StudentName],C.[CourseName] FROM [dbo].[StudentMaster] AS S
JOIN [dbo].[EnrollmentMaster] AS E
ON S.[SID] = E.[SID]
JOIN [dbo].[CourseMaster] AS C
ON E.[CID] = C.[CID]
WHERE C.[CourseName] <> 'Java'
EXCEPT
SELECT S.[StudentName],C.[CourseName] FROM [dbo].[StudentMaster] AS S
JOIN [dbo].[EnrollmentMaster] AS E
ON S.[SID] = E.[SID]
JOIN [dbo].[CourseMaster] AS C
ON E.[CID] = C.[CID]
WHERE C.[CourseName] = 'Java';
-- Question 3
SELECT C.[CourseName],COUNT(S.[Origin]) 'NoOfForeignEnrollments' FROM [dbo].[CourseMaster] AS C
JOIN [dbo].[EnrollmentMaster] AS E
ON C.[CID] = E.[CID]
JOIN [dbo].[StudentMaster] AS S
ON E.[SID] = S.[SID]
WHERE C.[Category] = 'A' AND S.[Origin] = 'F'
GROUP BY S.[Origin],C.[CourseName]
ORDER BY 2 DESC
OFFSET 0 ROWS
FETCH NEXT 1 ROWS ONLY;
-- Question 4
SELECT S.[StudentName],E.[DOE] FROM [dbo].[StudentMaster] AS S
JOIN [dbo].[EnrollmentMaster] AS E
ON S.[SID] = E.[SID]
JOIN [dbo].[CourseMaster] AS C
ON E.[CID] = C.[CID]
WHERE C.[Category] = 'B' AND MONTH(E.[DOE]) = MONTH(GETDATE());
-- Question 5
SELECT S.[StudentName],S.[Type],S.[Origin],C.[CourseName],C.[Category],E.[Grade] 
FROM [dbo].[StudentMaster] AS S
JOIN [dbo].[EnrollmentMaster] AS E
ON S.[SID] = E.[SID]
JOIN [dbo].[CourseMaster] AS C
ON E.[CID] = C.[CID]
WHERE S.[Type] = 'U'
AND S.[Origin] = 'L' 
AND C.[Category] = 'B' 
AND E.[Grade] = 'C';
-- Question 6
SELECT DISTINCT C.[CourseName],E.[DOE] FROM [dbo].[CourseMaster] AS C
FULL JOIN [dbo].[EnrollmentMaster] AS E
ON C.[CID] = E.[CID]
WHERE MONTH(E.[DOE]) <> 05 AND YEAR(E.[DOE]) <> 2020;
-- Question 7
SELECT C.[CourseName],COUNT(E.[CID]) 'NoOfEnrollments',
CASE
	WHEN COUNT(E.[CID]) > 50 THEN 'High'
	WHEN COUNT(E.[CID]) >= 20 AND COUNT(E.[CID]) < 50 THEN 'Medium'
	WHEN COUNT(E.[CID]) < 20 THEN 'Low'
END 'Popularity' 
FROM [dbo].[CourseMaster] AS C
JOIN [dbo].[EnrollmentMaster] AS E
ON C.[CID] = E.[CID]
GROUP BY C.[CourseName];
-- Question 8
SELECT S.[StudentName],C.[CourseName],E.[DOE],
DATEDIFF(DAY,E.[DOE],GETDATE()) 'AgeOfEnrollment(In Days)'
FROM [dbo].[StudentMaster] AS S
JOIN [dbo].[EnrollmentMaster] AS E
ON S.[SID] = E.[SID]
JOIN [dbo].[CourseMaster] AS C
ON E.[CID] = C.[CID]
WHERE DATEDIFF(DAY,E.[DOE],GETDATE()) <= 365
ORDER BY 4;
-- Question 9
SELECT S.[StudentName] FROM [dbo].[StudentMaster] AS S
JOIN [dbo].[EnrollmentMaster] AS E
ON S.[SID] = E.[SID]
JOIN [dbo].[CourseMaster] AS C
ON E.[CID] = C.[CID]
WHERE S.[Origin] = 'L' 
AND C.[Category] = 'B'
GROUP BY S.[StudentName] 
HAVING COUNT(E.[CID]) = 3;
-- Question 10
SELECT C.[CourseName] FROM [dbo].[CourseMaster] AS C
JOIN [dbo].[EnrollmentMaster] AS E
ON C.[CID] = E.[CID]
JOIN [dbo].[StudentMaster] AS S
ON E.[SID] = S.[SID]
GROUP BY C.[CourseName]
HAVING COUNT(E.[CID]) = (SELECT COUNT(*) FROM [dbo].[StudentMaster]);
-- Question 11
SELECT S.[StudentName] FROM [dbo].[StudentMaster] AS S
JOIN [dbo].[EnrollmentMaster] AS E
ON S.[SID] = E.[SID]
WHERE E.[FWF] = 1
AND E.[Grade] = 'O';
-- Question 12
SELECT DISTINCT S.[StudentName] FROM [dbo].[StudentMaster] AS S
JOIN [dbo].[EnrollmentMaster] AS E
ON S.[SID] = E.[SID]
JOIN [dbo].[CourseMaster] AS C
ON E.[CID] = C.[CID]
WHERE S.[Origin] = 'F'
AND S.[Type] = 'U'
AND E.[Grade] = 'C'
AND C.[Category] = 'B';
-- Question 13
SELECT C.[CourseName],
COUNT(E.[CID]) 'TotalNoOfEnrollments(InCurrentMonth)' FROM [dbo].[CourseMaster] AS C
JOIN [dbo].[EnrollmentMaster] AS E
ON C.[CID] = E.[CID]
WHERE MONTH(E.[DOE]) = MONTH(GETDATE())
GROUP BY C.[CourseName];