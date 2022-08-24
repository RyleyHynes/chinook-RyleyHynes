-- Provide a query that shows the top 3 best selling artists.


SELECT 
    ar.Name,
    SUM(i.Total) AS Sales
FROM invoice i 
JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
JOIN Track t ON t.TrackId = il.TrackId
JOIN Album a ON a.AlbumId = t.AlbumId
JOIN Artist ar ON a.ArtistId = ar.ArtistId
GROUP BY ar.Name 
ORDER BY Sales DESC
LIMIT 3;