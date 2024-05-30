-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

Select Title, Barcode
From Books
Where Published BETWEEN 1890 and 1899
AND (Select BookID Not IN (Select BookID from Loans Where LoanDate is NULL ) )
Order by Title;
