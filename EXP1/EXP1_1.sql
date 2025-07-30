CREATE TABLE Author (
  author_id INT PRIMARY KEY,
  author_name VARCHAR(20),
  country VARCHAR(20)
);

CREATE TABLE Book (
  book_id INT PRIMARY KEY,
  book_title VARCHAR(20),
  author_id INT,
  FOREIGN KEY (author_id) REFERENCES Author(author_id)
);

INSERT INTO Author (author_id, author_name, country)
VALUES
  (1, 'rachit', 'india'),
  (2, 'Naman', 'China'),
  (3, 'Ashu', 'Russia');

INSERT INTO Book (book_id, book_title, author_id)
VALUES
  (100, 'science', 1),
  (200, 'biology', 2),
  (300, 'English', 1);

SELECT * FROM Author;

SELECT * FROM Book;

SELECT A.*, B.*
FROM Author AS A
INNER JOIN Book AS B ON A.author_id = B.author_id;
