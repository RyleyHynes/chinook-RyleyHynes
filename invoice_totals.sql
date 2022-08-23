-- Provide a query that shows the customers and employees associated with each invoice. The resultant table should include:
-- Invoice Total
-- Customer Name
-- Customer Country
-- Sale Agent full name

SELECT
    I.Total,
    C.FirstName||' '||C.LastName CustomerFullName,
    C.Country,
    E.FirstName||' '||C.LastName EmployeeFullName
From Employee E
JOIN Customer C ON e.EmployeeId = C.SupportRepId
JOIN Invoice I ON I.CustomerId = C.CustomerId
