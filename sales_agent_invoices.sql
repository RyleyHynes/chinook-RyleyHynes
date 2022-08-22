-- Provide a query that shows the invoices associated with each sales agent. The resultant table should include:
-- Sales Agent's full name
-- Invoice ID

SELECT
    I.InvoiceId,
    E.FirstName||' '||LastName EmployeeFullName
FROM Invoice I 
JOIN Employee E

