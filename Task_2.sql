<--Filling INFO-->

<--CUETOMER TABLE-->
INSERT INTO Customer (FirstName, LastName, Address, MembershipType, MembershipFee, JoinDate, DateOfBirth)
VALUES
('Saroj', 'Upadhyay', 'Dillibazar, Kathmandu', 'Standard', 1000.00, '2023-09-01', '1998-02-01'),
('Shyam', 'Sharma', 'Thamel, Kathmandu', 'Premium', 1500.00, '2023-07-15', '1995-05-12'),
('Ravi', 'Singh', 'Patan, Lalitpur', 'Standard', 1000.00, '2023-08-10', '1992-03-22'),
('Anita', 'KC', 'Baneshwor, Kathmandu', 'Premium', 1500.00, '2023-06-25', '1999-11-10'),
('Ram', 'Thapa', 'Balaju, Kathmandu', 'Standard', 1000.00, '2023-09-05', '2000-01-15');


<--SESSION TABLE-->
INSERT INTO Session (SessionDay, StartTime, EndTime, SessionType, Floor, Price)
VALUES
('Sunday', '11:00:00', '7:00:00', 'Free', 1, 1000),
('Sunday', '11:00:00', '7:00:00', 'Free', 2, 500),
('Saturday', '11:00:00', '7:00:00', 'Free', 1, 1000),
('Friday', '7:00:00', '10:00:00', 'Special', 2, 500);

<--STAFF TABLE-->
INSERT INTO Staff (StaffName, StaffID, Role)
VALUES
('Sujal Bohara', 1, 'Cafe'),
('Rajesh Hamal', 2, 'Maintenance'),
('Rooz Ojha', 3, 'Counter'),
('Rashi Timsina', 4, 'Counter'),
('Jack Jones', 5, 'Maintenance');


<--Machine TABLE-->
INSERT INTO Machine (MachineID, Game, Year, Floor)
VALUES
(123, 'Mario', 2005, 1),
(78, 'Grand_Theft_Auto', 2013, 1),
(12, 'Pokemon', 2016, 2),
(45, 'PUBG_Battlegrounds', 2004, 1);

<--Booking Table-->
INSERT INTO booking (CustomerName, SessionID, BookingDate, Member, Fee, Prepaid)
VALUES
('Saroj Upadhyay', 1, '2023-10-21', TRUE, NULL, NULL),
('Neha Kakkar', 1, '2023-10-21', FALSE, 1000.00, FALSE),
('Himani Puri', 1, '2023-10-21', TRUE, 900.00, TRUE),
('Ritesh Gurung', 1, '2023-10-25', FALSE, 1000.00, FALSE),
('Rohan Jha', 2, '2023-10-21', FALSE, 450.00, FALSE),
('Ghanshyam Bhat', 4, '2023-10-06', TRUE, 450.00, TRUE);

<--Session Console-->
INSERT INTO sessionconsoleonsole (SessionID, consoleDate, ConsoleType, Quantity)
VALUES
(1, '2023-10-21', 'PS1', 2),
(2, '2023-10-21', 'PS2', 2);

<--Console-->
INSERT INTO consoles (`ConsoleID`, `Name`, `PEGI`, `ConsoleType`, `Quantity`)
VALUES
(NULL, 'FIFA 18', 'PG', 'PS1', 3),
(NULL, 'FIFA 18', 'PG', 'PS2', 2),
(NULL, 'Horizon Zero Dawn', 'PG', 'PS4', 3),
(NULL, 'Horizon Zero Dawn', 'PG', 'PS2', 2),
(NULL, 'Legend of Zelda', 'PG', 'Nintendo Switch', 2),
(NULL, 'Halo 3', '15', 'Xbox 360', 4);


