-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.

Insert Into Loans ( BookID, PatronID, LoanDate, DueDate)
Values (
(SELECT BookID From Books
where Title = 'The Picture of Dorian Gray'),
(Select PatronID from Patrons where Email = 'jvaan@wisdompets.com'),
'2022-08-25', '2022-09-08'
);

Insert Into Loans ( BookID, PatronID, LoanDate, DueDate)
Values (
(SELECT BookID From Books
where Barcode = 4043822646),
(Select PatronID from Patrons where Email = 'jvaan@wisdompets.com'),
'2022-08-25', '2022-09-08'
);

Select Patrons.FirstName, Loans.LoanID, Loans.BookID, Loans.LoanDate, Loans.DueDate
From Loans 
Join Patrons on Patrons.PatronID = Loans.PatronID
Where Patrons.Email = 'jvaan@wisdompets.com'
