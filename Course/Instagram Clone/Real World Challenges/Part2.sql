/* Our Investors want to know...

How many times does the average user post?

*/

select count(distinct A.id) / count(distinct B.id) as 'Average Post' from users B left join  photos A
on A.user_id = B.id;

--------------------------------------------------------------------------------

/* A brand wants to know which hashtags to use in a post

What are the top 5 most commonly used hashtags?
*/

select tag_name, count(tag_id) as tagCount from photo_tags A join tags B on A.tag_id = B.id
group by tag_name order by tagCount desc limit 5;

/*
+----------+----------+
| tag_name | tagCount |
+----------+----------+
| smile    |       59 |
| beach    |       42 |
| party    |       39 |
| fun      |       38 |
| lol      |       24 |
+----------+----------+
*/

--------------------------------------------------------------------------------

/*
We have a small problem with bots on our site...

Find users who have liked every single photo on the site */

select username , count(*) as totalLikes  from likes A join users B on A.user_id = B.id
group by username having totalLikes = (select count(*) from photos);

/*
+--------------------+------------+
| username           | totalLikes |
+--------------------+------------+
| Aniya_Hackett      |        257 |
| Bethany20          |        257 |
| Duane60            |        257 |
| Jaclyn81           |        257 |
| Janelle.Nikolaus81 |        257 |
| Julien_Schmidt     |        257 |
| Leslie67           |        257 |
| Maxwell.Halvorson  |        257 |
| Mckenna17          |        257 |
| Mike.Auer39        |        257 |
| Nia_Haag           |        257 |
| Ollie_Ledner37     |        257 |
| Rocio33            |        257 |
+--------------------+------------+
*/
--------------------------------------------------------------------------------
/* We also have a problem with celebrities

Find users who have never commented on a photo */

select A.username from users A left join comments B on A.id = B.user_id
where B.id is NULL;

/*

+---------------------+
| username            |
+---------------------+
| Aurelie71           |
| Bartholome.Bernhard |
| Cesar93             |
| Clint27             |
| Darby_Herzog        |
| David.Osinski47     |
| Delfina_VonRueden68 |
| Donald.Fritsch      |
| Esmeralda.Mraz57    |
| Esther.Zulauf61     |
| Eveline95           |
| Florence99          |
| Franco_Keebler64    |
| Hulda.Macejkovic    |
| Jaime53             |
| Jessyca_West        |
| Kasandra_Homenick   |
| Kenton_Kirlin       |
| Linnea59            |
| Mariano_Koch3       |
| Morgan.Kassulke     |
| Pearl7              |
| Tierra.Trantow      |
+---------------------+
*/