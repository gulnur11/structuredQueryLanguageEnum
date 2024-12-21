create table publishers(
                           id serial primary key ,
                           name varchar
);

drop table publishers;
drop table languages;
create type Gender as enum('Female', 'Male');

create table authors(
                        id serial primary key ,
                        first_name varchar,
                        last_name varchar,
                        email varchar,
                        date_of_birth date,
                        country varchar,
                        gender Gender
);

create table languages(
                          id serial primary key ,
                          language varchar
);

create type Genre as enum('DETECTIVE', 'DRAMA', 'HISTORY', 'ROMANCE', 'BIOGRAPHY', 'FANTASY');

create table books(
                      id serial primary key ,
                      name varchar,
                      country varchar,
                      published_year date,
                      price numeric,
                      genre Genre
);

alter table languages alter column language set not null;

alter table authors add constraint a unique(email);

alter table books add column language_id integer references languages(id);

alter table books add column publisher_id integer references publishers(id);

alter table books add column author_id integer references authors(id);

insert into publishers(name)
values ('RELX Group'),
       ('Thomson Reuters'),
       ('Holtzbrinck Publishing Group'),
       ('Shanghai Jiao Tong University Press'),
       ('Wolters Kluwer'),
       ('Hachette Livre'),
       ('Aufbau-Verlag'),
       ('Macmillan'),
       ('Harper Collins'),
       ('China Publishing Group'),
       ('Springer Nature'),
       ('Grupo Planeta'),
       ('Books.Ru Ltd.St Petersburg'),
       ('The Moscow Times'),
       ('Zhonghua Book Company');




INSERT INTO authors (first_name, last_name, email, date_of_birth, country, gender)
VALUES
    ('Sybilla', 'Toderbrugge', 'stoderbrugge0@jugem.jp', '1968/09/25', 'France', 'Female'),
    ('Patti', 'Walster', 'pwalster1@addtoany.com', '1965-10-31', 'China', 'Female'),
    ('Sonnie', 'Emmens', 'semmens2@upenn.edu', '1980-05-16', 'Germany', 'Male'),
    ('Brand', 'Burel', 'bburel3@ovh.net', '1964-04-24', 'United States', 'Male'),
    ('Silvan', 'Smartman', 'ssmartman4@spiegel.de', '1967-07-03', 'France', 'Male'),
    ('Alexey', 'Arnov', 'larnoldi5@writer.com', '1964-12-29', 'Russia', 'Male'),
    ('Bunni', 'Aggio', 'baggio6@yahoo.co.jp', '1983-12-14', 'China', 'Female'),
    ('Viole', 'Sarath', 'vsarath7@elegantthemes.com', '1960-01-29', 'United States', 'Female'),
    ('Boigie', 'Etridge', 'betridge8@ed.gov', '1978-11-17', 'France', 'Male'),
    ('Hilliard', 'Burnsyde', 'hburnsyde9@omniture.com', '1962-09-08', 'Germany', 'Male'),
    ('Margarita', 'Bartova', 'mbartova@example.com', '1984-12-03', 'Russia', 'Female'),
    ('Innis', 'Hugh', 'ihughb@marriott.com', '1983-08-28', 'Germany', 'Male'),
    ('Lera', 'Trimnella', 'ltrimnellc@msn.com', '1980-03-28', 'Russia', 'Female'),
    ('Jakob', 'Bransby', 'jbransbyd@nasa.gov', '1966-08-05', 'Spain', 'Male'),
    ('Loretta', 'Gronaver', 'lgronavere@technorati.com', '1962-10-17', 'United States', 'Female');



insert into languages(language)
values ('English'),
       ('French'),
       ('German'),
       ('Chinese'),
       ('Russian'),
       ('Spanish');


INSERT INTO books (name, country, published_year, price, genre, language_id, publisher_id, author_id)
VALUES
    ('Taina', 'Russia', '2021-11-12', '568', 'DETECTIVE', '5', '12', '6'),
    ('Zvezdopad', 'Russia', '2004-12-09', '446', 'ROMANCE', '5', '13', '11'),
    ('Homo Faber', 'Germany', '2022-04-10', '772', 'FANTASY', '3', '5', '3'),
    ('Der Richter und Sein Henker', 'Germany', '2011-02-01', '780', 'DETECTIVE', '3', '3', '10'),
    ('Lord of the Flies', 'United States', '2015-07-11', '900', 'FANTASY', '1', '2', '4'),
    ('Un soir au club', 'France', '2018-01-12', '480', 'DRAMA', '2', '1', '1'),
    ('Voina', 'Russia', '2004-12-06', '880', 'HISTORY', '5', '4', '13'),
    ('Sun Tzu', 'China', '2022-09-05', '349', 'HISTORY', '4', '4', '2'),
    ('Emil und die Detektive', 'Germany', '2010-06-11', '228', 'DETECTIVE', '3', '5', '10'),
    ('Coule la Seine', 'France', '2015-03-01', '732', 'FANTASY', '2', '6', '1'),
    ('Love and hatred', 'Russia', '2012-02-03', '763', 'ROMANCE', '5', '14', '13'),
    ('Fantastic Mr Fox', 'United States', '2018-03-10', '309', 'FANTASY', '1', '9', '8'),
    ('Contes de la Bécasse', 'France', '2019-10-05', '378', 'ROMANCE', '2', '6', '9'),
    ('The Death of Ivan Ilyich', 'Russia', '2000-09-24', '814', 'DRAMA', '5', '6', '6'),
    ('Bonjour Tristesse', 'France', '2015-08-02', '502', 'ROMANCE', '2', '8', '5'),
    ('Die Verwandlung', 'Germany', '2008-06-19', '305', 'DETECTIVE', '3', '7', '12'),
    ('The Inspector Barlach Mysteries', 'Germany', '2007-03-10', '566', 'DETECTIVE', '3', '3', '3'),
    ('LÉtranger', 'France', '2017-11-14', '422', 'ROMANCE', '2', '8', '5'),
    ('Lao Tse', 'China', '2005-07-16', '900', 'FANTASY', '4', '4', '2'),
    ('Semya', 'Russia', '2004-04-12', '194', 'DRAMA', '5', '13', '11'),
    ('Empty World', 'United States', '2008-01-04', '324', 'FANTASY', '1', '11', '15'),
    ('Domainer', 'Germany', '2020-01-06', '420', 'ROMANCE', '3', '5', '10'),
    ('The Fault in Our Stars', 'United States', '2008-02-13', '396', 'ROMANCE', '1', '9', '4'),
    ('Die R uber', 'Germany', '2020-06-25', '300', 'ROMANCE', '3', '7', '12'),
    ('Jung Chang', 'China', '2021-05-14', '600', 'HISTORY', '4', '10', '7'),
    ('Les Aventures de Tintin', 'France', '2015-04-10', '582', 'DRAMA', '2', '1', '5'),
    ('Unvollendete Geschichte', 'Germany', '2010-12-12', '269', 'DETECTIVE', '3', '5', '10'),
    ('Amy Tan', 'China', '2023-01-09', '486', 'DRAMA', '4', '4', '7'),
    ('Krasnaya luna', 'Russia', '2020-02-07', '550', 'FANTASY', '5', '12', '11'),
    ('Emma', 'United States', '2021-10-11', '599', 'BIOGRAPHY', '1', '2', '15');


--1.Китептердин атын, чыккан жылын, жанрын чыгарыныз.
SELECT name, published_year, genre FROM books;
--2.Авторлордун мамлекеттери уникалдуу чыксын.
SELECT DISTINCT country FROM authors;
--3.2020-2023 жылдардын арасындагы китептер чыксын.
SELECT * FROM books WHERE published_year BETWEEN '2020-01-01' AND '2023-12-31';
--4.Детектив китептер жана алардын аттары чыксын.
SELECT name FROM books WHERE genre = 'DETECTIVE';
--5.Автордун аты-жону author деген бир колонкага чыксын.
SELECT concat(first_name,' ', last_name) AS author  FROM authors;
--6. Германия жана Франциядан болгон авторлорду толук аты-жону менен сорттоп чыгарыныз.
SELECT concat(first_name, ' ', last_name) AS full_name FROM authors WHERE country IN ('France', 'Germany') ORDER BY full_name;
--7.Романдан башка жана баасы 500 дон кичине болгон китептердин аты, олкосу, чыккан жылы, баасы жанры чыксын..
SELECT name, country, published_year, price, genre FROM books WHERE genre != 'ROMANCE' AND price < 500;
--8.Бардык кыз авторлордун биринчи 3 ну чыгарыныз.
SELECT * FROM authors WHERE gender = 'Female' LIMIT 3;
SELECT * FROM authors WHERE gender = 'Female'ORDER BY first_name LIMIT 3;
--9.Почтасы .com мн буткон, аты 4 тамгадан турган, кыз авторлорду чыгарыныз.
SELECT * FROM authors WHERE gender = 'Female' AND first_name LIKE '____' AND email LIKE '%.com';
--10.Бардык олколорду жана ар бир олкодо канчадан автор бар экенин чыгаргыла.
SELECT country, count(*) AS author_count FROM authors GROUP BY country;
SELECT country, count(*) AS author_count FROM authors GROUP BY country order by author_count ;
--11.Уч автор бар болгон олколорду аты мн сорттоп чыгарыныз.
SELECT country FROM authors GROUP BY country HAVING count(*) = 3 ORDER BY country;
--12. Ар бир жанрдагы китептердин жалпы суммасын чыгарыныз.
SELECT genre, sum(price) AS total_price FROM books GROUP BY genre;
SELECT genre, count(*) AS total_books FROM books GROUP BY genre;
--13. Роман жана Детектив китептеринин эн арзан бааларын чыгарыныз
SELECT genre, min(price) AS lowest_price FROM books WHERE genre IN ('ROMANCE', 'DETECTIVE') GROUP BY genre;
--14.История жана Биографиялык китептердин сандарын чыгарыныз
SELECT genre, count(*) AS total_books FROM books WHERE genre IN ('HISTORY', 'BIOGRAPHY') GROUP BY genre;
--15.Китептердин , издательстволордун аттары жана тили чыксын

SELECT b.name AS book_name, p.name AS publisher_name, l.language AS language
FROM books b
         JOIN publishers p ON b.publisher_id = p.id
         JOIN languages l ON b.language_id = l.id;

--16.Авторлордун бардык маалыматтары жана издательстволору чыксын, издательство болбосо null чыксын

SELECT a.first_name, a.last_name, a.email, a.date_of_birth, a.country, a.gender,
       p.name AS publisher_name
FROM authors a
         LEFT JOIN books b ON a.id = b.author_id
         LEFT JOIN publishers p ON b.publisher_id = p.id;

--17.Авторлордун толук аты-жону жана китептери чыксын, китеби жок болсо null чыксын.
SELECT concat(a.first_name, ' ', a.last_name) AS full_name, b.name AS book_name FROM authors a
                                                                                         LEFT JOIN books b ON a.id = b.author_id;

--18.Кайсы тилде канча китеп бар экендиги ылдыйдан ойлдого сорттолуп чыксын.

SELECT l.language, count(b.id) AS book_count
FROM languages l
         LEFT JOIN books b ON l.id = b.language_id
GROUP BY l.language
ORDER BY book_count;

--19.Издательствонун аттары жана алардын тапкан акчасынын оточо суммасы тегеректелип чыгарылсын.
SELECT p.name AS publisher_name,
       ROUND(AVG(b.price), 2) AS average_earnings
FROM publishers p
         LEFT JOIN books b ON p.id = b.publisher_id GROUP BY p.name;

--20.2010-2015 жылдардын арасындагы китептер жана автордун аты-фамилиясы чыксын.

SELECT b.published_year , b.name AS book_name,
       concat(a.first_name, ' ', a.last_name) AS author_full_name FROM books b
                                                                           JOIN authors a ON b.author_id = a.id
WHERE b.published_year BETWEEN '2010-01-01' AND '2015-12-31' order by published_year;



--21.2010-2015 жылдардын арасындагы китептердин авторлорунун толук аты-жону жана алардын тапкан акчаларынын жалпы суммасы чыксын.

SELECT concat(a.first_name, ' ', a.last_name) AS author_full_name,
       sum(b.price) AS total_earnings FROM books b
                                               JOIN authors a ON b.author_id = a.id
WHERE b.published_year BETWEEN '2010-01-01' AND '2015-12-31'
GROUP BY a.id, author_full_name;


