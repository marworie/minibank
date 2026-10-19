USE MiniBank;
GO

SELECT FirstName, LastName, Phone -- secilen sutunlar
FROM Customers; -- hangi tablodan olduğu

SELECT Iban, Balance
FROM Accounts
WHERE Currency = 'EUR'; -- hangi satırlar

SELECT Balance, Iban
FROM Accounts
WHERE Balance > 70000
ORDER BY Balance DESC; -- sıralama azalan

SELECT Iban, Currency, Balance
FROM Accounts
WHERE CustomerId = 1 AND Status = 'ACTIVE';

SELECT TOP 3 Balance, Iban
FROM Accounts
ORDER BY Balance DESC;

SELECT FirstName, LastName, BirthDate
FROM Customers
WHERE BirthDate >= '1996-01-01';