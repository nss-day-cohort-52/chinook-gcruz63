-- Provide a query that shows all Invoices. The resultant table should include:
InvoiceId
The total number of line items on each invoice
select i.InvoiceId, count(il.invoiceId) line_item_count
from Invoice i
join InvoiceLine il on i.InvoiceId = il.InvoiceId
group by il.InvoiceId