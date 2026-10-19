USE MiniBank;
GO

SELECT Currency, COUNT(*) AS AccountCount, SUM(Balance) AS BalanceSum
FROM Accounts
GROUP BY Currency;

SELECT Currency, MIN(Balance) AS MinBalance, MAX(Balance) AS MaxBalance
FROM Accounts
WHERE Status = 'ACTIVE'
GROUP BY Currency;

SELECT CustomerId, COUNT(AccountId) AS AccountNum
FROM Accounts
GROUP BY CustomerId;

SELECT CustomerId, COUNT(AccountId) AS AccountNum
FROM Accounts
GROUP BY CustomerId
HAVING COUNT(AccountId) > 1;

SELECT Status, COUNT(AccountId) AS AccountNum
FROM Accounts
GROUP BY Status;

SELECT CustomerId, SUM(Balance) AS SumBalance
FROM Accounts 
WHERE Currency = 'TRY'
GROUP BY CustomerId
HAVING SUM(Balance) > 70000;