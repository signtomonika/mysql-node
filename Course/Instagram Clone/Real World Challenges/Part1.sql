use ig_clone;

/* Find the 5 oldest users. */

select username, Datediff(Now(),created_at) as Days from users order by created_at limit 5;

/*
+------------------+------+
| username         | Days |
+------------------+------+
| Darby_Herzog     |  847 |
| Emilio_Bernier52 |  847 |
| Elenor88         |  845 |
| Nicole71         |  844 |
| Jordyn.Jacobson2 |  839 |
+------------------+------+
*/

--------------------------------------------------------------------------------

/* What day of the week do most users register on?

We need to figure out when to schedule an ad campgain */

SELECT 
    DAYNAME(created_at) AS day,
    COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC LIMIT 1

-- or My way since there are 2

select dayname(created_at), count(*) as count from users group by dayname(created_at)
having count = (select count(*) from users group by dayname(created_at) order by 1 desc limit 1);

/*
+---------------------+-------+
| dayname(created_at) | count |
+---------------------+-------+
| Sunday              |    16 |
| Thursday            |    16 |
+---------------------+-------+
*/

--------------------------------------------------------------------------------
/* We want to target our inactive users with an email campaign.

Find the users who have never posted a photo */

select A.username from users A left join photos B on A.id = B.user_id
where B.id is null;

/*
+---------------------+
| username            |
+---------------------+
| Aniya_Hackett       |
| Bartholome.Bernhard |
| Bethany20           |
| Darby_Herzog        |
| David.Osinski47     |
| Duane60             |
| Esmeralda.Mraz57    |
| Esther.Zulauf61     |
| Franco_Keebler64    |
| Hulda.Macejkovic    |
| Jaclyn81            |
| Janelle.Nikolaus81  |
| Jessyca_West        |
| Julien_Schmidt      |
| Kasandra_Homenick   |
| Leslie67            |
| Linnea59            |
| Maxwell.Halvorson   |
| Mckenna17           |
| Mike.Auer39         |
| Morgan.Kassulke     |
| Nia_Haag            |
| Ollie_Ledner37      |
| Pearl7              |
| Rocio33             |
| Tierra.Trantow      |
+---------------------+

*/

--------------------------------------------------------------------------------

/* We're running a new contest to see who can get the most likes on a single photo.

WHO WON??!! */

select C.username, A.photo_id,B.image_url, count(A.photo_id) as 'Total Likes' from likes A
join photos B on A.photo_id = B.id
join users C on B.user_id = C.id
group by C.username, A.photo_id, B.image_url order by 4 desc LIMIT 1;

/*
+---------------+----------+---------------------+-------------+
| username      | photo_id | image_url           | Total Likes |
+---------------+----------+---------------------+-------------+
| Zack_Kemmer93 |      145 | https://jarret.name |          48 |
+---------------+----------+---------------------+-------------+
*/
