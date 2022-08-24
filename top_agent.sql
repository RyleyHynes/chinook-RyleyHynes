-- Which sales agent made the most in sales over all?
SELECT EmployeeFullName, MAX(Total)

FROM(

SELECT SUM(i.Total) AS Total,
    e.FirstName||' '||e.LastName EmployeeFullName
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.CustomerId = c.CustomerId
GROUP BY e.EmployeeId);