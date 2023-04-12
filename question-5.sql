-- What was the most purchased track of 2013?
SELECT t.Name as MostPurchasedTrack, SUM(it.Quantity) AS TotalTrackPurchases 
FROM tracks AS t, invoice_items AS it, invoices AS i
WHERE it.TrackId = t.trackId AND it.InvoiceId = i.InvoiceId AND i.InvoiceDate BETWEEN '2013-01-01' AND '2013-12-31'
GROUP BY t.name
ORDER BY TotalTrackPurchases DESC
