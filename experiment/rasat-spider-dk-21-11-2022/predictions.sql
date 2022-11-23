select count(*) from singer
select count(*) from singer
select name, country from singer order by age desc
select name, country from singer order by age desc
select avg(t2.name), min(t2.name), max(t2.id) from singer as t1 join singer_in_concert as t2 on t1.singer_id = t2.singer_id where t1.country = "France"
select avg(t1.id), min(t1.id), max(t1.id) from singer as t1 join singer_in_concert as t2 on t1.singer_id = t2.singer_id where t1.country = "France"
select t2.song_name, t2.song_release_year from singer as t1 join song as t2 on t1.song_id = t2.song_id order by t1.birthday limit 1
select t2.song_name, t2.song_release_year from singer as t1 join song as t2 on t1.song_id = t2.song_id order by t1.birthday limit 1
select distinct country from singer where birthday like "2001%"
select distinct country from singer where birthday like "2001%"
select country, count(*) from singer group by country
select country, count(*) from singer group by country
select song_name from singer where age > (select avg(age) from singer)
select song_name from singer where age > (select avg(age) from singer)
select location, name from stadium where capacity between 5000 and 10000
select location, name from stadium where capacity between 5000 and 10000
select avg(capacity), max(capacity) from stadium
select avg(capacity), max(capacity) from stadium
select t1.name, t1.capacity from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id group by t2.stadium_id order by avg(t1.attendance) desc limit 1
select t1.name, t1.capacity from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id group by t1.stadium_id order by avg(t1.attendance) desc limit 1
select count(*) from concert where year > 2014
select count(*) from concert where year >= 2014
select t3.name, count(*) from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id join concert as t3 on t1.concert_id = t3.concert_id group by t2.stadium_id
select t1.name, count(*) from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id group by t1.stadium_id
select t1.name, t1.capacity from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year >= 2014 group by t2.stadium_id order by count(*) desc limit 1
select t1.name, t1.highest from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year > 2013 group by t2.stadium_id order by count(*) desc limit 1
select concert_name from concert order by year desc limit 1
select concert_name from concert order by year desc limit 1
select max(attendance) from stadium where stadium_id not in (select stadium_id from concert)
select min(attendance) from stadium where stadium_id not in (select stadium_id from concert)
select country from singer where birthday = 1981 or birthday = 1991
select avg(attendance) from stadium except select t2.average from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2014
select min(attendance) from stadium where stadium_id not in (select stadium_id from concert where year = 2014)
select t1.concert_name, t1.theme, count(*) from concert as t1 join singer_in_concert as t2 on t1.concert_id = t2.concert_id group by t1.concert_id
select t1.concert_name, t1.theme, count(*) from concert as t1 join singer_in_concert as t2 on t1.concert_id = t2.concert_id group by t1.concert_id
select t2.name, count(*) from singer_in_concert as t1 join singer as t2 on t1.singer_id = t2.singer_id group by t1.singer_id
select t2.name, count(*) from singer_in_concert as t1 join singer as t2 on t1.singer_id = t2.singer_id group by t2.name
select t3.name from singer_in_concert as t1 join concert as t2 on t1.concert_id = t2.concert_id join singer as t3 on t1.singer_id = t3.singer_id where t2.year >= 2014
select t2.name from singer_in_concert as t1 join singer as t2 on t1.singer_id = t2.singer_id where t1.year < 2014
select t1.name, t1.country from singer as t1 join singer_in_concert as t2 on t1.singer_id = t2.singer_id join song as t3 on t3.song_name like '%hey%'
select t1.name, t1.country from singer as t1 join singer_in_concert as t2 on t1.singer_id = t2.singer_id join song as t3 on t3.song_name = t1.song_name where t3.song_name like '%hey%'
select avg(t1.attendance), min(attendance), max(attendance) from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2014 intersect select t1.attendance, t1.capacity from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2015
select t1.name, t1.capacity from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2014 intersect select t1.name, t1.capacity from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2015
select count(*) from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id group by t1.stadium_id order by t2.capacity desc limit 1
select count(*) from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id group by t1.stadium_id order by avg(t2.capacity) desc limit 1
select count(*) from pets where weight > 10
select count(*) from pets where weight > 10
select weight from pets order by birthdate desc limit 1
select weight from pets order by birthdate desc limit 1
select max(weight), pettype from pets group by pettype
select max(weight), pettype from pets group by pettype
select count(*) from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t3.age > 20
select count(*) from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t3.age > 20
select count(*) from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t3.stuid = t1.stuid where t3.sex = "F"
select count(*) from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t3.stuid = t1.stuid where t3.sex = "F"
select count(distinct pettype) from pets
select count(distinct pettype) from pets
select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.pettype = "kitten" or t2.pettype = "puppy"
select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.petid = "kitten" or t2.petid = "puppy"
select t1.fname, t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.pettype = "Kitten" intersect select t1.fname, t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.pettype = "Puppy"
select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.pettype = "kitten" intersect select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.pettype = "puppy"
select major, age from student where stuid not in (select stuid from has_pet where petid = "kitten")
select major, age from student where stuid not in (select stuid from has_pet where petid = "kitten")
select stuid from student except select stuid from has_pet where petid = "kitten"
select stuid from student except select stuid from has_pet where petid = "kitten"
select fname, age from student where stuid in (select stuid from has_pet where pettype = "dog") except select stuid from has_pet where pettype = "puppy"
select fname from student where stuid in (select stuid from has_pet where petid = 'puppy' except select stuid from has_pet where petid = 'kitten')
select pettype, weight from pets order by birthdate desc limit 1
select pettype, weight from pets order by birthdate desc limit 1
select petid, weight from pets where birthdate > 2020
select petid, weight from pets where birthdate > 2020
select pettype, avg(weight), max(weight) from pets group by pettype
select pettype, avg(petid), max(petid) from pets group by pettype
select pettype, avg(weight), max(weight) from pets group by pettype
select pettype, avg(weight) from pets group by pettype
select t1.fname, t1.age from student as t1 join has_pet as t2 on t1.stuid = t2.stuid
select distinct t1.fname, t1.age from student as t1 join has_pet as t2 on t1.stuid = t2.stuid
select t2.petid from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t3.stuid = t1.stuid where t3.lname = 'Smith'
select t4.petid from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t3.lname = 'Smith'
select count(*), t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid group by t1.stuid
select count(*), t1.stuid from student as t1 join has_pet as t2 on t1.stuid = t2.stuid group by t1.stuid
select t1.fname, t1.sex from student as t1 join has_pet as t2 on t1.stuid = t2.stuid group by t1.stuid having count(*) > 1
select t1.fname, t1.sex from student as t1 join has_pet as t2 on t1.stuid = t2.stuid group by t1.stuid having count(*) > 1
select t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.birthdate = 2001 and t2.pettype = "cat"
select t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.birthdate = 2001 and t2.pettype = "cat"
select avg(age) from student where stuid not in (select stuid from has_pet)
select avg(age) from student where stuid not in (select stuid from has_pet)
select count(*) from continents
select count(*) from continents
select t1.continent, count(*) from continents as t1 join countries as t2 on t1.continent = t2.continent group by t1.continent
select t1.continent, count(*) from continents as t1 join countries as t2 on t1.continent = t2.continent group by t1.continent
select count(*) from countries
select count(*) from countries
select t1.fullname, t1.id, count(*) from car_makers as t1 join model_list as t2 on t1.id = t2.maker group by t1.id
select t1.fullname, t1.id, count(*) from car_makers as t1 join model_list as t2 on t1.id = t2.maker group by t1.id
select t1.model from car_models as t1 join cars_data as t2 on t1.id = t2.car_id order by t2.horsepower limit 1
select model from cars_data order by horsepower limit 1
select model from cars_data where weight < (select avg(weight) from cars_data)
select t1.model from model_list as t1 join cars_data as t2 on t1.modelid = t2.id where t2.weight < (select avg(weight) from cars_data)
select t1.maker from car_makers as t1 join cars_data as t2 on t1.id = t2.makeid where t2.year <= 2
select distinct maker from car_makers where id in (select make from car_makers where year >= 2)
select t1.make, t1.year from car_makers as t1 join cars_data as t2 on t1.id = t2.id order by t1.year limit 1
select t1.maker, t1.year from car_makers as t1 join cars_data as t2 on t1.id = t2.car_id order by t2.year limit 1
select distinct model from model_list where year < 1980
select distinct model from model_list where year < 1980
select t1.continent, count(*) from continents as t1 join car_makers as t2 on t1.continentid = t2.continent group by t1.continent
select t1.continent, count(*) from continents as t1 join car_makers as t2 on t1.continentid = t2.continent group by t1.continent
select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country group by t1.countryname order by count(*) desc limit 1
select countryname from car_makers group by country order by count(*) desc limit 1
select count(*), t1.fullname from car_makers as t1 join model_list as t2 on t1.id = t2.maker group by t1.fullname
select count(*), t1.id, t1.fullname from car_makers as t1 join model_list as t2 on t1.id = t2.maker group by t1.id
select avg(t2.accel) from cars_data as t1 join car_names as t2 on t1.make = t2.makeid where t2.make = 'amc hornet sportabout' (sw)
select accelerate from cars_data as t1 join car_names as t2 on t1.make = t2.makeid where t2.make = 'amc hornet sportabout' (sw)
select count(*) from car_makers where country = "Japan"
select count(*) from car_makers where country = "Japan"
select count(*) from car_makers as t1 join continents as t2 on t1.continent = t2.continentid where t2.continent = 'america'
select count(*) from car_makers where country = 'USA'
select avg(mpg) from cars_data where cylinders = 4
select avg(mpg) from cars_data where cylinders = 4
select min(weight) from cars_data where cylinders = "8" and year = 1974
select min(weight) from cars_data where cylinders = 8 and year = 1974
select maker, model from car_makers
select maker, model from car_makers
select t1.countryname, t1.id from countries as t1 join car_makers as t2 on t1.countryid = t2.countryid group by t1.countryid having count(*) >= 1
select t1.countryname, t1.countryid from countries as t1 join car_makers as t2 on t1.countryid = t2.country
select count(*) from cars_data where horsepower > 150
select count(*) from cars_data where horsepower > 150
select avg(weight), year from cars_data group by year
select avg(weight), year from cars_data group by year
select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t1.continent = "europe" group by t1.countryname having count(*) >= 3
select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t2.continent = "europe" group by t1.countryname having count(*) >= 3
select max(t2.horsepower), t1.make from cars_data as t1 join model_list as t2 on t1.id = t2.modelid where t1.cylinders = 3
select max(hp), make from cars_data where cylinders = 3
select model from car_data order by mpg desc limit 1
select t1.model from car_makers as t1 join cars_data as t2 on t1.id = t2.modelid order by t2.mpg desc limit 1
select avg(horsepower) from cars_data where year < 1980
select avg(hp) from cars_data where year <= 1980
select avg(edispl) from cars_data where model = tesla
select avg(edispl) from cars_data where tesla = (select avg(edispl) from cars_data)
select max(accelerate), cylinders from cars_data group by cylinders
select max(accel) from cars_data group by cylinders
select t1.model from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.modelid order by count(*) desc limit 1
select model from model_list group by model order by count(*) desc limit 1
select count(*) from cars_data where cylinders > 4
select count(*) from cars_data where cylinders > 4
select count(*) from cars_data where year <= 2
select count(*) from cars_data where year = (select max(year) from cars_data)
select count(*) from car_makers as t1 join model_list as t2 on t1.id = t2.modelid where t1.maker = 'American Motor'
select count(*) from car_makers as t1 join model_list as t2 on t1.id = t2.modelid where t1.maker = 'American Motor'
select t1.fullname, t1.id from car_makers as t1 join model_list as t2 on t1.id = t2.maker group by t1.id having count(*) > 3
select t1.fullname, t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.maker group by t1.maker having count(*) > 3
select distinct t1.model from model_list as t1 join car_makers as t2 on t1.maker = t2.id where t2.fullname = 'General Motors' or t1.weight > 3500
select distinct t1.model from model_list as t1 join car_makers as t2 on t1.maker = t2.id where t2.fullname = "General Motors" or t1.weight > 3500
select year from cars_data where weight between 3000 and 4000
select distinct year from cars_data where weight < 4000 intersect select distinct year from cars_data where weight > 3000
select horsepower from cars_data order by accelerate desc limit 1
select horsepower from cars_data order by accelerate desc limit 1
select cylinders from cars_data where model = tesla order by accelerate limit 1
select cylinders from cars_data where tesla = (select min(accelerator) from cars_data)
select count(*) from cars_data where accelerate > (select max(accelerate) from cars_data)
select count(*) from cars_data where accelerate > (select max(accelerate) from cars_data)
select count(*) from (select country from car_makers group by country having count(*) > 2)
select count(*) from car_makers group by country having count(*) > 2
select count(*) from cars_data where cylinders > 6
select count(*) from cars_data where cylinders > 6
select model from cars_data where cylinders = 4 order by horsepower desc limit 1
select model from cars_data where cylinders = 4 order by horsepower desc limit 1
select makeid, makename from cars_data where horsepower > (select min(horsepower) from cars_data) except select makeid, makename from cars_data where cylinders > 3)
select make, model, name from cars_data where cylinders < 4
select max(mpg) from cars_data where cylinders = 8 or year < 1980
select max(mpg) from cars_data where cylinders = 8 or year < 1980
select model from model_list where weight < 3500 except select model from model_list where maker = 'Ford Motor'
select distinct model from model_list where weight < 3500 except select distinct model from model_list where maker = 'ford'
select countryname from countries where countryid not in (select country from car_makers)
select countryname from countries where countryid not in (select country from car_makers)
select maker, id from car_makers group by maker having count(*) >= 2 intersect select maker, id from car_makers group by maker having count(*) >= 3
select t1.id, t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.id having count(*) >= 2
select t1.id, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country group by t1.id having count(*) > 3 union select t1.id, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t2.model = 'tesla'
select t1.id, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country group by t1.id having count(*) > 3 union select t1.id, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country group by t1.id having count(*) > 100
select country from airlines where abbreviation = "JetBlue"
select t1.country from airlines as t1 join flights as t2 on t1.uid = t2.airline where t1.abbreviation = 'JetBlue'
select abbreviation from airlines where airline = "JetBlue"
select abbreviation from airlines where airline = 'JetBlue'
select airline, abbreviation from airlines where airline = 'American Airlines'
select airline, abbreviation from airlines where country = 'United States'
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
select count(*) from airlines where country = 'United States'
select count(*) from airlines where country = 'United States'
select city, country from airports where airportname = 'Alton'
select city, country from airports where airportname = "Alton"
select airportname from airports where airportcode = 'AKO'
select airportname from airports where airportcode = 'AKO'
select airportname from airports where airportcode = 'Jackson'
select airportname from airports where city = 'Jackson'
select count(*) from flights where sourceairport = 'APG'
select count(*) from flights where sourceairport = 'APG'
select count(*) from airports as t1 join flights as t2 on t1.airportcode = t2.destairport where t1.airportcode = "ATO"
select count(*) from airports as t1 join flights as t2 on t1.airportcode = t2.airportcode where t1.airportcode = 'ATO'
select count(*) from flights where sourceairport = 'Jackson'
select count(*) from flights where sourceairport = 'Jacksonville'
select count(*) from airports as t1 join flights as t2 on t1.airportcode = t2.sourceairport where t1.city = 'Jackson'
select count(*) from flights where sourceairport = 'Jacksonville'
select count(*) from flights where sourceairport = 'Syracuse' and destinationairport = 'Ashley'
select count(*) from flights where sourceairport = 'Syracuse' and destinationairport = 'Ashley'
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airline where t1.abbreviation = 'JetBlue'
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airline where t1.abbreviation = "JetBlue"
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.airportcode = 'ASY' and t1.airline = 'JetBlue'
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.airportcode = "ASY" and t1.airline = "JetBlue"
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.sourceairport = 'AHD' and t2.airline = 'JetBlue'
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.sourceairport = "AHD" and t2.airline = "JetBlue"
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airline where t1.city = 'Aberdeen' and t1.abbreviation = 'JetBlue'
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.city = 'Aberdeen' and t1.abbreviation = 'JetBlue'
select t1.city from airports as t1 join flights as t2 on t1.airportcode = t2.sourceairport group by t1.city order by count(*) desc limit 1
select t1.city from airports as t1 join flights as t2 on t1.airportcode = t2.destinationairport group by t1.city order by count(*) desc limit 1
select t1.city from airports as t1 join flights as t2 on t1.airportcode = t2.sourceairport group by t1.city order by count(*) desc limit 1
select t1.city from airports as t1 join flights as t2 on t1.airportcode = t2.sourceairport group by t2.sourceairport order by count(*) desc limit 1
select airportcode from airports group by airportcode order by count(*) desc limit 1
select airportcode from airports group by airportcode order by count(*) desc limit 1
select airportcode from airports group by airportcode order by count(*) limit 1
select airportcode from airports group by airportcode order by count(*) limit 1
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline group by t1.airline order by count(*) desc limit 1
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline group by t1.uid order by count(*) desc limit 1
select t1.abbreviation, t1.country from airlines as t1 join flights as t2 on t1.uid = t2.airline group by t2.airline order by count(*) limit 1
select t1.airportname, t1.country from airports as t1 join flights as t2 on t1.airportcode = t2.sourceairport group by t1.airportname order by count(*) limit 1
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.sourceairport = 'AHD'
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.sourceairport = 'AHD'
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.destairport = 'AHD'
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.destinationairport = 'AHD'
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.sourceairport = 'APG' intersect select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.sourceairport = 'CVO'
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.sourceairport = 'APG' intersect select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.destairport = 'CVO'
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.sourceairport = 'CVO' except select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.destairport = 'APG'
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.sourceairport = 'CVO' except select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.destairport = 'APG'
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline group by t1.airline having count(*) >= 10
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline group by t1.airline having count(*) >= 10
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.flightno < 200
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.flightno < 200
select t1.flightno from flights as t1 join airlines as t2 on t1.airline = t2.uid where t2.abbreviation = "JetBlue"
select t1.flightno from flights as t1 join airlines as t2 on t1.airline = t2.uid where t2.airline = "JetBlue"
select t1.flightno from flights as t1 join airports as t2 on t1.sourceairport = t2.airportcode where t2.airportcode = "APG"
select t1.flightno from flights as t1 join airports as t2 on t1.sourceairport = t2.airportcode where t2.airportcode = 'APG'
select t1.flightno from flights as t1 join airports as t2 on t1.sourceairport = t2.airportcode where t2.airportname = "APG"
select t1.flightno from flights as t1 join airports as t2 on t1.sourceairport = t2.airportcode where t2.airportcode = 'APG'
select t1.flightno from flights as t1 join airports as t2 on t1.sourceairport = t2.airportcode where t2.city = 'Jackson'
select flightno from flights where sourceairport = 'Jackson'
select t1.flightno from flights as t1 join airports as t2 on t1.sourceairport = t2.airportcode where t2.city = 'Jackson'
select t1.flightno from flights as t1 join airports as t2 on t1.sourceairport = t2.airportcode where t2.city = 'Jackson'
select count(*) from airports as t1 join flights as t2 on t1.airportcode = t2.sourceairport where t1.city = 'Syracuse' or t1.country = 'Jackson'
select count(*) from airports as t1 join flights as t2 on t1.airportcode = t2.sourceairport where t1.city = 'Syracuse' or t1.country = 'Jackson'
select airportname from airports where airportcode not in (select airportcode from flights)
select airportname from airports except select t1.airportname from airports as t1 join flights as t2 on t1.airportcode = t2.sourceairport or t2.airportcode = t3.airportcode
select count(*) from documents
select count(*) from documents
select document_id, document_name, document_description from documents
select document_id, document_name, document_description from documents
select t1.document_name, t1.template_id from documents as t1 join templates as t2 on t1.template_id = t2.template_id where t1.document_description like '%w%'
select document_name, template_id from documents where document_name like '%w%'
select document_description, template_id from documents where document_name = "Robbin CV"
select document_description, document_id, template_id from documents where document_name = "Robbin CV"
select count(distinct template_id) from documents
select count(distinct template_id) from documents
select count(*) from templates where template_type_code = "PPT"
select count(*) from templates where template_type_code = "PPT"
select template_id, count(*) from documents group by template_id
select template_id, count(*) from documents group by template_id
select date_effective_to from templates group by date_effective_to order by count(*) desc limit 1
select date_effective_from, date_effective_to from templates group by date_effective_from order by count(*) desc limit 1
select template_id from documents group by template_id having count(*) > 1
select template_id from documents group by template_id having count(*) > 1
select template_id from templates except select document_id from documents
select template_id from templates except select document_id from documents
select count(*) from templates
select count(*) from templates
select date_effective_from, date_effective_to, template_type_code from templates
select date_effective_from, date_effective_to, template_type_code from templates
select date_effective_from, date_effective_to from templates
select date_effective_from, date_effective_to from templates where date_effective_from >= "2003-04-19 15:06:20" and date_effective_to < "2016-03-15 00:33:18"
select date_effective_from, date_effective_to from templates where template_type_code = "PP" or template_type_code = "PPT"
select date_effective_from, date_effective_to from templates where template_type_code = "PP" or template_type_code = "PPT"
select date_effective_from, date_effective_to from templates where template_type_code = "CV"
select date_effective_from, date_effective_to from templates where template_type_code = "CV"
select t1.date_effective_from, t1.template_type_code from templates as t1 join ref_template_types as t2 on t1.template_type_code = t2.template_type_code where t1.version_number > 5
select date_effective_from, date_effective_to, template_type_code from templates where version_number > 5
select date_effective_from, count(*) from templates group by date_effective_from
select date_effective_from, date_effective_to, count(*) from templates group by date_effective_to, date_effective_from
select date_effective_from from templates group by date_effective_from order by count(*) desc limit 1
select date_effective_from from templates group by date_effective_from order by count(*) desc limit 1
select date_effective_to from templates group by date_effective_to having count(*) < 3
select date_effective_to from templates group by date_effective_to having count(*) < 3
select min(version_number), date_effective_from, date_effective_to from templates
select version_number, date_effective_from, date_effective_to from templates order by version_number asc limit 1
select t1.date_effective_from, t1.date_effective_to from templates as t1 join documents as t2 on t1.template_id = t2.template_id where t2.document_name = "Data base"
select t1.date_effective_from, t1.date_effective_to from templates as t1 join documents as t2 on t1.template_id = t2.template_id where t2.document_name = "Data base"
select document_name, document_id, template_id from documents as t1 join templates as t2 on t1.template_id = t2.template_id where t2.template_type_code = "BK"
select t1.document_name from documents as t1 join templates as t2 on t1.template_id = t2.template_id where t2.template_type_code = "BK"
select date_effective_from, date_effective_to, count(*) from documents group by date_effective_from, date_effective_to
select date_effective_from, date_effective_to, count(*) from documents group by date_effective_from, date_effective_to
select date_effective_from, date_effective_to from documents group by date_effective_to order by count(*) desc limit 1
select date_effective_from, date_effective_to from documents group by date_effective_to order by count(*) desc limit 1
select date_effective_from, date_effective_to from templates except select t1.date_effective_from, t1.date_effective_to from templates as t1 join documents as t2 on t1.template_id = t2.template_id
select date_effective_from, date_effective_to from templates except select t1.date_effective_from, t1.date_effective_to from templates as t1 join documents as t2 on t1.template_id = t2.template_id
select template_type_code, template_type_description from ref_template_types
select template_type_code, template_type_description from ref_template_types
select template_type_description from ref_template_types where template_type_code = "AD"
select template_type_description from ref_template_types where template_type_code = "AD"
select template_type_code from ref_template_types where template_type_description = "Book"
select template_type_code from ref_template_types where template_type_description = "Book"
select distinct t1.template_type_description from ref_template_types as t1 join templates as t2 on t1.template_type_code = t2.template_type_code
select distinct t1.template_type_description from ref_template_types as t1 join templates as t2 on t1.template_type_code = t2.template_type_code
select date_effective_from, date_effective_to from templates as t1 join ref_template_types as t2 on t1.template_type_code = t2.template_type_code where t2.template_type_description = "Presentation"
select t1.date_effective_to from templates as t1 join ref_template_types as t2 on t1.template_type_code = t2.template_type_code where t2.template_type_description = 'Presentation'
select t1.first_name, t1.last_name from players as t1 join matches as t2 on t1.player_id = t2.player_id
select t1.first_name, t1.last_name from players as t1 join matches as t2 on t1.player_id = t2.player_id
select t1.player_age, t2.player_age from players as t1 join matches as t2 on t1.player_id = t2.player_id
select t1.player_age, t2.player_age from players as t1 join matches as t2 on t1.player_id = t2.player_id
select first_name, birth_date from players where country_code = 'USA'
select first_name, birth_date from players where birth_country = 'USA'
select avg(loser_age), avg(winner_age) from matches
select avg(loser_age), avg(winner_age) from matches
select avg(t2.winner_rank), avg(t2.loser_rank) from matches as t1 join players as t2 on t1.loser_id = t2.player_id group by t1.loser_id
select avg(rank) from matches where loser_hand!= "null"
select t1.winner_rank from players as t1 join matches as t2 on t1.player_id = t2.winner_id join loser_matches as t3 on t2.loser_id = t3.player_id
select min(winner_rank), min(loser_rank) from matches
select count(distinct country_code) from players
select count(distinct country_code) from players
select count(distinct loser_name) from matches
select count(distinct loser_name) from matches
select tourney_name from matches group by tourney_name having count(*) > 10
select t1.tourney_name from tournaments as t1 join matches as t2 on t1.tourney_id = t2.tourney_id group by t1.tourney_id having count(*) > 10
select t2.first_name, t2.last_name from matches as t1 join players as t2 on t1.winner_id = t2.player_id where t1.year = 2013 intersect select t2.first_name, t2.last_name from matches as t1 join players as t2 on t1.loser_id = t2.player_id where t1.year = 2016
select t2.first_name, t2.last_name from matches as t1 join players as t2 on t1.winner_id = t2.player_id where t1.year = 2013 intersect select t2.first_name, t2.last_name from matches as t1 join players as t2 on t1.loser_id = t2.player_id where t1.year = 2016
select t2.first_name, t2.last_name from matches as t1 join players as t2 on t1.winner_id = t2.player_id where t1.year = 2013 or t1.year = 2016
select t2.first_name, t2.last_name from matches as t1 join players as t2 on t1.winner_id = t2.player_id where t1.year = 2013 or t1.year = 2016
select t1.country_code, t1.first_name from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.tourney_name = "WTA Championships" intersect select t1.country_code, t1.first_name from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.tourney_name = "Australian Open"
select t1.first_name, t1.country_code from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.tournament_name = "WTA Championships" intersect select t1.first_name, t1.country_code from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.tournament_name = "Australian Open"
select first_name, country_code from players order by birth_date desc limit 1
select first_name, country_code from players order by birth_date desc limit 1
select first_name, last_name from players order by birth_date desc
select first_name, last_name from players order by birth_date desc
select first_name, last_name from players where left_hand = "left" order by birth_date desc
select first_name, last_name from players where hand = "Left" order by birth_date desc
select t1.first_name, t1.last_name, t1.country_code from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t2.player_id order by count(*) desc limit 1
select t1.first_name, t1.last_name, t1.country_code from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t2.player_id order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select t1.first_name, t1.last_name, t2.rank_points from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t2.player_id order by count(*) desc limit 1
select t1.first_name, t1.last_name, t2.rank_points from players as t1 join matches as t2 on t1.player_id = t2.winner_id group by t2.winner_id order by count(*) desc limit 1
select t2.winner_name, t2.loser_name from matches as t1 join players as t2 on t1.winner_id = t2.player_id where t1.tourney_name = "Australian Open" order by t2.winner_rank desc limit 1
select t2.winner_name, t2.loser_name from matches as t1 join players as t2 on t1.winner_id = t2.player_id where t1.tourney_name = "Australian Open" order by t2.ranking_points desc limit 1
select t2.winner_name, t2.loser_name from matches as t1 join players as t2 on t1.loser_id = t2.player_id group by t1.loser_id order by t1.minutes desc limit 1
select t1.loser_name from matches as t1 join players as t2 on t1.loser_id = t2.player_id order by t1.minutes desc limit 1
select avg(t2.ranking_points), t1.first_name from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t1.first_name
select t1.first_name, avg(t2.ranking_points) from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t1.player_id
select sum(ranking_points), t1.first_name, t1.last_name from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t1.player_id
select t1.first_name, t1.last_name, sum(t2.ranking_points) from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t1.player_id
select count(*), country_code from players group by country_code
select country_code, count(*) from players group by country_code
select country_code from players group by country_code order by count(*) desc limit 1
select country_code from players group by country_code order by count(*) desc limit 1
select country_code from players group by country_code having count(*) > 50
select country_code from players group by country_code having count(*) > 50
select ranking_date, count(*) from rankings group by ranking_date
select ranking_date, count(*) from rankings group by ranking_date
select count(*), t1.year from matches as t1 join rankings as t2 on t1.match_id = t2.match_id group by t1.year
select count(*), t1.year from matches as t1 join matches as t2 on t1.match_id = t2.match_id group by t1.year
select t2.winner_name, t2.winner_rank from matches as t1 join players as t2 on t1.winner_id = t2.player_id order by t2.birth_date desc limit 3
select t2.winner_name, t2.winner_rank from matches as t1 join players as t2 on t1.winner_id = t2.player_id order by t2.birth_date desc limit 3
select count(distinct winner_hand) from matches where tourney_name = "WTA Championships" and hand = "left"
select count(*) from matches as t1 join players as t2 on t1.winner_hand = t2.player_id where t1.tourney_name = "WTA Championships" and t2.hand = "left"
select t1.first_name, t1.last_name, t1.birth_date from players as t1 join matches as t2 on t1.player_id = t2.winner_id order by t2.winner_rank_points desc limit 1
select t1.first_name, t1.last_name, t1.birth_date from players as t1 join matches as t2 on t1.player_id = t2.winner_id group by t2.winner_id order by sum(t2.winner_rank_points) desc limit 1
select count(*), hand from players group by hand
select count(*), hand from players group by hand
select address_line_1 from addresses
select t1.line_1, t1.line_2, t1.other_address_details from addresses as t1 join student_enrolment as t2 on t1.address_id = t2.student_id group by t1.address_id having count(*) = 3
select count(*) from show where if_first_show = 'Yes'
select count(*) from show where if_first_show = 'Yes'
select name from conductor order by age asc
select name from conductor order by age
select name from conductor where nationality = 'USA'
select name from conductor where nationality = 'USA'
select record_company from orchestra order by year_of_founded asc
select record_company from orchestra order by year_of_founded asc
select avg(attendance) from show where show_id not in (select show_id from show where if_first_show = 1)
select avg(attendance) from show where show_id not in (select show_id from show where if_first_show = "live")
select max(share), min(share) from performance where type!= "Live final"
select max(share), min(share) from performance where type!= "Live final"
select count(distinct nationality) from conductor
select count(distinct nationality) from conductor
select name from conductor order by age asc
select name from conductor order by age asc
select name from conductor order by year_of_work desc limit 1
select name from conductor order by year_of_work desc limit 1
select t1.name, t2.name from conductor as t1 join orchestra as t2 on t1.conductor_id = t2.conductor_id
select t1.name, t2.name from conductor as t1 join orchestra as t2 on t1.conductor_id = t2.conductor_id
select t1.name from conductor as t1 join orchestra as t2 on t1.conductor_id = t2.conductor_id group by t1.conductor_id having count(*) > 1
select t1.name from conductor as t1 join orchestra as t2 on t1.conductor_id = t2.conductor_id group by t1.conductor_id having count(*) > 1
select t1.name from conductor as t1 join orchestra as t2 on t1.conductor_id = t2.conductor_id group by t1.conductor_id order by count(*) desc limit 1
select t1.name from conductor as t1 join orchestra as t2 on t1.conductor_id = t2.conductor_id group by t1.conductor_id order by count(*) desc limit 1
select t1.name from conductor as t1 join orchestra as t2 on t1.conductor_id = t2.conductor_id order by t2.year_of_founded limit 1
select t2.name from orchestra as t1 join conductor as t2 on t1.conductor_id = t2.conductor_id order by t1.year_of_work desc limit 1
select record_company, count(*) from orchestra group by record_company
select t1.record_company, count(*) from orchestra as t1 join record as t2 on t1.orchestra_id = t2.orchestra_id group by t1.record_company
select major_record_format from orchestra order by year_of_founded asc
select major_record_format from orchestra order by year_of_founded
select record_company from orchestra order by year_of_founded limit 1
select record_company from orchestra order by year_of_founded desc limit 1
select name from orchestra where orchestra_id not in (select orchestra_id from performance)
select orchestra from orchestra except select t2.orchestra from performance as t1 join orchestra as t2 on t1.orchestra_id = t2.orchestra_id
select record_company from orchestra where year_of_founded < 2003 intersect select record_company from orchestra where year_of_founded >= 2003
select record_company from orchestra where year_of_founded > 2003 intersect select record_company from orchestra where year_of_founded < 2003
select count(*) from show where result = "Glebe Park"
select count(*) from show where result = "Glebe Park" and if_first_show = '1'
select type from performance group by type having count(*) > 1
select type from performance group by type having count(*) > 1
select state from owners intersect select state from professionals
select state from owners intersect select state from professionals
select avg(age) from dogs where dog_id in ( select dog_id from treatments )
select avg(age) from dogs where dog_id in ( select dog_id from treatments )
select t1.first_name, t1.last_name, t1.cell_number from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id where t1.state = "Indiana" union select t1.first_name, t1.last_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) > 2
select t1.first_name, t1.last_name, t1.cell_number from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id where t1.state = "Indiana" union select t1.first_name, t1.last_name, t1.cell_number from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) > 2
select name from dogs except select t1.name from dogs as t1 join treatments as t2 on t1.owner_id = t2.dog_id where t2.cost_of_treatment > 1000
select t2.name from treatments as t1 join dogs as t2 on t1.dog_id = t2.owner_id where t1.cost_of_treatment > 1000
select first_name from professionals or owners except select t2.first_name from professionals as t1 join owners as t2 on t1.professional_id = t2.owner_id
select first_name from professionals or owners except select t2.first_name from professionals as t1 join owners as t2 on t1.professional_id = t2.owner_id
select name, professional_id from professionals except select t2.first_name, t2.last_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id
select professional_id, first_name, last_name from professionals except select t2.professional_id, t2.first_name, t2.last_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id
select t1.owner_id, t2.first_name, t2.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by count(*) desc limit 1
select t1.owner_id, t2.first_name, t2.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by count(*) desc limit 1
select t1.professional_id, t1.home_phone from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select t1.professional_id, t1.home_phone from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select breed_name from dogs group by breed_code order by count(*) desc limit 1
select breed_name from dogs group by breed_code order by count(*) desc limit 1
select t1.owner_id, t1.last_name from owners as t1 join treatments as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by sum(t2.cost_of_treatment) desc limit 1
select t1.owner_id, t1.last_name from owners as t1 join treatments as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by sum(t2.cost_of_treatment) desc limit 1
select t1.treatment_type_description from treatment_types as t1 join treatments as t2 on t1.treatment_type_code = t2.treatment_type_code group by t1.treatment_type_code order by sum(t2.cost_of_treatment) limit 1
select t1.treatment_type_description from treatment_types as t1 join treatments as t2 on t1.treatment_type_code = t2.treatment_type_code group by t2.treatment_type_code order by sum(t2.cost_of_treatment) limit 1
select t1.owner_id, t1.zip_code from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by sum(t2.cost_of_treatment) desc limit 1
select t1.owner_id, t1.zip_code from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by sum(t2.cost_of_treatment) desc limit 1
select t1.professional_id, t2.first_name, t2.last_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select t1.professional_id, t1.home_phone, t1.dog_id from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select t2.first_name, t2.last_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id where t1.cost_of_treatment < (select avg(cost_of_treatment) from treatments)
select t2.first_name, t2.last_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id where t1.cost_of_treatment < (select avg(cost_of_treatment) from treatments)
select t1.date_of_treatment, t2.first_name, t2.last_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id
select t1.date_of_treatment, t2.first_name, t2.last_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id
select t1.cost_of_treatment, t2.treatment_type_description from treatments as t1 join treatment_types as t2 on t1.treatment_type_code = t2.treatment_type_code
select t1.cost_of_treatment, t2.treatment_type_description from treatments as t1 join treatment_types as t2 on t1.treatment_type_code = t2.treatment_type_code
select t1.first_name, t1.last_name, t2.size_code from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id
select t1.first_name, t1.last_name, t2.size_code from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id
select t1.first_name, t1.last_name, t2.name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id
select t1.first_name, t1.last_name, t2.name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id
select t1.name, t3.date_of_treatment from dogs as t1 join treatments as t2 on t1.owner_id = t2.dog_id join breeds as t3 on t1.breed_code = t3.breed_code order by t3.breed_code limit 1
select t2.name, t3.date_of_treatment from breeds as t1 join dogs as t2 on t1.breed_code = t2.breed_code join treatments as t3 on t3.treatment_id = t2.treatment_id order by t1.breed_code limit 1
select t1.first_name, t1.last_name, t2.name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id where t1.state = "VA"
select t1.first_name, t1.last_name, t2.name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id where t1.state = "VA"
select date_of_treatment from treatments order by date_of_treatment desc limit 1
select date_of_treatment from treatments order by date_of_treatment asc limit 1
select t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id order by t2.date_of_birth limit 1
select t2.last_name from dogs as t1 join owners as t2 on t1.owner_id = t2.owner_id order by t1.age asc limit 1
select email_address from professionals where state = "HI" or state = "WI"
select email_address from professionals where state = "HI" or state = "WI"
select date_arrived, date_departed from dogs
select date_arrived, date_departed from dogs
select count(*) from treatments
select count(*) from treatments
select count(*) from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id
select count(distinct professional_id) from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id
select first_name, last_name from professionals where city like "%west%"
select first_name, last_name from professionals where city like "%west%"
select first_name, last_name from owners where city within state where name like '%north%'
select first_name, last_name from owners where city within state where name like '%north%'
select count(*) from dogs where age < (select avg(age) from dogs)
select count(*) from dogs where age < (select avg(age) from dogs)
select cost_of_treatment from treatments order by date_of_treatment desc limit 1
select cost_of_treatment from treatments order by date_of_treatment desc limit 1
select count(*) from dogs where owner_id not in ( select dog_id from treatments )
select count(*) from treatments
select count(*) from owners where owner_id not in ( select owner_id from dogs )
select count(*) from owners where owner_id not in ( select owner_id from dogs )
select count(*) from professionals where role_code = 'null'
select count(*) from professionals where role_code = 'null'
select name, age, weight from dogs where owner_id in (select dog_id from dogs where abandoned_yn = 1)
select name, age, weight from dogs where abandoned_yn = 1
select avg(age) from dogs
select avg(age) from dogs
select age from dogs order by age desc limit 1
select age from dogs order by age desc limit 1
select charge_type, charge_amount from charges group by charge_type
select charge_type, charge_amount from charges group by charge_type
select charge_type from charges group by charge_type order by sum(charge_amount) desc limit 1
select charge_amount from charges group by charge_type order by sum(charge_amount) desc limit 1
select email_address, first_name, last_name from professionals
select email_address, first_name, last_name from professionals
select breed_name, sizes from breeds
select distinct breed_name, size_code from dogs
select t2.first_name, t2.last_name, t3.treatment_description from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id join dogs as t3 on t1.dog_id = t3.dog_id
select t2.first_name, t2.last_name, t3.treatment_description from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id join dogs as t3 on t1.treatment_id = t3.treatment_id
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
select name from singer order by birth_year asc limit 1
select name from singer order by birth_year desc limit 1
select citizenship, count(*) from singer group by citizenship
select citizenship, count(*) from singer group by citizenship
select citizenship from singer group by citizenship order by count(*) desc limit 1
select citizenship from singer group by citizenship order by count(*) desc limit 1
select citizenship, max(net_worth_millions) from singer group by citizenship
select t1.name, max(t2.net_worth_millions), t1.citizenship from singer as t1 join song as t2 on t1.singer_id = t2.singer_id group by t1.citizenship
select t2.title from song as t1 join singer as t2 on t1.song_id = t2.song_id order by t1.sales desc limit 1
select title from song order by sales desc limit 1
select distinct t1.name from singer as t1 join song as t2 on t1.singer_id = t2.singer_id where t2.sales > 300000
select distinct t1.name from singer as t1 join song as t2 on t1.singer_id = t2.singer_id where t2.sales > 300000
select t1.name from singer as t1 join song as t2 on t1.singer_id = t2.singer_id group by t2.singer_id having count(*) > 1
select t1.name from singer as t1 join song as t2 on t1.singer_id = t2.singer_id group by t2.singer_id having count(*) > 1
select t1.name, max(t2.highest_position) from singer as t1 join song as t2 on t1.singer_id = t2.singer_id
select t1.name, max(t2.highest_position) from singer as t1 join song as t2 on t1.singer_id = t2.singer_id group by t1.name
select name from singer where singer_id not in (select singer_id from song)
select name from singer where singer_id not in (select singer_id from song)
select citizenship from singer where birth_year < 1945 or birth_year > 1945
select citizenship from singer where birth_year < 1945 intersect select citizenship from singer where birth_year > 1945
