SELECT 
    c.CustomerID, 
    c.Name AS FullName, 
    o.OrderID, 
    o.TotalCost AS Cost, 
    m.ItemName AS MenuName, 
    mi.CourseName
FROM CustomerDetails c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN Menu m ON o.MenuID = m.MenuID
JOIN MenuItems mi ON m.MenuItemsID = mi.MenuItemsID
WHERE o.TotalCost > 150
ORDER BY Cost ASC;