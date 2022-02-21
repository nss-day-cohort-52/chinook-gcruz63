-- Provide a query that shows the invoices associated with each sales agent. The resultant table should include:
Sales Agent's full name
Invoice ID
SELECT e.FirstName || " " || e.LastName as "FullName",
    i.InvoiceId
FROM Employee e
    JOIN Customer c on c.SupportRepId = e.EmployeeId
    JOIN Invoice i on i.CustomerId = c.CustomerId