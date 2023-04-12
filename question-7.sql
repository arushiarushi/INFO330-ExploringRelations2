-- Find tracks (id, name, and composer) that have never been purchased (that is, they aren't part of a line item in an invoice).
SELECT t.TrackId AS TrackId, t.Name AS TrackName, t.Composer AS TrackComposer
FROM tracks AS t
LEFT JOIN invoice_items AS i ON t.TrackId =  i.TrackId
WHERE i.InvoiceLineId IS NULL;
