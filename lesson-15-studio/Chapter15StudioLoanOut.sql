UPDATE book
SET available = FALSE
WHERE book_id = 1;

INSERT INTO loan (patron_id, date_out, book_id)
VALUES(1, '2022-03-03', (SELECT book_id FROM book WHERE available = FALSE));

UPDATE patron
SET loan_ID = (SELECT loan_id FROM loan WHERE patron_id =1)
WHERE patron_id = 1;