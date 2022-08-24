-- Provide a query that shows total sales made by each sales agent. The resultant table should include:
-- Employee full name
-- Total sales for each employee (all time)
SELECT
    e.FirstName||' '||e.LastName EmployeeName,
    SUM(i.Total) TotalSalesByEmployee
FROM employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY EmployeeId
