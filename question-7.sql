-- Find tracks (id, name, and composer) that have never been purchased (that is, they aren't part of a line item in an invoice).
SELECT t.TrackId as TrackId, t.Name as TrackName, t.Composer as TrackComposer
FROM tracks as t
LEFT JOIN invoice_items AS i ON t.TrackId =  i.TrackId
WHERE i.InvoiceLineId is NULL;
