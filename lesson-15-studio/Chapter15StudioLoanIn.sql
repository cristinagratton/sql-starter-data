UPDATE book
SET available = TRUE
WHERE book_id = 1;

UPDATE loan
SET date_in = '2022-03-03'
WHERE book_id = 1;

UPDATE patron
SET loan_id = NULL 
WHERE patron_id = 1;