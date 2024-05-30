-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

Select Published, Count(Distinct(Title)) As PublishedCount
From Books
Group by Published
Order by PublishedCount Desc;


-- Report 2: Show the five books that have been
-- checked out the most.

Select Count(Loans.LoanID) as cnt, Books.Title
From Loans Join Books on Loans.BookID = Books.BookID
Group by Books.Title
Order by cnt Desc
Limit 5;