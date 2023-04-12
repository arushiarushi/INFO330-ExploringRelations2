-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT i.InvoiceLineId, t.Name AS PurchasedTrackName, ar.Name AS Artist_Name
FROM invoice_items AS i
JOIN tracks AS t ON i.TrackId = t.TrackId
JOIN albums AS al ON t.AlbumId = al.AlbumId
JOIN artists AS ar ON al.ArtistId = ar.ArtistId
ORDER BY i.InvoiceLineId
