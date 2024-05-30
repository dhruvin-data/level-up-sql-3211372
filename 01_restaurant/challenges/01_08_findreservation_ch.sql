-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT Customers.FirstName, Customers.LastName, Reservations.Date, Reservations.PartySize
From Reservations
JOIN Customers on Customers.CustomerID = Reservations.CustomerID
Where Customers.LastName Like 'St%'
And PartySize = 4
ORDER BY Reservations.Date Desc;

Select * FROM Reservations;
