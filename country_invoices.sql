-- Provide a query that shows the total number of invoices per country.
SELECT i.BillingCountry, COUNT(i.BillingCountry) AS InvoicesPerCountry
FROM Invoice i
GROUP BY i.BillingCountry

