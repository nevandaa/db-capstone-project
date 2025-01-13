SELECT m.ItemName AS MenuName
FROM Menu m
WHERE m.MenuID = ANY (
    SELECT o.MenuID
    FROM Orders o
    WHERE o.Quantity > 2
);
