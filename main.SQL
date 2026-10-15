Create Table If Not Exists book (
    book_id Integer    Primary Key,
    title Text         Not Null,
    genre Text         Not Null,
    rating Real        Not Null,
    pages Integer      Not Null,
    pub_year Integer   Not Null
);

Insert Into book (book_id, title, genre, rating, pages, pub_year) Values
(1, 'Dragon Quest', 'Fantasy', 9.2, 312, 2021),
(2, 'Code Wizards', 'Sci-Fi', 8.5, 280, 2020),
(3, 'Ocean Deep', 'Adventure', 7.8, 195, 2022),
(4, 'Star Rangers', 'Sci-Fi', 9.5, 340, 2019),
(5, 'Forest Secrets', 'Fantasy', 8.1, 228, 2023),
(6, 'Robot City', 'Sci-Fi', 7.2, 260, 2021),
(7, 'Time Jumpers', 'Adventure', 8.9, 175, 2022),
(8, 'Magic Academy', 'Fantasy', 9.0, 398, 2020);

Select * From book;

Select title, rating From book Order by rating Asc;
Select title, rating From book Order By rating Desc;
Select title, genre, rating From book Order By genre Asc, rating Desc;
Select title, rating From book Order By rating Desc Limit 3;
Select title, pub_year From book Order By pub_year Asc Limit 5;
Select genre, Count(*) As book_count From book Group By genre;
Select genre, Sum(pages) As total_pages, Avg(rating) As avg_rating From book Group By genre;
Select genre, Count(*) As book_count From book Group By genre Having Count(*) > 2;
Select genre, Avg(rating) As avg_rating From book Group By genre Having Avg(rating) >= 8.5;
Select title, rating, pub_year From book Where pub_year = 2020 and rating >= 8.5;