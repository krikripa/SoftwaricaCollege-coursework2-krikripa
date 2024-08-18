<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

    CREATE TABLE Customer (
    CustomerID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Address VARCHAR(100),
    MembershipType VARCHAR(20),
    MembershipFee Decimal(10,2),
    JoinDate DATE,
    DateofBirth DATE
);

CREATE TABLE Session (
    SessionID INT PRIMARY KEY AUTO_INCREMENT,
    SessionDay VARCHAR(20),
    StartTime TIME,
    EndTime TIME,
    SessionType VARCHAR(20),
    Floor INT,
    Price DECIMAL(10, 2)
);

CREATE TABLE Consoles (
    ConsoleID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    PEGI VARCHAR(10),
    ConsoleType VARCHAR(50),
    Quantity INT
);

    
</body>
</html>
