DECLARE @Order TABLE (OrderID VARCHAR(20), OrderDate VARCHAR(20), ItemID VARCHAR(20), CustomerID VARCHAR(20))

INSERT INTO @Order
VALUES('OR-1', '2019-08-14', 'IT-6', 'Cust-10'),
('OR-2', '2019-12-04', 'IT-3', 'Cust-9'), ('OR-3', '2017-08-20', 'IT-7', 'Cust-13'), ('OR-4', '2018-16-12', 'IT-10', 'Cust-7'), 
('OR-5', '2017-02-28', 'IT-5', 'Cust-6'), ('OR-6', '2019-05-21', 'IT-9', 'Cust-11'), ('OR-7', '2017-12-27', 'IT-2', 'Cust-5'),
('OR-8', '2017-02-10', 'IT-4', 'Cust-3'), ('OR-9', '2018-09-12', 'IT-10', 'Cust-9'), ('OR-10', '2018-01-17', 'IT-3', 'Cust-4'),
('OR-11', '2019-02-11', 'IT-6', 'Cust-7'), ('OR-12', '2018-02-23', 'IT-4', 'Cust-9'), ('OR-13', '2018-11-01', 'IT-7', 'Cust-2'), 
('OR-14', '2018-01-11', 'IT-8', 'Cust-4'), ('OR-15', '2018-05-28', 'IT-1', 'Cust-2'), ('OR-16', '2017-01-03', 'IT-6', 'Cust-1'),
('OR-17', '2019-01-17', 'IT-8', 'Cust-9'), ('OR-8', '2017-06-22', 'IT-3', 'Cust-7'), ('OR-19', '2017-04-09', 'IT-7', 'Cust-3'),
('OR-20', '2019-09-15', 'IT-5', 'Cust-5'), ('OR-21', '2017-08-13', 'IT-9', 'Cust-4')

DECLARE @Item TABLE (ItemID VARCHAR(20), ItemName VARCHAR(20), Price FLOAT)

INSERT INTO @Item
VALUES('IT-1', 'Samsung S9', 32000.00), ('IT-2', 'Samsung S10', 40000.00),
('IT-3', 'Huawei P30', 29000.00), ('IT-4', 'Huawei Mate 30', 31000.00),
('IT-5', 'Realme 6', 9999.99), ('IT-6', 'Realme 6 Pro', 11000.00),
('IT-7', 'Xiaomi Note 9', 8000.00), ('IT-8', 'Xiaomi Note 10', 11000.00),
('IT-9', 'LG V40', 15000.00), ('IT-10', 'LG V50', 23000.00)

DECLARE @Customer TABLE (CustomerID VARCHAR(20), Cust_Name VARCHAR(20), "Address" VARCHAR(20))

INSERT INTO @Customer
VALUES('Cust-1', 'Badang', 'Makati'), ('Cust-2', 'Hanzo', 'Taguig'), ('Cust-3', 'Lilia', 'Rizal'),
('Cust-4', 'Layla', 'Laguna'), ('Cust-5', 'Leslie', 'Laguna'), ('Cust-6', 'Balmond', 'Makati'), ('Cust-7', 'Chou', 'Navotas'),
('Cust-8', 'Eudora', 'Malabon'), ('Cust-9', 'Miya', 'Taguig'), ('Cust-10', 'Cecillion', 'Navotas'), ('Cust-11', 'Roger', 'Baguio'),
('Cust-12', 'Cong', 'Cebu'), ('Cust-13', 'Emman', 'Cebu'), ('Cust-14', 'Jerome', 'Baguio'), ('Cust-15', 'Gusion', 'Davao'), 
('Cust-16', 'Lancelot', 'Iloilo'), ('Cust-17', 'Granger', 'Antipolo'), ('Cust-18', 'Irithel', 'Makati'), ('Cust-19', 'Alucard', 'Binondo'),
('Cust-20', 'Carmilla', 'Malabon')

SELECT (SELECT CONCAT('Lab_', SUBSTRING(C.OrderID, 1, 21))) AS 'New OrderID', A.Cust_Name, B.ItemName, B.Price 

FROM @Order C
JOIN @Item B ON B.ItemID = C.ItemID
JOIN @Customer A ON A.CustomerID = C.CustomerID

WHERE B.ItemID IN (SELECT B.ItemID FROM @Item WHERE B.ItemName LIKE '%Samsung S9%' OR B.ItemName LIKE 'Samsung S10' OR B.ItemName LIKE 'Huawei P30' OR B.ItemName LIKE 'Huawei Mate 30'

OR B.ItemName LIKE 'Realme 6' OR B.ItemName LIKE 'Realme 6 Pro' OR B.ItemName LIKE 'Xiaomi Note 9' OR B.ItemName LIKE 'Xiaomi Note 10' OR B.ItemName LIKE 'LG V40' OR B.ItemName LIKE 'LG V50'
)