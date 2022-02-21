-- Provide a query that shows each Invoice line item, with the name of the track that was purchased.
SELECT InvoiceLine.*,
    t.Name
FROM InvoiceLine
    JOIN Track t on InvoiceLine.TrackId = t.TrackId