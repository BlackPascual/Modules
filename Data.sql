SELECT COALESCE(Brand, 'Grand Total') AS 'Brand', SUM(Price) AS 'Price' FROM Purchase_Items GROUP BY(Brand)

SELECT MONTH(PurchaseDate) AS 'Month',
ISNULL(Brand, 'Monthly Total') AS 'Brand', 
SUM(Price) AS 'Price' FROM Purchase_Items 
GROUP BY MONTH(PurchaseDate), CUBE(Brand)

SELECT MONTH(PurchaseDate) AS Month, 
CASE WHEN MONTH(PurchaseDate) IS NULL THEN COALESCE('Grand Total for ' + Brand,'Grand Total')
ELSE COALESCE(Brand,'Monthly SubTotal') end AS Brand, 
Sum(Price) as 'Total Amount' FROM Purchase_Items
GROUP BY CUBE(MONTH(PurchaseDate), Brand);