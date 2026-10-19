USE MiniBank;
GO

SELECT FirstName, LastName
FROM Customers
WHERE LastName LIKE N'Y%';

SELECT Email, FirstName, LastName
FROM Customers
WHERE Email IS NULL;

SELECT Iban, Currency
FROM Accounts
WHERE Currency IN ('TRY', 'USD');

SELECT Iban, Balance
FROM Accounts
WHERE Balance BETWEEN 50000 AND 75000;

SELECT Iban, Status
FROM Accounts
WHERE Status NOT IN ( 'ACTIVE');

SELECT FirstName, LastName
FROM Customers
WHERE Phone LIKE '0553097%';
