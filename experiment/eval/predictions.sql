select major, age from student where stuid not in (select stuid from has_pet where pettype = "cat")
select countryname from countries except select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country
select t1.first_name, t1.last_name from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.year = 2013 intersect select t1.first_name, t1.last_name from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.year = 2016
select ranking_date, count(*) from rankings group by ranking_date
select count(*) from country where countrylanguage!= "English"
select count(*), t1.name from highschooler as t1 join friend as t2 on t1.id = t2.student_id group by t1.name
select distinct breed_name, size_code from dogs
