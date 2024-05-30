-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

Select * FROM
Customers 
WHERE LastName = 'Goldwater'

Select Name, DishID
From Dishes
WHERE DishID = 14

Select Name, DishID
From Dishes
WHERE Name = 'Quinoa Salmon Salad'

Update Customers
Set FavoriteDish = 9
Where Customers.LastName = 'Goldwater'