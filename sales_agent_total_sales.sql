-- Provide a query that shows total sales made by each sales agent. The resultant table should include:
Employee full name
Total sales for each employee (all time)
select e.FirstName, e.LastName, round(sum(i.total), 2) as total
from Employee e
join Customer c on e.EmployeeId = c.SupportRepId
join Invoice i on c.CustomerId = i.CustomerId
group by e.EmployeeId