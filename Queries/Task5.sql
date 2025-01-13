SET @query = 'SELECT OrderID, Quantity, TotalCost AS Cost FROM Orders WHERE CustomerID = ?';

PREPARE GetOrderDetail FROM @query;

SET @id = 1;
EXECUTE GetOrderDetail USING @id;