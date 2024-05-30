-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

Select Count(Title) as 'Number', Title
From Books 
where Title =  'Dracula'