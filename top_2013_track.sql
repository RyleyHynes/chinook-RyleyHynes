-- Provide a query that shows the most purchased track(s) of 2013.


SELECT COUNT(il.TrackId) SpecificTrack,
    t.Name
FROM Invoice i
JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
JOIN Track t on t.TrackId = il.TrackId
WHERE strftime("%Y", i.InvoiceDate) ='2013'
GROUP BY t.TrackId
ORDER BY SpecificTrack DESC;
