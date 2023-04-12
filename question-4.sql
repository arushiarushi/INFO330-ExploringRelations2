-- Which sales agent made the most in sales in 2010?
SELECT e.FirstName || ' ' ||e.LastName AS SalesAgentName,  SUM(i.Total) AS TotalSales
FROM employees as e
JOIN customers AS c ON e.EmployeeId = c. SupportRepId
JOIN invoices AS i ON c.CustomerId = i.CustomerId
WHERE i.InvoiceDate = '2010'
GROUP BY SalesAgentName
ORDER BY TotalSales DESC;
