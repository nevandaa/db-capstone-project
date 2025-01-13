CREATE VIEW OrdersView AS
SELECT OrderID, Quantity, TotalCost AS Cost
FROM Orders
WHERE Quantity > 2;

-- Untuk melihat isi dari view:
SELECT * FROM OrdersView;