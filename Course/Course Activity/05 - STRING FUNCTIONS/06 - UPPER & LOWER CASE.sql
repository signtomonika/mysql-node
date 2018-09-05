/******* UPPER AND LOWER CASE *************/

-- SYNTAX => UPPER(<String>) or LOWER(<String>)

select Upper('Hello World');

/* Result

+----------------------+
| Upper('Hello World') |
+----------------------+
| HELLO WORLD          |
+----------------------+

*/

select lower('Hello World');

/*

+----------------------+
| lower('Hello World') |
+----------------------+
| hello world          |
+----------------------+

*/

select title, upper(title) as 'Title UpperCase', lower(title) as 'Title LowerCase' from books;

/* Result

+-----------------------------------------------------+-----------------------------------------------------+-----------------------------------------------------+
| title                                               | Title UpperCase                                     | Title LowerCase                                     |
+-----------------------------------------------------+-----------------------------------------------------+-----------------------------------------------------+
| The Namesake                                        | THE NAMESAKE                                        | the namesake                                        |
| Norse Mythology                                     | NORSE MYTHOLOGY                                     | norse mythology                                     |
| American Gods                                       | AMERICAN GODS                                       | american gods                                       |
| Interpreter of Maladies                             | INTERPRETER OF MALADIES                             | interpreter of maladies                             |
| A Hologram for the King: A Novel                    | A HOLOGRAM FOR THE KING: A NOVEL                    | a hologram for the king: a novel                    |
| The Circle                                          | THE CIRCLE                                          | the circle                                          |
| The Amazing Adventures of Kavalier & Clay           | THE AMAZING ADVENTURES OF KAVALIER & CLAY           | the amazing adventures of kavalier & clay           |
| Just Kids                                           | JUST KIDS                                           | just kids                                           |
| A Heartbreaking Work of Staggering Genius           | A HEARTBREAKING WORK OF STAGGERING GENIUS           | a heartbreaking work of staggering genius           |
| Coraline                                            | CORALINE                                            | coraline                                            |
| What We Talk About When We Talk About Love: Stories | WHAT WE TALK ABOUT WHEN WE TALK ABOUT LOVE: STORIES | what we talk about when we talk about love: stories |
| Where I'm Calling From: Selected Stories            | WHERE I'M CALLING FROM: SELECTED STORIES            | where i'm calling from: selected stories            |
| White Noise                                         | WHITE NOISE                                         | white noise                                         |
| Cannery Row                                         | CANNERY ROW                                         | cannery row                                         |
| Oblivion: Stories                                   | OBLIVION: STORIES                                   | oblivion: stories                                   |
| Consider the Lobster                                | CONSIDER THE LOBSTER                                | consider the lobster                                |
+-----------------------------------------------------+-----------------------------------------------------+-----------------------------------------------------+

*/