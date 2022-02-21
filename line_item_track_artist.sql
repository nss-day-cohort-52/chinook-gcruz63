-- Provide a query that shows each Invoice line item, with the name of the track that was purchase, and the name of the artist.
SELECT InvoiceLine.*,
    t.Name as 'TrackName',
    a.Name as "ArtistName"
FROM InvoiceLine
    JOIN Track t on InvoiceLine.TrackId = t.TrackId
    JOIN Album al on t.AlbumId = al.AlbumId
    JOIN Artist a on al.ArtistId = a.ArtistId