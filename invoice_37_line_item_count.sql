-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37
SELECT COUNT(i.InvoiceId)
FROM InvoiceLine i 
WHERE i.InvoiceId = 37