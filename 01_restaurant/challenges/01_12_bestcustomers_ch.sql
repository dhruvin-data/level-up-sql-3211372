-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT Count(Orders.OrderID) as OrderCount, Customers.FirstName, Customers.LastName, Customers.Email
From Orders JOIN
Customers On Orders.CustomerID = Customers.CustomerID
Group BY Orders.CustomerID
Order By OrderCount DESC
Limit 15;
