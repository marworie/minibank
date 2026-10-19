USE MiniBank;
GO

SELECT c.FirstName, c.LastName, a.Iban, a.Currency, a.Balance
FROM Customers c
INNER JOIN Accounts a ON c.CustomerId = a.CustomerId;

SELECT c.FirstName, c.LastName, a.Iban, a.Currency, a.Balance
FROM Customers c
INNER JOIN Accounts a ON c.CustomerId = a.CustomerId
WHERE c.FirstName = N'Ayşe' AND c.LastName = N'Yılmaz';

SELECT c.FirstName, c.LastName, a.Balance
FROM Customers c
INNER JOIN Accounts a ON c.CustomerId = a.CustomerId
WHERE a.Currency = 'EUR'
ORDER BY a.Balance DESC;

SELECT c.FirstName, c.LastName, COUNT(a.AccountId) AS AccountCount
FROM Customers c
INNER JOIN Accounts a ON c.CustomerId = a.CustomerId
GROUP BY c.FirstName, c.LastName;

SELECT c.FirstName, c.LastName, c.Phone
FROM Customers c
INNER JOIN Accounts a ON c.CustomerId = a.CustomerId
WHERE a.Status = 'FROZEN';