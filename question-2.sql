-- Show the sales agent's full name and invoices associated with each sales agent.
SELECT e.FirstName || ' ' || e.LastName AS SalesAgentName, i.InvoiceId
FROM employees AS e
JOIN customers AS c ON e.EmployeeId = c.SupportRepId
JOIN invoices AS i ON c.CustomerId = i.CustomerId
ORDER BY e.FirstName, e.LastName;
