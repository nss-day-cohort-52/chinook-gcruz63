-- Provide a query that shows the customers and employees associated with each invoice. The resultant table should include:
Invoice Total
Customer Name
Customer Country
Sale Agent full name
SELECT i.Total,
    c.FirstName || " " || c.LastName as "Customer",
    c.Country,
    e.FirstName || " " || e.LastName as "SalesAgent"
FROM Invoice i
    JOIN Customer c on c.CustomerId = i.CustomerId
    JOIN Employee e on e.EmployeeId = c.SupportRepId
Order by c.Country COLLATE NOCASE