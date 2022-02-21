-- Provide a query that shows the total number of invoices per country.
HINT: GROUP BY
SELECT BillingCountry,
    COUNT(*) as 'InvoiceTotal'
FROM Invoice
GROUP BY BillingCountry