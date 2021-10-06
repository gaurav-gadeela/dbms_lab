select name from students where team='R' union select name from students where gender='F';.

select team,count(name) as students from students group by team;

select avg(math) ,team from students where gender='M' group by team;

select * from students group by gender,team order by team;

select avg(sci) ,team from students group by team order by avg(sci) desc  limit 2;