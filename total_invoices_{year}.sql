-- How many Invoices were there in 2009 and 2011?
HINT: COUNT
SELECT strftime('%Y', InvoiceDate) as Year,
    COUNT(*) as InvoiceCount
FROM Invoice
WHERE strftime('%Y', InvoiceDate) = '2009'
    OR strftime('%Y', InvoiceDate) = '2011'
GROUP BY strftime('%Y', InvoiceDate)