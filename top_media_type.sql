-- Provide a query that shows the most purchased Media Type.

SELECT
    mt.Name,
    COUNT(i.Total) AS Sold
FROM Invoice i 
JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
JOIN Track t ON il.TrackId = t.TrackId
JOIN MediaType mt ON mt.MediaTypeId = t.MediaTypeId
GROUP BY mt.Name
ORDER BY Sold DESC;
