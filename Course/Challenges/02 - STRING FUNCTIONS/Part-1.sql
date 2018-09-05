/* Q1 Reverse and Uppercase the following sentence

 "Why does my cat look at me with such hatred?" */


select upper(reverse('Why does my cat look at me with such hatred?')) as Result;

/*

+----------------------------------------------+
| Result                                       |
+----------------------------------------------+
| ?DERTAH HCUS HTIW EM TA KOOL TAC YM SEOD YHW |
+----------------------------------------------+

*/

--------------------------------------------------------------------------------

/* Q2  What Does This Print Out?

SELECT
  REPLACE
  (
  CONCAT('I', ' ', 'like', ' ', 'cats'),  ' ',  '-'  );
  
  */
  
  /*

+-------------+
| Result      |
+-------------+
| I-like-cats |
+-------------+

*/

--------------------------------------------------------------------------------
  
/* Q3 Replace spaces in titles with '->' */


 select replace(title,' ','->') as Result from books;
 
 /*
+--------------------------------------------------------------+
| Result                                                       |
+--------------------------------------------------------------+
| The->Namesake                                                |
| Norse->Mythology                                             |
| American->Gods                                               |
| Interpreter->of->Maladies                                    |
| A->Hologram->for->the->King:->A->Novel                       |
| The->Circle                                                  |
| The->Amazing->Adventures->of->Kavalier->&->Clay              |
| Just->Kids                                                   |
| A->Heartbreaking->Work->of->Staggering->Genius               |
| Coraline                                                     |
| What->We->Talk->About->When->We->Talk->About->Love:->Stories |
| Where->I'm->Calling->From:->Selected->Stories                |
| White->Noise                                                 |
| Cannery->Row                                                 |
| Oblivion:->Stories                                           |
| Consider->the->Lobster                                       |
+--------------------------------------------------------------+
*/
  
--------------------------------------------------------------------------------

/* Q4 Print This Out

+----------------+----------------+
| forwards       | backwards      |
+----------------+----------------+
| Lahiri         | irihaL         |
| Gaiman         | namiaG         |
| Gaiman         | namiaG         |
| Lahiri         | irihaL         |
| Eggers         | sreggE         |
| Eggers         | sreggE         |
| Chabon         | nobahC         |
| Smith          | htimS          |
| Eggers         | sreggE         |
| Gaiman         | namiaG         |
| Carver         | revraC         |
| Carver         | revraC         |
| DeLillo        | olliLeD        |
| Steinbeck      | kcebnietS      |
| Foster Wallace | ecallaW retsoF |
| Foster Wallace | ecallaW retsoF |
+----------------+----------------+

*/

select author_lname as forwards, reverse(author_lname) as backwards from books;
  


