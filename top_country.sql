-- Which country's customers spent the most?

SELECT CountryName, MAX(CountryWhoSpentMost)

FROM (

SELECT SUM(i.Total) as CountryWhoSpentMost,
    c.Country CountryName
FROM Customer c
JOIN Invoice i ON i.CustomerId = c.CustomerId
GROUP BY i.BillingCountry);

