-- Provide a query that shows the top 5 most purchased tracks over all.

SELECT 
    t.name,
    COUNT(il.TrackId) AS SOLD
FROM InvoiceLine il 
JOIN Track t ON t.TrackId = il.TrackId
GROUP BY t.Name
ORDER BY Sold DESC
LIMIT 5;
