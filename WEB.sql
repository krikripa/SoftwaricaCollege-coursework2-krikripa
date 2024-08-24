

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

CREATE TABLE Staff (
    StaffID SERIAL PRIMARY KEY,
    StaffName VARCHAR(50) NOT NULL,
    Role VARCHAR(50)
);

CREATE TABLE Machine (
    MachineID INT PRIMARY KEY AUTO_INCREMENT,
    Game VARCHAR(50),
    Year INT,
    Floor INT
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

CREATE TABLE Booking (
    BookingID SERIAL PRIMARY KEY,
    CustomerID INT REFERENCES Customer(CustomerID),
    SessionID INT REFERENCES Session(SessionID),
    BookingDate TIMESTAMP,
    Fee DECIMAL(10, 2),
    Prepaid BOOLEAN
);

CREATE TABLE Consoles (
    ConsoleID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    PEGI VARCHAR(10),
    ConsoleType VARCHAR(50),
    Quantity INT
);

CREATE TABLE SessionConsole (
    SessionID INT REFERENCES Session(SessionID),
    consoleDate DATE,
    Quantity INT,
    ConsoleID INT REFERENCES Console(ConsoleID),
    PRIMARY KEY (SessionID, ConsoleID)
);


    
