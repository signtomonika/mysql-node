/******************* REPLACE ************************/

-- Syntax => REPLACE(<String>,<String to Replace>, <Replacement String>)

select replace('Hello World', 'Hell','$%@&');

/* Result

+---------------------------------------+
| replace('Hello World', 'Hell','$%@&') |
+---------------------------------------+
| $%@&o World                           |
+---------------------------------------+

*/

select replace('HellO World', 'o','#'); -- Case Sensitive

/* Result

+---------------------------------+
| replace('HellO World', 'o','#') |
+---------------------------------+
| HellO W#rld                     |
+---------------------------------+

*/

select replace(title,'e','3') as 'Title Replaced' from books;

/* Result

+-----------------------------------------------------+
| Title Replaced                                      |
+-----------------------------------------------------+
| Th3 Nam3sak3                                        |
| Nors3 Mythology                                     |
| Am3rican Gods                                       |
| Int3rpr3t3r of Maladi3s                             |
| A Hologram for th3 King: A Nov3l                    |
| Th3 Circl3                                          |
| Th3 Amazing Adv3ntur3s of Kavali3r & Clay           |
| Just Kids                                           |
| A H3artbr3aking Work of Stagg3ring G3nius           |
| Coralin3                                            |
| What W3 Talk About Wh3n W3 Talk About Lov3: Stori3s |
| Wh3r3 I'm Calling From: S3l3ct3d Stori3s            |
| Whit3 Nois3                                         |
| Cann3ry Row                                         |
| Oblivion: Stori3s                                   |
| Consid3r th3 Lobst3r                                |
+-----------------------------------------------------+

*/

select substr(replace(title,'e','3'),1,10) as CombinedFunction  from books;

/* Result

+------------------+
| CombinedFunction |
+------------------+
| Th3 Nam3sa       |
| Nors3 Myth       |
| Am3rican G       |
| Int3rpr3t3       |
| A Hologram       |
| Th3 Circl3       |
| Th3 Amazin       |
| Just Kids        |
| A H3artbr3       |
| Coralin3         |
| What W3 Ta       |
| Wh3r3 I'm        |
| Whit3 Nois       |
| Cann3ry Ro       |
| Oblivion:        |
| Consid3r t       |
+------------------+

*/