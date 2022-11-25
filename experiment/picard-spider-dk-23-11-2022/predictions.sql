select count(*) from singer
select count(*) from singer
select name, country from singer order by birthday desc
select name, country from singer order by birthday desc
select avg(singer_id), min(singer_id), max(singer_id) from singer where country = "France"
select avg(singer_id), min(singer_id), max(singer_id) from singer where country = "France"
select song_name, song_release_year from singer order by birthday asc limit 1
select song_name, song_release_year from singer order by birthday asc limit 1
select distinct country from singer where birthday = 2001
select distinct country from singer where birthday = 2001
select country, count(*) from singer group by country
select country, count(*) from singer group by country
select song_name from singer where birthday > (select avg(birthday) from singer)
select song_name from singer where birthday > (select avg(birthday) from singer)
select location, name from stadium where capacity between 5000 and 10000
select location, name from stadium where capacity between 5000 and 10000
select avg(capacity), max(capacity) from stadium
select avg(capacity), max(capacity) from stadium
select name, capacity from stadium order by average desc limit 1
select name, capacity from stadium order by average desc limit 1
select count(*) from concert where year >= 2014
select count(*) from concert where year >= 2014
select t1.name, count(*) from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id group by t1.stadium_id
select t1.name, count(*) from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id group by t1.stadium_id
select t1.name, t1.capacity from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year >= 2014 group by t2.stadium_id order by count(*) desc limit 1
select t1.name, t1.highest from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year > 2013 group by t2.stadium_id order by count(*) desc limit 1
select concert_name from concert order by year desc limit 1
select concert_name from concert order by year limit 1
select highest from stadium where stadium_id not in (select stadium_id from concert)
select lowest from stadium where stadium_id not in (select stadium_id from concert)
select country from singer where birthday = 1981 or birthday = 1991
select avg(t1.average) from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year!= 2014
select min(t1.lowest) from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year!= 2014
select t1.concert_name, t1.theme, count(*) from concert as t1 join singer_in_concert as t2 on t1.concert_id = t2.singer_id group by t1.concert_id
select t1.concert_name, t1.theme, count(*) from concert as t1 join singer_in_concert as t2 on t1.concert_id = t2.singer_id group by t1.concert_id
select t2.name, count(*) from singer_in_concert as t1 join singer as t2 on t1.singer_id = t2.singer_id group by t1.singer_id
select t2.name, count(*) from singer_in_concert as t1 join singer as t2 on t1.singer_id = t2.singer_id group by t1.singer_id
select t2.name from singer_in_concert as t1 join singer as t2 on t1.singer_id = t2.singer_id join concert as t3 on t3.concert_id = t1.concert_id where t3.year > 2014
select t2.name from singer_in_concert as t1 join singer as t2 on t1.singer_id = t2.singer_id join concert as t3 on t3.concert_id = t1.concert_id where t3.year < 2014
select t1.name, t1.country from singer as t1 join singer_in_concert as t2 on t1.singer_id = t2.singer_id where t1.song_name like '%hey%'
select name, country from singer where song_name like '%hey%'
select min(t1.lowest), max(t1.highest) from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2014 intersect select t1.lowest, t1.highest from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2015
select t1.lowest, t1.highest from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2014 intersect select t1.lowest, t1.highest from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2015
select count(*) from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id group by t2.stadium_id order by t2.capacity desc limit 1
select count(*) from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id group by t2.stadium_id order by t2.capacity desc limit 1
select count(*) from pets where weight > 10
select count(*) from pets where weight > 10
select weight from pets order by birthdate limit 1
select weight from pets where pettype = 'dog' and birthdate = (select min(birthdate) from pets)
select max(weight), pettype from pets group by pettype
select max(weight), max(pettype) from pets group by pettype
select count(*) from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t3.stuid = t1.stuid where t3.age > 20
select count(*) from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t3.stuid = t1.stuid where t3.age > 20
select count(*) from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t1.sex = "F"
select count(*) from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t1.sex = "F"
select count(distinct pettype) from pets
select count(distinct pettype) from pets
select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.pettype = "kitten" or t3.pettype = "puppy"
select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.petid = "kitten" or t2.petid = "puppy"
select t1.fname, t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3
select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.petid = "kitten" intersect select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.petid = "puppy"
select major, age from student except select t1.major, t1.age from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.petid = "kitten"
select major, age from student where stuid not in (select t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = "kitten")
select stuid from student except select stuid from has_pet where petid = "kitten"
select stuid from student except select stuid from has_pet where petid = "kitten"
select fname, age from student where stuid in (select t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = "dog") except select t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = "puppy"
select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.petid = "puppie" except select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.petid = "kitten"
select pettype, weight from pets order by birthdate limit 1
select pettype, weight from pets order by birthdate limit 1
select petid, weight from pets where birthdate > 2020
select petid, weight from pets where birthdate > 2020
select pettype, avg(petid), max(petid) from pets group by pettype
select pettype, avg(petid), max(petid) from pets group by pettype
select pettype, avg(petid), max(petid) from pets group by pettype
select pettype, avg(weight) from pets group by pettype
select t1.fname, t1.lname, t1.age from student as t1 join has_pet as t2 on t1.stuid = t2.stuid
select distinct t1.fname, t1.lname, t1.age from student as t1 join has_pet as t2 on t1.stuid = t2.stuid
select t2.petid from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t3.lname = 'Smith'
select t2.petid from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t1.lname = 'Smith'
select count(*), t1.stuid from student as t1 join has_pet as t2 on t1.stuid = t2.stuid group by t1.stuid having count(*) >= 1
select count(*), t1.stuid from student as t1 join has_pet as t2 on t1.stuid = t2.stuid group by t1.stuid
select t1.fname, t1.sex from student as t1 join has_pet as t2 on t1.stuid = t2.stuid group by t1.stuid having count(*) > 1
select t1.fname, t1.sex from student as t1 join has_pet as t2 on t1.stuid = t2.stuid group by t1.stuid having count(*) > 1
select t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.birthdate = 2001
select t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.birthdate = 2001
select avg(age) from student where stuid not in (select stuid from has_pet)
select avg(age) from student where stuid not in (select stuid from has_pet)
select count(*) from continents
select count(*) from continents
select t1.contid, t1.continent, count(*) from continents as t1 join countries as t2 on t1.continent = t2.continent group by t1.continent
select t1.continent, t2.countryname, count(*) from continents as t1 join countries as t2 on t1.continent = t2.continent group by t1.continent
select count(*) from countries
select count(*) from countries
select t1.fullname, t1.id, count(*) from car_makers as t1 join model_list as t2 on t1.id = t2.maker group by t1.id
select t1.fullname, t1.id, count(*) from car_makers as t1 join model_list as t2 on t1.id = t2.maker group by t1.id
select t1.model from car_names as t1 join cars_data as t2 on t1.make = t2.id order by t2.horsepower limit 1
select t1.model from car_names as t1 join cars_data as t2 on t1.make = t2.id order by t2.horsepower limit 1
select t1.model from car_names as t1 join model_list as t2 on t1.makeid = t2.modelid join cars_data
select t2.model from cars_data as t1 join model_list as t2 on t1.id = t2.modelid where t1.weight < (select avg(weight) from cars_data)
select t1.maker from car_makers as t1 join cars_data as t2 on t1.id = t2.id where t2.year <= 2
select distinct t1.maker from car_makers as t1 join cars_data as t2 on t1.maker = t2.id where t2.year <= 2
select t1.make, t2.year from car_names as t1 join cars_data as t2 on t1.make = t2.id order by t2.year limit 1
select t1.maker, t2.year from car_makers as t1 join cars_data as t2 on t1.id = t2.id order by t2.year limit 1
select distinct t1.model from model_list as t1 join cars_data as t2 on t1.model = t2.id where t2.year < 1980
select distinct t2.model from cars_data as t1 join model_list as t2 on t1.id = t2.modelid where t1.year < 1980
select count(*), continent from continents group by continent
select t1.continent, count(*) from continents as t1 join car_makers as t2 on t1.contid = t2.maker group by t1.continent
select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country group by t1.countryname order by count(*) desc limit 1
select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country group by t1.countryname order by count(*) desc limit 1
select count(*), t1.fullname from car_makers as t1 join model_list as t2 on t1.id = t2.maker group by t1.fullname
select count(*), t1.id, t1.fullname from car_makers as t1 join model_list as t2 on t1.id = t2.maker group by t1.id
select t2.accelerate from car_names as t1 join cars_data as t2 on t1.make = t2.id where t1.make = "amc hornet sportabout (sw)"
select t1.accelerate from cars_data as t1 join car_names as t2 on t1.id = t2.makeid where t2.make = 'amc hornet sportabout (sw)'
select count(*) from car_makers where country = "Japan"
select count(*) from car_makers where country = "Japan"
select count(*) from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t1.continent = 'america'
select count(*) from car_makers where country = 'USA'
select avg(mpg) from cars_data where cylinders = 4
select avg(mpg) from cars_data where cylinders = 4
select min(weight) from cars_data where year = 1974 and cylinders = 8
select min(weight) from cars_data where cylinders = 8 and year = 1974
select maker, model from model_list
select maker, model from model_list
select t1.countryname, t2.id from countries as t1 join car_makers as t2 on t1.countryid = t2.id
select t1.countryname, t1.countryid from countries as t1 join car_makers as t2 on t1.countryid = t2.country
select count(*) from cars_data where horsepower > 150
select count(*) from cars_data where horsepower > 150
select avg(weight), year from cars_data group by year
select avg(weight), avg(year) from cars_data group by year
select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t1.continent = "europe" group by t1.countryname having count(*) >= 3
select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t1.continent = "europe" group by t1.countryname having count(*) >= 3
select max(t2.horsepower), t1.make from car_names as t1 join cars_data as t2 on t1.model = t2.id where t2.cylinders = 3
car_1
select max(mpg) from cars_data
select t1.model from car_names as t1 join cars_data as t2 on t1.makeid = t2.id order by t2.mpg desc limit 1
select avg(horsepower) from cars_data where year < 1980
select avg(horsepower) from cars_data where year < 1980
select avg(edispl) from cars_data where model = 'TESLA%"; > 0.004 edispl; 
select avg(edispl) from cars_data where edispl = (select avg(edispl) from cars_data where edispl = 'tesla')
select max(accelerate), cylinders from cars_data group by cylinders
select max(accelerate), cylinders from cars_data group by cylinders
select model, make from car_names group by model, make order by count(*) desc limit 1
select model from model_list group by model order by count(*) desc limit 1
select count(*) from cars_data where cylinders > 4
select count(*) from cars_data where cylinders > 4
select count(*) from cars_data where year <= 2
select count(*) from cars_data where year >= 2
select count(*) from car_makers as t1 join model_list as t2 on t1.id = t2.maker where t1.country = 'America'
select count(*) from car_makers as t1 join model_list as t2 on t1.id = t2.modelid where t1.country = 'America' and t2.maker = 'American Motor'
select t1.fullname, t1.id from car_makers as t1 join model_list as t2 on t1.id = t2.maker group by t1.id having count(*) > 3
select t1.fullname, t1.id from car_makers as t1 join model_list as t2 on t1.id = t2.maker group by t1.id having count(*) > 3
select distinct t1.model from model_list as t1 join car_makers as t2 on t1.maker = t2.id where t2.fullname = 'General Motors' or t1.
select distinct t1.model from model_list as t1 join car_makers as t2 on t1.maker = t2.id where t2.fullname = "General Motors" union select distinct t1.model from model_list as t1 join cars_data as t2 on t1.model = t2.id where t2.weight > 3500
select year from cars_data where weight between 3000 and 4000
select distinct year from cars_data where weight < 4000 intersect select distinct year from cars_data where weight > 3000
select horsepower from cars_data order by accelerate desc limit 1
select horsepower from cars_data order by accelerate desc limit 1
select cylinders from cars_data where model = 'tesla' and accelerate = (select min(accelerate) from cars_data where model = 'Tesla
select cylinders from cars_data where accelerate = (select min(accelerate) from cars_data where id = 'TESLA')
select count(*) from cars_data where accelerate > (select max(accelerate) from cars_data order by horsepower desc limit 1)
select count(*) from cars_data where accelerate > (select max(accelerate) from cars_data order by horsepower desc limit 1)
select count(*) from (select country from car_makers group by country having count(*) > 2)
select count(*) from (select country from car_makers group by country having count(*) > 2)
select count(*) from cars_data where cylinders > 6
select count(*) from cars_data where cylinders > 6
select max(horsepower) from cars_data where cylinders = 4
select t1.model from car_names as t1 join cars_data as t2 on t1.model = t2.id where t2.cylinders = 4 order by t2.horsepower desc limit 1
select t1.makeid, t1.make from car_names as t1 join cars_data as t2 on t1.model = t2.id where t2.horsepower > (select min(horsepower) from cars_data) except select t1.makeid, t1.make from car_names as t1 join cars_data as t2 on t1.model = t2.id where t2.cylinders > 3
select t1.makeid, t1.make from car_names as t1 join cars_data as t2 on t1.makeid = t2.id where t2.cylinders < 4
select max(mpg) from cars_data where cylinders = 8 or year < 1980
select max(mpg) from cars_data where cylinders = 8 or year < 1980
select t1.model from model_list as t1 join cars_data as t2 on t1.modelid = t2.id where t2.weight < 3500 except select t1.model from model_list as t1 join cars_data as t2 on t1.modelid = t2.id where t1.maker = 'Ford Motor'
select distinct t1.model from model_list as t1 join cars_data as t2 on t1.modelid = t2.id where t2.weight < 3500 except select distinct t1.model from model_list as t1 join cars_data as t2 on t1.modelid = t2.id where t1.maker = "ford"
select countryname from countries where countryid not in (select country from car_makers)
select countryname from countries except select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country
select t1.id, t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.maker group by t1.id having count(*) >= 2 intersect select t1.id, t1.maker from car_makers as t1 join car_names as t2 on t1.id = t2.make group by t1.id having count(*) >= 3
select t1.id, t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.maker group by t1.id having count(*) >= 2
select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country group by t1.countryid having count(*) > 3 union select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t2.maker = "tesla"
select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country group by t1.countryid having count(*) > 3 union select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t2.maker = "Tesla"
select country from airlines where abbreviation = "JetBlue"
select country from airlines where abbreviation = 'JetBlue'
select abbreviation from airlines where abbreviation = "JetBlue"
select abbreviation from airlines where abbreviation = "JetBlue"
select airline, abbreviation from airlines where country = 'USA'
select airline, abbreviation from airlines where country = 'USA'
select airportcode, airportname from airports where city = 'Jackson'
select airportcode, airportname from airports where city = 'Syracuse'
select count(*) from airlines
select count(*) from airlines
select count(*) from airports
select count(*) from airports
select count(*) from flights
select count(*) from flights
select airline from airlines where abbreviation = 'UAL'
select airline from airlines where abbreviation = 'UAL'
select count(*) from airlines where country = 'American'
select count(*) from airlines where abbreviation = 'American'
select city, country from airports where airportname = "Alton"
select city, country from airports where airportname = "Alton"
select airportname from airports where airportcode = 'AKO'
select airportname from airports where airportcode = 'AKO'
select airportname from airports where city = 'Jackson'
select airportname from airports where city = 'Jackson'
select count(*) from flights where destairport = 'APG'
select count(*) from flights where destairport = 'APG'
select count(*) from airports as t1 join flights as t2 on t1.airportcode = t2.destairport where t1.airportcode = 'ATO'
select count(*) from airports as t1 join flights as t2 on t1.airportcode = t2.sourceairport where t1.airportcode = 'ATO'
select count(*) from flights where destairport = 'Jackson'
select count(*) from flights where destairport = 'Jackson'
select count(*) from airports as t1 join flights as t2 on t1.airportcode = t2.destairport where t1.city = 'Jackson'
select count(*) from flights where destairport = 'Jackson'
select count(*) from flights where sourceairport = 'Syracuse' and destairport = 'Ashley'
select count(*) from flights as t1 join airports as t2 on t1.sourceairport = t2.airportcode and t1.destairport = t2.airportcode where t2.city = 'Syracuse' and t2.airportname = 'Ashley'
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airline where t1.abbreviation = 'JetBlue'
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airline where t1.abbreviation = "JetBlue"
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airline where t1.abbreviation = 'JetBlue'
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airline where t1.abbreviation = "JetBlue" and t2.destairport = "ASY"
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airline where t1.abbreviation = 'JetBlue' and t2.destairport = 'AHD'
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.sourceairport = 'AHD' and t1.abbreviation = 'JetBlue'
select count(*) from flights as t1 join airports as t2 on t1.sourceairport = t2.airportcode join airlines as t3 on t1.airline = t3.uid where t2.city = 'Aberdeen' and t3.abbreviation = 'JetBlue'
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airline where t1.abbreviation = "JetBlue" and t2.destairport = "Aberdeen"
select t1.city from airports as t1 join flights as t2 on t1.airportcode = t2.destairport group by t2.destairport order by count(*) desc limit 1
select t1.city from airports as t1 join flights as t2 on t1.airportcode = t2.destairport group by t2.destairport order by count(*) desc limit 1
select t1.city from airports as t1 join flights as t2 on t1.airportcode = t2.destairport group by t1.city order by count(*) desc limit 1
select t3.city from flights as t1 join airports as t2 on t1.sourceairport = t2.airportcode join airports as t3 on t1.destairport = t3.airportcode group by t1.sourceairport order by count(*) desc limit 1
select t1.airportcode from airports as t1 join flights as t2 on t1.airportcode = t2.sourceairport group by t1.airportcode order by count(*) desc limit 1
select t1.airportcode from airports as t1 join flights as t2 on t1.airportcode = t2.sourceairport group by t1.airportcode order by count(*) desc limit 1
select t1.airportcode from airports as t1 join flights as t2 on t1.airportcode = t2.sourceairport group by t2.sourceairport order by count(*) limit 1
select t1.airportcode from airports as t1 join flights as t2 on t1.airportcode = t2.destairport group by t2.destairport order by count(*) limit 1
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline group by t2.airline order by count(*) desc limit 1
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline group by t2.airline order by count(*) desc limit 1
select t1.abbreviation, t1.country from airlines as t1 join flights as t2 on t1.uid = t2.airline group by t2.airline order by count(*) limit 1
select t1.abbreviation, t1.country from airlines as t1 join flights as t2 on t1.uid = t2.sourceairport group by t2.sourceairport order by count(*) limit 1
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.destairport = 'AHD'
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.sourceairport = 'AHD'
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.destairport = 'AHD'
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.destairport = 'AHD'
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.sourceairport = 'APG' intersect select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.destairport = 'CVO'
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.sourceairport = 'APG' intersect select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.destairport = 'CVO'
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.sourceairport = 'CVO' except select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.sourceairport = 'APG'
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.destairport = 'CVO' except select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.sourceairport = 'APG'
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline group by t1.uid having count(*) >= 10
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline group by t1.uid having count(*) >= 10
select airline from flights group by airline having count(*) < 200
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline group by t1.uid having count(*) < 200
select t1.flightno from flights as t1 join airlines as t2 on t1.airline = t2.uid where t2.abbreviation = "JetBlue"
select t1.flightno from flights as t1 join airlines as t2 on t1.airline = t2.uid where t2.abbreviation = "JetBlue"
select flightno from flights where destairport = "APG"
select flightno from flights where destairport = 'APG'
select t1.flightno from flights as t1 join airports as t2 on t1.destairport = t2.airportcode where t2.airportcode = "APG"
select t1.flightno from flights as t1 join airports as t2 on t1.destairport = t2.airportcode where t2.airportcode = 'APG'
select flightno from flights where destairport = "Jackson"
select flightno from flights where destairport = 'Jackson'
select flightno from flights where destairport = "Jackson"
select flightno from flights where destairport = 'Jackson'
select count(*) from airports as t1 join flights as t2 on t1.airportcode = t2.destairport where t1.city = 'Syracuse' or t1.city = 'Jackson'
select count(*) from airports as t1 join flights as t2 on t1.airportcode = t2.destairport where t1.city = 'Syracuse' or t1.city = 'Jackson'
select airportname from airports where airportcode not in (select sourceairport, destairport from flights)
select airportname from airports except select t1.airportname from airports as t1 join flights as t2 on t1.airportcode = t2.destairport
select count(*) from documents
select count(*) from documents
select document_id, document_name, document_description from documents
select document_id, document_name, document_description from documents
select document_name, template_id from documents where document_description like '%w%'
select document_name, template_id from documents where document_description like '%w%'
select document_description, template_id from documents where document_name = "Robbin CV"
select document_description, template_id from documents where document_name = "Robbin CV"
select count(distinct template_id) from documents
select count(distinct template_id) from documents
select count(*) from documents as t1 join templates as t2 on t1.template_id = t2.template_id where t2.template_type_code = "PPT"
select count(*) from documents as t1 join templates as t2 on t1.template_id = t2.template_id where t2.template_type_code = "PPT"
select template_id, count(*) from documents group by template_id
select template_id, count(*) from documents group by template_id
select t1.date_effective_from, t1.date_effective_to from templates as t1 join documents as t2 on t1.template_id = t2.template_id group by t1.template_id order by count(*) desc limit 1
select t1.date_effective_from, t1.date_effective_to from templates as t1 join documents as t2 on t1.template_id = t2.template_id group by t1.template_id order by count(*) desc limit 1
select template_id from documents group by template_id having count(*) > 1
select template_id from documents group by template_id having count(*) > 1
select template_id from templates except select template_id from documents
select template_id from templates except select template_id from documents
select count(*) from templates
select count(*) from templates
select date_effective_from, date_effective_to, template_type_code from templates
select date_effective_from, date_effective_to, template_type_code from templates
select date_effective_from, date_effective_to from templates
select date_effective_from, date_effective_to from templates
select date_effective_from, date_effective_to from templates where template_type_code = "PP" or template_type_code = "PPT"
select date_effective_from, date_effective_to from templates where template_type_code = "PP" or template_type_code = "PPT"
select date_effective_from, date_effective_to from templates where template_type_code = "CV"
select date_effective_from, date_effective_to from templates where template_type_code = "CV"
select date_effective_from, template_type_code from templates where version_number > 5
select date_effective_from, template_type_code from templates where version_number > 5
select date_effective_from, count(*) from templates group by date_effective_from
select date_effective_from, date_effective_to, count(*) from templates group by date_effective_to
select date_effective_from from templates group by date_effective_from order by count(*) desc limit 1
select date_effective_from from templates group by date_effective_from order by count(*) desc limit 1
select date_effective_from from templates group by date_effective_from having count(*) < 3
select date_effective_from from templates group by date_effective_from having count(*) < 3
select min(version_number), date_effective_from, date_effective_to from templates
select version_number, date_effective_from, date_effective_to from templates order by version_number asc limit 1
select t1.date_effective_from, t1.date_effective_to from templates as t1 join documents as t2 on t1.template_id = t2.template_id where t2.document_name = "Data base"
select t1.date_effective_from, t1.date_effective_to from templates as t1 join documents as t2 on t1.template_id = t2.template_id where t2.document_name = "Data base"
select t1.document_name, t1.template_id from documents as t1 join templates as t2 on t1.template_id = t2.template_id where t2.template_type_code = "BK"
select t1.document_name, t1.template_id from documents as t1 join templates as t2 on t1.template_id = t2.template_id where t2.template_type_code = "BK"
select t1.date_effective_from, t1.date_effective_to, count(*) from templates as t1 join documents as t2 on t1.template_id = t2.template_id group by t1.template_type_code
select t1.date_effective_from, t1.date_effective_to, count(*) from templates as t1 join documents as t2 on t1.template_id = t2.template_id group by t1.template_type_code
select date_effective_to from templates group by date_effective_to order by count(*) desc limit 1
select date_effective_from, date_effective_to from templates group by date_effective_from order by count(*) desc limit 1
select date_effective_from, date_effective_to from templates except select t1.date_effective_from, t1.date_effective_to from templates as t1 join documents as t2 on t1.template_id = t2.template_id
select date_effective_from, date_effective_to from templates except select t1.date_effective_from, t1.date_effective_to from templates as t1 join documents as t2 on t1.template_id = t2.template_id
select template_type_code, template_type_description from ref_template_types
select template_type_code, template_type_description from ref_template_types
select template_type_description from ref_template_types where template_type_code = "AD"
select template_type_description from ref_template_types where template_type_code = "AD"
select template_type_code from ref_template_types where template_type_description = "Book"
select template_type_code from ref_template_types where template_type_description = "Book"
select distinct t1.template_type_description from ref_template_types as t1 join templates as t2 on t1.template_type_code = t2.template_type_code join documents as t3 on t2.template_id = t3.template_id
select distinct t1.template_type_description from ref_template_types as t1 join templates as t2 on t1.template_type_code = t2.template_type_code join documents as t3 on t2.template_id = t3.template_id
select t1.date_effective_from, t1.date_effective_to from templates as t1 join ref_template_types as t2 on t1.template_type_code = t2.template_type_code where t2.template_type_description = "Presentation"
select t2.date_effective_from, t2.date_effective_to from ref_template_types as t1 join templates as t2 on t1.template_type_code = t2.template_type_code where t1.template_type_description = "Presentation"
select t2.first_name, t2.last_name from matches as t1 join players as t2 on t1.winner_id = t2.player_id
select t2.first_name, t2.last_name from matches as t1 join players as t2 on t1.winner_id = t2.player_id
select t2.winner_age, t3.player_id from matches as t1 join players as t3 on t1.winner_id = t3.player_id join matches as t4 on t1.loser_id = t4.winner_Io
select t2.winner_age, t3.player_id from matches as t1 join players as t3 on t1.winner_id = t3.player_id join matches as t4 on t1.loser_id = t4.winner_Io
select first_name, birth_date from players where country_code = 'USA'
select first_name, birth_date from players where country_code = 'USA'
select avg(loser_age), avg(winner_age) from matches
select avg(loser_age), avg(winner_age) from matches
select avg(winner_rank), avg(loser_rank) from matches
select avg(winner_rank), avg(loser_rank) from matches
select max(winner_rank), min(loser_rank) from matches
select max(winner_rank), min(loser_rank) from matches
select count(distinct country_code) from players
select count(distinct country_code) from players
select count(distinct loser_name) from matches
select count(distinct loser_name) from matches
select tourney_name from matches group by tourney_name having count(*) > 10
select tourney_name from matches group by tourney_name having count(*) > 10
wta_1
select t1.winner_name, t1.loser_name from matches as t1 join players as t2 on t1.winner_id = t2.player_id where t1.year = 2013 intersect select t1.winner_name, t1.loser_name from matches as t1 join players as t2 on t1.winner_id = t2.player_id where t1.year = 2016
select distinct t2.winner_name from matches as t1 join players as t3 on t1.winner_id = t3.player_id join rankings as t4 on t4.ranking_points = t1.ranking_
select t1.winner_name, t1.loser_name from matches as t1 join players as t2 on t1.winner_id = t2.player_id where t1.year = 2013 or t1.year = 2016
select t1.country_code, t2.winner_name from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.tourney_name = "WTA Championships" intersect select t1.country_code, t2.winner_name from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.tourney_name = "Australian Open"
select t1.first_name, t1.country_code from players as t1
select first_name, country_code from players order by birth_date desc limit 1
select first_name, country_code from players order by birth_date desc limit 1
select first_name, last_name from players order by birth_date
select first_name, last_name from players order by birth_date desc
select first_name, last_name from players where hand = "left" order by birth_date desc
select first_name, last_name from players where hand = "left" order by birth_date
select t1.first_name, t1.country_code from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t2.player_id order by count(*) desc limit 1
select t1.first_name, t1.country_code from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t2.player_id order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select t1.winner_name, t1.winner_rank_points from matches as t1 join players as t2 on t1.winner_id = t2.player_id group by t1.winner_id order by count(*) desc limit 1
select t1.first_name, t1.last_name, count(*) from players as t1 join matches as t2 on t1.player_id = t2.winner_id group by t2.winner_id order by count(*) desc limit 1
select t1.winner_name, t1.loser_name from matches as t1 join rankings as t2 on t1.winner_id = t2.player_id where t1.tourney_name = "Australian Open" order by t1.winner_rank_points desc limit 1
select t1.winner_name, t1.loser_name from matches as t1 join rankings as t2 on t1.winner_id = t2.player_id where t1.tourney_name = "Australian Open" order by t1.winner_rank_points desc limit 1
select t2.winner_name, t2.loser_name from matches as t1 join players as t3 on 
select t1.winner_name from matches as t1 join players as t2 on t1.loser_id = t2.player_id group by t1.loser_name order by minutes desc limit 1
select avg(ranking), t1.first_name from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t1.player_id
select t1.first_name, avg(t2.ranking) from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t1.player_id
select sum(ranking_points), t1.first_name, t1.last_name from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t1.player_id
select t1.first_name, t1.last_name, sum(t2.ranking_points) from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t1.player_id
select country_code, count(*) from players group by country_code
select country_code, count(*) from players group by country_code
select country_code from players group by country_code order by count(*) desc limit 1
select country_code from players group by country_code order by count(*) desc limit 1
select country_code from players group by country_code having count(*) > 50
select country_code from players group by country_code having count(*) > 50
select ranking_date, count(*) from rankings group by ranking_date
select ranking_date, sum(tours) from rankings group by ranking_date
select count(*), year from matches group by year
select year, count(*) from matches group by year
select winner_name, winner_rank from matches order by winner_age limit 3
select winner_name, winner_rank from matches order by winner_age limit 3
select count(distinct winner_name) from matches where tourney_name = "WTA Championships" and winner_hand = "left"
select count(*) from matches as t1 join players as t2 on t1.winner_id = t2.player_id where t1.tourney_name = "WTA Championships" and t2.hand = "left"
select t1.first_name, t1.last_name, t1.birth_date from players as t1 join matches as t2 on t1.player_id = t2.winner_id order by t2.winner_rank_points desc limit 1
select t1.first_name, t1.last_name, t1.birth_date from players as t1 join matches as t2 on t1.player_id = t2.winner_id group by t2.winner_id order by sum(t2.winner_rank_points) desc limit 1
select hand, count(*) from players group by hand
select hand, count(*) from players group by hand
select line_1 from addresses
select line_1, line_2, line_3 from addresses
select count(*) from show where if_first_show = 'Y'
select count(*) from show where if_first_show = 'Y'
select name from conductor order by birthday asc
select name from conductor order by birthday
select name from conductor where nationality = 'USA'
select name from conductor where nationality = 'USA'
select record_company from orchestra order by year_of_founded asc
select record_company from orchestra order by year_of_founded asc
select avg(attendance) from show where if_first_show!= 'Yes'
select avg(attendance) from show where if_first_show!= "1"
select max(share), min(share) from performance where type!= "Live final"
select max(share), min(share) from performance where type!= "Live final"
select count(distinct nationality) from conductor
select count(distinct nationality) from conductor
select name from conductor order by birthday asc
select name from conductor order by birthday asc
select name from conductor order by year_of_work desc limit 1
select name from conductor order by year_of_work desc limit 1
select t1.name, t2.orchestra from conductor as t1 join orchestra as t2 on t1.conductor_id = t2.conductor_id
select t1.name, t2.orchestra from conductor as t1 join orchestra as t2 on t1.conductor_id = t2.conductor_id
select t1.name from conductor as t1 join orchestra as t2 on t1.conductor_id = t2.conductor_id group by t2.conductor_id having count(*) > 1
select t2.name from orchestra as t1 join conductor as t2 on t1.conductor_id = t2.conductor_id group by t1.conductor_id having count(*) > 1
select t2.name from orchestra as t1 join conductor as t2 on t1.conductor_id = t2.conductor_id group by t1.conductor_id order by count(*) desc limit 1
select t2.name from orchestra as t1 join conductor as t2 on t1.conductor_id = t2.conductor_id group by t1.conductor_id order by count(*) desc limit 1
select t2.name from orchestra as t1 join conductor as t2 on t1.conductor_id = t2.conductor_id order by t1.year_of_founded desc limit 1
select t2.name from orchestra as t1 join conductor as t2 on t1.conductor_id = t2.conductor_id order by t1.year_of_founded desc limit 1
select record_company, count(*) from orchestra group by record_company
select record_company, count(*) from orchestra group by record_company
select major_record_format from orchestra order by year_of_founded asc
select major_record_format from orchestra order by year_of_founded
select record_company from orchestra order by year_of_founded desc limit 1
select record_company from orchestra order by year_of_founded desc limit 1
select orchestra from orchestra where orchestra_id not in (select orchestra_id from performance)
select orchestra from orchestra where orchestra_id not in (select orchestra_id from performance)
select record_company from orchestra where year_of_founded < 2003 intersect select record_company from orchestra where year_of_founded >= 2003
select record_company from orchestra where year_of_founded >= 2003 intersect select record_company from orchestra where year_of_founded < 2003
select count(*) from show where result = "Glebe Park"
select count(*) from show where result = "Glebe Park"
select t1.type from performance as t1 join show as t2 on t1.performance_id = t2.performance_id where t2.if_first_show!= 1 group by t1.type having count(*) > 1
select t2.type from show as t1 join performance as t2 on t1.performance_id = t2.performance_id where t1.if_first_show!= 1 group by t2.type having count(*) > 1
select state from owners intersect select state from professionals
select state from owners intersect select state from professionals
select avg(t2.age) from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id
select avg(t2.age) from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id
select t2.professional_id, t2.first_name, t2.last_name, t2.cell_number from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id where t2.state = "Indiana" group by t2.professional_id having count(*) > 2
select t1.professional_id, t1.last_name, t1.cell_number from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having t1.state = "Indiana" union select t1.professional_id, t1.last_name, t1.cell_number from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) > 2
select name from dogs where owner_id not in (select dog_id from treatments where cost_of_treatment > 1000)
select t2.name from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id group by t1.dog_id having sum(t1.cost_of_treatment) > 1000
select first_name from professionals union select first_name from owners except select t2.name from professionals as t1 join dogs as t2 on t1.professional_id = t2.owner_id
select first_name from professionals union select first_name from owners except select t2.name from professionals as t1 join dogs as t2 on t1.professional_id = t2.owner_id
select t1.professional_id, t1.first_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id except select t1.professional_id, t1.first_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id
select professional_id, first_name from professionals except select t2.professional_id, t2.first_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id
select t1.owner_id, t1.first_name, t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by count(*) desc limit 1
select t1.owner_id, t1.first_name, t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by count(*) desc limit 1
select t2.professional_id, t2.home_phone from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id group by t2.professional_id having count(*) >= 2
select t1.professional_id, t1.home_phone, t1.cell_number from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select t2.breed_name from dogs as t1 join breeds as t2 on t1.breed_code = t2.breed_code group by t1.breed_code order by count(*) desc limit 1
select t2.breed_name from dogs as t1 join breeds as t2 on t1.breed_code = t2.breed_code group by t1.breed_code order by count(*) desc limit 1
select t1.owner_id, t1.last_name from owners as t1 join treatments as t2 on t1.owner_id = t2.professional_id group by t1.owner_id order by sum(t2.cost_of_treatment) desc limit 1
select t1.owner_id, t1.last_name from owners as t1 join treatments as t2 on t1.owner_id = t2.professional_id group by t1.owner_id order by sum(t2.cost_of_treatment) desc limit 1
select t1.treatment_type_description from treatment_types as t1 join treatments as t2 on t1.treatment_type_code = t2.treatment_type_code group by t2.treatment_type_code order by sum(t2.cost_of_treatment) asc limit 1
select t2.treatment_type_description from treatments as t1 join treatment_types as t2 on t1.treatment_type_code = t2.treatment_type_code group by t1.treatment_type_code order by sum(t1.cost_of_treatment) limit 1
select t1.owner_id, t1.zip_code from owners as t1 join dogs
select t1.owner_id, t1.zip_code from owners as t1 join dogs
select t1.professional_id, t1.first_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select t1.professional_id, t1.home_phone, t1.cell_number from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select t2.first_name, t2.last_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id where t1.cost_of_treatment < (select avg(cost_of_treatment) from treatments)
select t1.first_name, t1.last_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id where t2.cost_of_treatment < (select avg(cost_of_treatment) from treatments)
select t1.date_of_treatment, t2.first_name, t2.last_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id
select t1.date_of_treatment, t2.first_name, t2.last_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id
select t1.cost_of_treatment, t2.treatment_type_description from treatments as t1 join treatment_types as t2 on t1.treatment_type_code = t2.treatment_type_code
select t1.cost_of_treatment, t2.treatment_type_description from treatments as t1 join treatment_types as t2 on t1.treatment_type_code = t2.treatment_type_code
select t1.first_name, t1.last_name, t2.size_code from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id
select t1.first_name, t1.last_name, t2.size_code from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id
select t1.first_name, t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id
select t1.first_name, t1.last_name, t2.name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id
select t2.name, t1.date_of_treatment from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id where t2.breed_code = (select breed_code from breeds order by count(*) desc limit 1)
select t2.name, t1.date_of_treatment from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id where t2.breed_code = (select breed_code from breeds order by count(*) desc limit 1)
select t2.first_name, t1.name from dogs as t1 join owners as t2 on t1.owner_id = t2.owner_id where t2.zip_code = "VA"
select t1.first_name, t2.name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id where t1.state = "VA"
select date_of_treatment from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id where t2.date_arrived > t2.date_departed
select date_of_treatment from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id join owners as t3 on t2.owner_id = t3.owner_id
select t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id order by t2.age asc limit 1
select t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id order by t2.age asc limit 1
select email_address from professionals where state = "HI" or state = "WI"
select email_address from professionals where state = "HI" or state = "WI"
select date_arrived, date_departed from dogs where abandoned_yn = 1
select date_arrived, date_departed from dogs where abandoned_yn = 1
select count(*) from treatments
select count(*) from treatments
select count(distinct professional_id) from treatments
select count(distinct professional_id) from treatments
select first_name from professionals where city like '%west%'
select first_name, last_name from professionals where city like '%west%'
select first_name, last_name from owners where state like '%north%'
select first_name, last_name from owners where state like '%north%'
select count(*) from dogs where age < (select avg(age) from dogs)
select count(*) from dogs where age < (select avg(age) from dogs)
select cost_of_treatment from treatments order by date_of_treatment desc limit 1
select cost_of_treatment from treatments order by date_of_treatment desc limit 1
select count(*) from dogs where abandoned_yn not in ( select dog_id from treatments )
select count(*) from treatments
select count(*) from owners where owner_id not in ( select owner_id from dogs );
select count(*) from owners where owner_id not in ( select owner_id from dogs );
select count(*) from professionals where professional_id not in ( select professional_id from treatments )
select count(*) from professionals where professional_id not in ( select professional_id from treatments )
select name, age, weight from dogs where abandoned_yn = 1 and 0 = 0
select name, age, weight from dogs where abandoned_yn = 1
select avg(age) from dogs
select avg(age) from dogs where abandoned_yn = 1
select max(age) from dogs
select age from dogs order by age desc limit 1
select charge_type, charge_amount from charges group by charge_type
select charge_type, charge_amount from charges group by charge_type
select charge_type, sum(charge_amount) from charges order by charge_type desc limit 1
select charge_amount from charges order by charge_type desc limit 1
select email_address, first_name from professionals
select email_address, first_name from professionals
select breed_code, size_code from dogs
select distinct breed_code, size_code from dogs
select t2.first_name, t2.last_name, t3.treatment_type_description from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id join treatment_types as t3 on t1.treatment_type_code = t3.treatment_type_code
select t2.first_name, t2.last_name, t3.treatment_type_description from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id join treatment_types as t3 on t1.treatment_type_code = t3.treatment_type_code
select count(*) from singer
select count(*) from singer
select name from singer order by birth_year asc
select name from singer order by birth_year asc
select birth_year, citizenship from singer
select birth_year, citizenship from singer
select name from singer where citizenship!= "French"
select name from singer where citizenship!= "French"
select name from singer where birth_year < 1948
select name from singer where birth_year < 1948
select name from singer order by birth_year limit 1
select name from singer order by birth_year limit 1
select citizenship, count(*) from singer group by citizenship
select citizenship, count(*) from singer group by citizenship
select citizenship from singer group by citizenship order by count(*) desc limit 1
select citizenship from singer group by citizenship order by count(*) desc limit 1
select citizenship, max(net_worth_millions) from singer group by citizenship
select citizenship, max(net_worth_millions) from singer group by citizenship
select title from song order by sales desc limit 1
select title from song order by sales desc limit 1
select distinct t1.name from singer as t1 join song as t2 on t1.singer_id = t2.singer_id where t2.sales > 300000
select distinct t1.name from singer as t1 join song as t2 on t1.singer_id = t2.singer_id where t2.sales > 300000
select t2.name from song as t1 join singer as t2 on t1.singer_id = t2.singer_id group by t1.singer_id having count(*) > 1
select t2.name from song as t1 join singer as t2 on t1.singer_id = t2.singer_id group by t1.singer_id having count(*) > 1
select t2.name, max(t1.highest_position) from song as t1 join singer as t2 on t1.singer_id = t2.singer_id
select max(t2.highest_position), t1.name from singer as t1 join song as t2 on t1.singer_id = t2.singer_id group by t1.name
select name from singer where singer_id not in (select singer_id from song)
select name from singer where singer_id not in (select singer_id from song)
select citizenship from singer where birth_year < 1945 intersect select citizenship from singer where birth_year > 1945
select citizenship from singer where birth_year < 1945 intersect select citizenship from singer where birth_year > 1945
