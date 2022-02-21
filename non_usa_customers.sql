-- Provide a query showing Customers who are not in the US. The resultant table should include:
Customer's full name
Customer Id,
Customer's country
SELECT FirstName || " " || LastName as "FullName",
    CustomerId,
    Country
From Customer
Where Country != "USA"