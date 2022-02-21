-- Which sales agent made the most in sales in 2009?
HINT: Use the MAX function on a subquery.
select FirstName, LastName, round(max(Total), 2) total_sales
from (
    select e.FirstName, e.LastName, sum(i.total) as total
    from Employee e
    join Customer c on e.EmployeeId = c.SupportRepId
    join Invoice i on c.CustomerId = i.CustomerId
    where strftime('%Y', i.InvoiceDate) = '2009'
    group by e.EmployeeId
)