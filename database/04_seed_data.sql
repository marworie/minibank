USE MiniBank;
GO

INSERT INTO Customers (NationalId, FirstName, LastName, BirthDate, Phone, Email)
VALUES ( '12345678901', N'Ayşe', N'Yılmaz', '1995-04-14', '05530972603', N'ayse.yilmaz@gmail.com'),
	   ( '45678901123', N'Ahmet', N'Göksu', '1993-01-14', '05530989603', N'ahmet.goksu@gmail.com'),
	   ( '56789011234', N'Alpay', N'Yıldırım', '2005-12-10', '05530672603', N'alpay.yil@gmail.com'),
	   ( '67890112345', N'Aysu', N'Aksoy', '1999-03-14', '05537772603', NULL),
	   ( '78901123456', N'Asuman', N'Temel', '1998-02-14', '05530972626', N'asuman.temel@gmail.com');

INSERT INTO Accounts (CustomerId, Iban, Currency, Balance, Status)
VALUES ( 5, 'TR123456789011234567890122', 'TRY', 97263, 'ACTIVE'),
	   ( 2, 'TR123456789345234567890122', 'TRY', 0, 'CLOSED'),
	   ( 3, 'TR123456789011234567234122', 'USD', 53603, 'ACTIVE'),
	   ( 4, 'TR123456788461234567890122', 'EUR', 82603, 'ACTIVE'),
	   ( 1, 'TR123456789011234757890122', 'EUR', 72503, 'ACTIVE'),
	   ( 1, 'TR123123789011234567890122', 'EUR', 74603, 'ACTIVE'),
	   ( 1, 'TR123456345901123456789012', 'TRY', 72626, 'FROZEN');

SELECT * FROM Customers;
SELECT * FROM Accounts;
