/*Q7 If title contains 'stories'   -> Short Stories

    Just Kids and A Heartbreaking Work  -> Memoir

    Everything Else -> Novel */
    
select title, author_lname,
case
    when title like '%stories%' then 'Short Stories'
    when title = 'Just Kids' or title like '%A Heartbreaking Work%' then 'Memoir'
    else 'Novel'
end as TYPE
from books;

/*
+-----------------------------------------------------+----------------+---------------+
| title                                               | author_lname   | TYPE          |
+-----------------------------------------------------+----------------+---------------+
| The Namesake                                        | Lahiri         | Novel         |
| Norse Mythology                                     | Gaiman         | Novel         |
| American Gods                                       | Gaiman         | Novel         |
| Interpreter of Maladies                             | Lahiri         | Novel         |
| A Hologram for the King: A Novel                    | Eggers         | Novel         |
| The Circle                                          | Eggers         | Novel         |
| The Amazing Adventures of Kavalier & Clay           | Chabon         | Novel         |
| Just Kids                                           | Smith          | Memoir        |
| A Heartbreaking Work of Staggering Genius           | Eggers         | Memoir        |
| Coraline                                            | Gaiman         | Novel         |
| What We Talk About When We Talk About Love: Stories | Carver         | Short Stories |
| Where I'm Calling From: Selected Stories            | Carver         | Short Stories |
| White Noise                                         | DeLillo        | Novel         |
| Cannery Row                                         | Steinbeck      | Novel         |
| Oblivion: Stories                                   | Foster Wallace | Short Stories |
| Consider the Lobster                                | Foster Wallace | Novel         |
| 10% Happier                                         | Harris         | Novel         |
| fake_book                                           | Harris         | Novel         |
| Lincoln In The Bardo                                | Saunders       | Novel         |
+-----------------------------------------------------+----------------+---------------+
*/

--------------------------------------------------------------------------------

/* Q8 Bonus: Make This Happen

+-----------------------------------------------------+----------------+---------+
| title                                               | author_lname   | COUNT   |
+-----------------------------------------------------+----------------+---------+
| What We Talk About When We Talk About Love: Stories | Carver         | 2 books |
| The Amazing Adventures of Kavalier & Clay           | Chabon         | 1 book  |
| White Noise                                         | DeLillo        | 1 book  |
| A Hologram for the King: A Novel                    | Eggers         | 3 books |
| Oblivion: Stories                                   | Foster Wallace | 2 books |
| Norse Mythology                                     | Gaiman         | 3 books |
| 10% Happier                                         | Harris         | 1 book  |
| fake_book                                           | Harris         | 1 book  |
| The Namesake                                        | Lahiri         | 2 books |
| Lincoln In The Bardo                                | Saunders       | 1 book  |
| Just Kids                                           | Smith          | 1 book  |
| Cannery Row                                         | Steinbeck      | 1 book  |
+-----------------------------------------------------+----------------+---------+
*/

select title , author_lname, 
concat(count(*),' ',
    case
        when count(*) > 1 then 'books'
        else 'book'
    end
) as Count 
from books 
group by author_lname, author_fname;

