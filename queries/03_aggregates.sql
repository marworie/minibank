USE MiniBank;
GO

SELECT COUNT(*) AS CustomerCount
FROM Customers;

SELECT COUNT(Email) AS EmailCount
FROM Customers;

SELECT SUM(Balance) AS TotalTryBalance
FROM Accounts
WHERE Currency = 'TRY';

SELECT AVG(Balance) AS BalanceAvg
FROM Accounts
WHERE Currency = 'EUR';

SELECT MIN(Balance) AS MinBalance, MAX (Balance) AS MaxBalance
FROM Accounts
WHERE Status = 'ACTIVE';

SELECT COUNT(*) AS AccountNum
FROM Accounts
WHERE CustomerId = 1;


