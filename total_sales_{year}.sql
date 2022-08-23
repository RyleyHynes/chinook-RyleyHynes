-- What are the respective total sales for each of those years?
SELECT InvoiceDate,
SUM(Total)
FROM Invoice  
WHERE strftime("%Y", InvoiceDate ) = '2009';


SELECT InvoiceDate,
SUM(Total)
From Invoice
WHERE strftime("%Y", InvoiceDate) ='2011';