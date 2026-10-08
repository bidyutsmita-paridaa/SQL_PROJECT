CREATE DATABASE IF NOT EXISTS library_management;

USE library_management;

CREATE TABLE Authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR(100) NOT NULL,
    country VARCHAR(50)
);

CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(150) NOT NULL,
    author_id INT,
    price DECIMAL(10,2),
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    join_date DATE
);

CREATE TABLE Book_Issues (
    issue_id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT,
    member_id INT,
    issue_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);

INSERT INTO Authors (author_name, country) VALUES
('J.K. Rowling', 'United Kingdom'),
('George Orwell', 'United Kingdom'),
('R.K. Narayan', 'India'),
('Rabindranath Tagore', 'India'),
('Agatha Christie', 'United Kingdom'),
('Dan Brown', 'United States'),
('Chetan Bhagat', 'India'),
('Paulo Coelho', 'Brazil'),
('Jane Austen', 'United Kingdom'),
('Stephen King', 'United States');

INSERT INTO Books (title, author_id, price) VALUES
('Harry Potter and the Philosopher''s Stone', 1, 499.00),
('1984', 2, 350.00),
('Malgudi Days', 3, 299.00),
('Gitanjali', 4, 250.00),
('Murder on the Orient Express', 5, 399.00),
('The Da Vinci Code', 6, 450.00),
('Five Point Someone', 7, 299.00),
('The Alchemist', 8, 350.00),
('Pride and Prejudice', 9, 320.00),
('The Shining', 10, 450.00);

INSERT INTO Members (name, join_date) VALUES
('Aarav Sharma', '2026-01-10'),
('Priya Das', '2026-01-15'),
('Rahul Singh', '2026-01-20'),
('Ananya Patel', '2026-02-05'),
('Riya Mishra', '2026-02-12'),
('Karan Kumar', '2026-02-20'),
('Sneha Roy', '2026-03-01'),
('Aditya Nair', '2026-03-10'),
('Neha Gupta', '2026-03-18'),
('Arjun Mehta', '2026-03-25');

INSERT INTO Book_Issues (book_id, member_id, issue_date, return_date) VALUES
(1, 1, '2026-04-01', '2026-04-10'),
(2, 2, '2026-04-03', '2026-04-12'),
(3, 3, '2026-04-05', '2026-04-15'),
(4, 4, '2026-04-07', '2026-04-17'),
(5, 5, '2026-04-10', '2026-04-20'),
(6, 6, '2026-04-12', '2026-04-22'),
(7, 7, '2026-04-15', '2026-04-25'),
(8, 8, '2026-04-18', '2026-04-28'),
(9, 9, '2026-04-20', '2026-04-30'),
(10, 10, '2026-04-22', '2026-05-02');

SELECT
    Books.title AS Book_Name,
    Authors.author_name AS Author,
    Members.name AS Member,
    Book_Issues.issue_date,
    Book_Issues.return_date
FROM Book_Issues
INNER JOIN Books
    ON Book_Issues.book_id = Books.book_id
INNER JOIN Authors
    ON Books.author_id = Authors.author_id
INNER JOIN Members
    ON Book_Issues.member_id = Members.member_id;