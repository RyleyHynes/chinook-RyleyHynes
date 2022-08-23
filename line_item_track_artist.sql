-- Provide a query that shows each Invoice line item, with the name of the track that was purchase, and the name of the artist.

SELECT
    i.*,
    t.Name TrackName,
    b.Name ArtistName
FROM InvoiceLine i
JOIN Track t ON i.TrackId = t.TrackId
JOIN Album A ON t.AlbumId = A.AlbumId
JOIN Artist b ON A.ArtistId = b.ArtistId