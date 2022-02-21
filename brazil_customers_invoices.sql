-- Provide a query showing the Invoices of Customers who are from Brazil. The resultant table should include:
Customer's full name
Invoice Id,
Date of the invoice
Billing country
SELECT FirstName || " " || LastName as "FullName",
    InvoiceId,
    InvoiceDate,
    BillingCountry
FROM Customer
    Join Invoice on Invoice.CustomerId = Customer.CustomerId
WHERE Customer.Country = "Brazil"