<--SELECT QUERY-->
SELECT CustomerName
FROM booking
WHERE SessionID = 1 AND (Prepaid = 0 OR Prepaid IS NULL);

<--Decending Query-->
SELECT *
FROM Machine
WHERE Floor = 2
ORDER BY Year DESC;

<--Count Query-->
SELECT COUNT(*) AS PS2_Game_Count
FROM consoles
WHERE ConsoleType = 'PS2';

<--Selecting staff Query-->
SELECT StaffName
FROM Staff
WHERE Role = 'Counter' AND StaffID IN (3, 4);

<--Update Query-->
UPDATE Machine
SET Floor = 2
WHERE Game = 'Grand_Theft_Auto' AND Floor = 1;

<--Delete Query-->
DELETE FROM Machine
WHERE Game = 'Mario';
