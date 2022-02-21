-- Which country's customers spent the most?
HINT: Use the MAX function on a subquery.
select max(Total), BillingCountry
from (
    select i.BillingCountry, sum(i.Total) as Total
    from Invoice i
    group by i.BillingCountry
);