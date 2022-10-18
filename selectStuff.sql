SELECT * FROM Products ORDER BY stock;
SELECT DISTINCT customer_id FROM Orders;
SELECT * FROM Products WHERE stock > 4;
SELECT title FROM Products WHERE title!='Reading Books';
SELECT * FROM Orders WHERE date_placed BETWEEN '2022-10-10' AND '2022-10-15';
SELECT name FROM Customer WHERE name LIKE '%i';
SELECT * FROM Customer WHERE postcode IN ('C3PO', 'R2 D2');
SELECT title, stock FROM Products ORDER BY price ASC;
SELECT TOP 2 * FROM Products ORDER BY price DESC;