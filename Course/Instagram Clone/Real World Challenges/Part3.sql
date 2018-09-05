/*
 ***************** MEGA CHALLENGE ********************
Are we overrun with bots and celebrity accounts?

Find the percentage of our users who have either never commented on a photo or have commented on every photo

*/




select round((count(distinct BotsOrCelebs.id)/count(distinct C.id) )*100,2) as percentage
from
(
select A.id, ifnull(count(B.id),0) as usersCount 
from users A left join comments B on A.id = B.user_id
group by A.id 
having (usersCount = (select count(*) from photos) or usersCount = 0)
) as BotsOrCelebs
cross join
users C;