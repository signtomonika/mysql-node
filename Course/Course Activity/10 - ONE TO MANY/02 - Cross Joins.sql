select * from customers A cross join orders B; --or

select * from customers A , orders B;

-- makes the cross join useless as it retrieves every possible combination.

/** workaround to make it work */

select * from customers A cross join orders B
where A.id = B.customer_id;