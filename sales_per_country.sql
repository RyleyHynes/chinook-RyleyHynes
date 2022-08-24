-- Provide a query that shows the total sales per country.

SELECT SUM(i.Total) TotalSales,
    c.Country 
FROM Customer c
JOIN Invoice i ON i.CustomerId = c.CustomerId
GROUP BY c.Country;