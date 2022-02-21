-- Provide a query that shows how many customers are assigned to each employee. The resultant table should include:
Employee full name
Total number of customers assigned to each employee (even if it's zero)
select e.FirstName, e.LastName, count(c.CustomerId) as customer_count
from Employee e
left join Customer c on e.EmployeeId = c.SupportRepId
group by e.EmployeeId;