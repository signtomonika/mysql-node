select * from books where stock_quantity like '___'; -- 3 underscores to indicate exactly 3 characters

-- Can use to macth patterns

/* result

+---------+-------------------------------------------+--------------+----------------+---------------+----------------+-------+
| book_id | title                                     | author_fname | author_lname   | released_year | stock_quantity | pages |
+---------+-------------------------------------------+--------------+----------------+---------------+----------------+-------+
|       5 | A Hologram for the King: A Novel          | Dave         | Eggers         |          2012 |            154 |   352 |
|       9 | A Heartbreaking Work of Staggering Genius | Dave         | Eggers         |          2001 |            104 |   437 |
|      10 | Coraline                                  | Neil         | Gaiman         |          2003 |            100 |   208 |
|      15 | Oblivion: Stories                         | David        | Foster Wallace |          2004 |            172 |   329 |
|      18 | fake_book                                 | Freida       | Harris         |          2001 |            287 |   428 |
+---------+-------------------------------------------+--------------+----------------+---------------+----------------+-------+

*/

