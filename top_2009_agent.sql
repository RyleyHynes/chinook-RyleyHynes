-- Which sales agent made the most in sales in 2009?

SELECT MAX(Total) TotalSales, EmployeeFullName

FROM (

SELECT SUM(i.Total) AS Total,
    e.FirstName||' '||e.LastName EmployeeFullName
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId 
JOIN Invoice i ON i.CustomerId = c.CustomerId 
WHERE strftime("%Y", InvoiceDate)= '2009'
GROUP BY e.EmployeeId);




