-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

Select CustomerID, FirstName, LastName, Phone 
From Customers
Where Address = '6939 Elka Place' and LastName = 'Hundey';

INSERT INTO Orders (CustomerID, OrderDate)
Values (70, '2022-09-20 14:00:00')

Select * From Orders
Where CustomerID = 70
Order by OrderDate Desc

Insert INTO OrdersDishes (OrderID, DishID) Values
(1001, (Select DishID From Dishes Where Name = 'House Salad')),
(1001, (Select DishID From Dishes Where Name = 'Mini Cheeseburgers')),
(1001, (Select DishID From Dishes Where Name = 'Tropical Blue Smoothie'));

Select *
From Dishes
Join OrdersDishes on Dishes.DishID = OrdersDishes.DishID
Where OrdersDishes.OrderID = 1001;

Select Sum(Dishes.Price)
From Dishes
Join OrdersDishes on OrdersDishes.DishID = Dishes.DishID
Where OrdersDishes.OrderID = 1001;


