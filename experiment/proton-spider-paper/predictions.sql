SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name ,  country ,  age FROM singer ORDER BY age DESC
SELECT name ,  country ,  age FROM singer ORDER BY age DESC
SELECT avg(age) ,  min(age) ,  max(age) FROM singer WHERE country  =  'France'
SELECT avg(age) ,  min(age) ,  max(age) FROM singer WHERE country  =  'France'
SELECT song_name ,  song_release_year FROM singer ORDER BY age LIMIT 1
SELECT song_name ,  song_release_year FROM singer ORDER BY age LIMIT 1
SELECT DISTINCT country FROM singer WHERE age  >  20
SELECT DISTINCT country FROM singer WHERE age  >  20
SELECT country ,  count(*) FROM singer GROUP BY country
SELECT country ,  count(*) FROM singer GROUP BY country
SELECT song_name FROM singer WHERE age  >  (SELECT avg(age) FROM singer)
SELECT song_name FROM singer WHERE age  >  (SELECT avg(age) FROM singer)
SELECT LOCATION ,  name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION ,  name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT MAX(stadium.Capacity) , AVG(stadium.Average) FROM stadium
SELECT AVG(stadium.Average) , MAX(stadium.Capacity) FROM stadium
SELECT name ,  capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name ,  capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR  =  2014 OR YEAR  =  2015
SELECT count(*) FROM concert WHERE YEAR  =  2014 OR YEAR  =  2015
SELECT stadium.Stadium_ID , COUNT(*) FROM stadium JOIN concert GROUP BY stadium.Stadium_ID
SELECT T2.name ,  count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id GROUP BY T1.stadium_id
SELECT T2.name ,  T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.year  >=  2014 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
select t2.name ,  t2.capacity from concert as t1 join stadium as t2 on t1.stadium_id  =  t2.stadium_id where t1.year  >  2013 group by t2.stadium_id order by count(*) desc limit 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age  >  40 INTERSECT SELECT country FROM singer WHERE age  <  30
SELECT name FROM stadium EXCEPT SELECT T2.name FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.year  =  2014
SELECT name FROM stadium EXCEPT SELECT T2.name FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.year  =  2014
SELECT T2.concert_name ,  T2.theme ,  count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id  =  T2.concert_id GROUP BY T2.concert_id
select t2.concert_name ,  t2.theme ,  count(*) from singer_in_concert as t1 join concert as t2 on t1.concert_id  =  t2.concert_id group by t2.concert_id
SELECT singer.Name , COUNT(*) FROM singer_in_concert JOIN singer GROUP BY singer.Name
SELECT T2.name ,  count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id  =  T2.singer_id GROUP BY T2.singer_id
SELECT T2.name FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id  =  T2.singer_id JOIN concert AS T3 ON T1.concert_id  =  T3.concert_id WHERE T3.year  =  2014
SELECT T2.name FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id  =  T2.singer_id JOIN concert AS T3 ON T1.concert_id  =  T3.concert_id WHERE T3.year  =  2014
SELECT name ,  country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name ,  country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T2.name ,  T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.Year  =  2014 INTERSECT SELECT T2.name ,  T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.Year  =  2015
SELECT T2.name ,  T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.Year  =  2014 INTERSECT SELECT T2.name ,  T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.Year  =  2015
SELECT COUNT(*) FROM concert JOIN stadium ORDER BY stadium.Capacity DESC LIMIT 1
SELECT COUNT(*) FROM concert JOIN stadium ORDER BY stadium.Capacity DESC LIMIT 1
SELECT count(*) FROM pets WHERE weight  >  10
SELECT count(*) FROM pets WHERE weight  >  10
SELECT weight FROM pets ORDER BY pet_age LIMIT 1
SELECT weight FROM pets ORDER BY pet_age LIMIT 1
SELECT MAX(Pets.weight) , MAX(Pets.weight) , Pets.PetType FROM Pets GROUP BY Pets.PetType
SELECT max(weight) ,  petType FROM pets GROUP BY petType
SELECT COUNT(*) FROM Pets JOIN Has_Pet JOIN Student WHERE Student.Age > "value"
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid WHERE T1.age  >  20
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T1.sex  =  'F' AND T3.pettype  =  'dog'
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T1.sex  =  'F' AND T3.pettype  =  'dog'
SELECT count(DISTINCT pettype) FROM pets
SELECT count(DISTINCT pettype) FROM pets
SELECT DISTINCT T1.Fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T3.petid  =  T2.petid WHERE T3.pettype  =  'cat' OR T3.pettype  =  'dog'
SELECT DISTINCT T1.Fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T3.petid  =  T2.petid WHERE T3.pettype  =  'cat' OR T3.pettype  =  'dog'
select t1.fname from student as t1 join has_pet as t2 on t1.stuid  =  t2.stuid join pets as t3 on t3.petid  =  t2.petid where t3.pettype  =  'cat' intersect select t1.fname from student as t1 join has_pet as t2 on t1.stuid  =  t2.stuid join pets as t3 on t3.petid  =  t2.petid where t3.pettype  =  'dog'
SELECT Student.Fname FROM Student JOIN Has_Pet JOIN Pets WHERE Pets.PetType = "value" INTERSECT SELECT Student.Fname FROM Student JOIN Has_Pet WHERE Has_Pet.PetID = "value"
SELECT Student.Major , Student.Age FROM Student WHERE Student.StuID NOT IN ( SELECT Has_Pet.StuID FROM Has_Pet JOIN Pets WHERE Pets.PetType = "value" )
SELECT Student.Major , Student.Age FROM Student EXCEPT SELECT Student.Major , Student.Age FROM Student JOIN Has_Pet JOIN Pets WHERE Pets.PetType = "value"
SELECT Student.StuID FROM Student EXCEPT SELECT Has_Pet.StuID FROM Has_Pet JOIN Pets WHERE Pets.PetType = "value"
SELECT Student.StuID FROM Student EXCEPT SELECT Has_Pet.StuID FROM Has_Pet WHERE Has_Pet.PetID = "value"
SELECT Student.Fname , Student.Age FROM Student JOIN Has_Pet JOIN Pets WHERE Pets.PetType = "value"
SELECT Student.Fname FROM Student JOIN Has_Pet JOIN Pets WHERE Pets.PetType = "value" EXCEPT SELECT Student.Fname FROM Student JOIN Has_Pet JOIN Pets WHERE Pets.PetType = "value"
SELECT pettype ,  weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pettype ,  weight FROM pets ORDER BY pet_age LIMIT 1
SELECT petid ,  weight FROM pets WHERE pet_age  >  1
SELECT petid ,  weight FROM pets WHERE pet_age  >  1
SELECT avg(pet_age) ,  max(pet_age) ,  pettype FROM pets GROUP BY pettype
SELECT avg(pet_age) ,  max(pet_age) ,  pettype FROM pets GROUP BY pettype
SELECT avg(weight) ,  pettype FROM pets GROUP BY pettype
SELECT avg(weight) ,  pettype FROM pets GROUP BY pettype
SELECT DISTINCT T1.fname ,  T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid
SELECT DISTINCT T1.fname ,  T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid
SELECT T2.petid FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid WHERE T1.Lname  =  'Smith'
SELECT T2.petid FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid WHERE T1.Lname  =  'Smith'
SELECT COUNT(*) , Has_Pet.StuID FROM Has_Pet GROUP BY Has_Pet.StuID
SELECT Has_Pet.StuID , COUNT(*) FROM Has_Pet WHERE Has_Pet.StuID != "value" GROUP BY Has_Pet.StuID
SELECT T1.fname ,  T1.sex FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid GROUP BY T1.stuid HAVING count(*)  >  1
SELECT T1.fname ,  T1.sex FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid GROUP BY T1.stuid HAVING count(*)  >  1
SELECT Student.LName FROM Pets JOIN Has_Pet JOIN Student WHERE Pets.pet_age = "value"
SELECT Student.LName FROM Pets JOIN Has_Pet JOIN Student WHERE Pets.pet_age = "value"
select avg(age) from student where stuid not in (select stuid from has_pet)
select avg(age) from student where stuid not in (select stuid from has_pet)
SELECT count(*) FROM CONTINENTS;
SELECT count(*) FROM CONTINENTS;
SELECT T1.ContId ,  T1.Continent ,  count(*) FROM CONTINENTS AS T1 JOIN COUNTRIES AS T2 ON T1.ContId  =  T2.Continent GROUP BY T1.ContId;
SELECT T1.ContId ,  T1.Continent ,  count(*) FROM CONTINENTS AS T1 JOIN COUNTRIES AS T2 ON T1.ContId  =  T2.Continent GROUP BY T1.ContId;
SELECT count(*) FROM COUNTRIES;
SELECT count(*) FROM COUNTRIES;
SELECT T1.FullName ,  T1.Id ,  count(*) FROM CAR_MAKERS AS T1 JOIN MODEL_LIST AS T2 ON T1.Id  =  T2.Maker GROUP BY T1.Id;
SELECT T1.FullName ,  T1.Id ,  count(*) FROM CAR_MAKERS AS T1 JOIN MODEL_LIST AS T2 ON T1.Id  =  T2.Maker GROUP BY T1.Id;
SELECT T1.Model FROM CAR_NAMES AS T1 JOIN CARS_DATA AS T2 ON T1.MakeId  =  T2.Id ORDER BY T2.horsepower ASC LIMIT 1;
SELECT T1.Model FROM CAR_NAMES AS T1 JOIN CARS_DATA AS T2 ON T1.MakeId  =  T2.Id ORDER BY T2.horsepower ASC LIMIT 1;
SELECT T1.model FROM CAR_NAMES AS T1 JOIN CARS_DATA AS T2 ON T1.MakeId  =  T2.Id WHERE T2.Weight  <  (SELECT avg(Weight) FROM CARS_DATA)
SELECT T1.model FROM CAR_NAMES AS T1 JOIN CARS_DATA AS T2 ON T1.MakeId  =  T2.Id WHERE T2.Weight  <  (SELECT avg(Weight) FROM CARS_DATA)
SELECT car_makers.Maker FROM cars_data JOIN car_makers WHERE cars_data.Year = "value"
SELECT car_makers.FullName FROM cars_data JOIN car_makers WHERE cars_data.Year = "value"
SELECT car_names.Make , cars_data.Year FROM cars_data JOIN car_names ORDER BY cars_data.Year ASC LIMIT 1
SELECT car_makers.Maker , cars_data.Year FROM cars_data JOIN car_names JOIN model_list JOIN car_makers WHERE cars_data.Year = "value" ORDER BY cars_data.Year ASC LIMIT 1
SELECT car_names.Model FROM cars_data JOIN car_names WHERE cars_data.Year > "value"
SELECT DISTINCT T1.model FROM MODEL_LIST AS T1 JOIN CAR_NAMES AS T2 ON T1.model  =  T2.model JOIN CARS_DATA AS T3 ON T2.MakeId  =  T3.id WHERE T3.year  >  1980;
SELECT T1.Continent ,  count(*) FROM CONTINENTS AS T1 JOIN COUNTRIES AS T2 ON T1.ContId  =  T2.continent JOIN car_makers AS T3 ON T2.CountryId  =  T3.Country GROUP BY T1.Continent;
SELECT T1.Continent ,  count(*) FROM CONTINENTS AS T1 JOIN COUNTRIES AS T2 ON T1.ContId  =  T2.continent JOIN car_makers AS T3 ON T2.CountryId  =  T3.Country GROUP BY T1.Continent;
SELECT T2.CountryName FROM CAR_MAKERS AS T1 JOIN COUNTRIES AS T2 ON T1.Country  =  T2.CountryId GROUP BY T1.Country ORDER BY Count(*) DESC LIMIT 1;
SELECT T2.CountryName FROM CAR_MAKERS AS T1 JOIN COUNTRIES AS T2 ON T1.Country  =  T2.CountryId GROUP BY T1.Country ORDER BY Count(*) DESC LIMIT 1;
SELECT COUNT(*) , car_makers.FullName FROM car_makers JOIN model_list GROUP BY car_makers.Maker
SELECT Count(*) ,  T2.FullName ,  T2.id FROM MODEL_LIST AS T1 JOIN CAR_MAKERS AS T2 ON T1.Maker  =  T2.Id GROUP BY T2.id;
SELECT cars_data.Accelerate FROM cars_data JOIN car_names WHERE car_names.Model = "value" AND car_names.Make = "value"
SELECT cars_data.Accelerate FROM cars_data JOIN car_names WHERE car_names.Model = "value" AND car_names.Make = "value"
SELECT count(*) FROM CAR_MAKERS AS T1 JOIN COUNTRIES AS T2 ON T1.Country  =  T2.CountryId WHERE T2.CountryName  =  'france';
SELECT count(*) FROM CAR_MAKERS AS T1 JOIN COUNTRIES AS T2 ON T1.Country  =  T2.CountryId WHERE T2.CountryName  =  'france';
SELECT COUNT(*) FROM model_list JOIN car_makers WHERE car_makers.Country = "value"
SELECT count(*) FROM MODEL_LIST AS T1 JOIN CAR_MAKERS AS T2 ON T1.Maker  =  T2.Id JOIN COUNTRIES AS T3 ON T2.Country  =  T3.CountryId WHERE T3.CountryName  =  'usa';
SELECT avg(mpg) FROM CARS_DATA WHERE Cylinders  =  4;
SELECT avg(mpg) FROM CARS_DATA WHERE Cylinders  =  4;
select min(weight) from cars_data where cylinders  =  8 and year  =  1974
select min(weight) from cars_data where cylinders  =  8 and year  =  1974
SELECT car_makers.Maker , model_list.Model FROM car_makers JOIN model_list
SELECT Maker ,  Model FROM MODEL_LIST;
SELECT countries.CountryName , car_makers.Id FROM car_makers JOIN countries
SELECT countries.CountryName , countries.CountryId FROM car_makers JOIN countries
SELECT count(*) FROM CARS_DATA WHERE horsepower  >  150;
SELECT count(*) FROM CARS_DATA WHERE horsepower  >  150;
SELECT AVG(cars_data.Weight) , MAX(cars_data.Weight) , cars_data.Year FROM cars_data GROUP BY cars_data.Year
SELECT avg(Weight) ,  YEAR FROM CARS_DATA GROUP BY YEAR;
SELECT countries.CountryName FROM car_makers JOIN countries WHERE countries.Continent = "value" GROUP BY car_makers.Country HAVING COUNT(*) >= "value"
SELECT countries.CountryName FROM car_makers JOIN countries WHERE countries.Continent = "value" GROUP BY car_makers.Country HAVING COUNT(*) >= "value"
SELECT MAX(cars_data.Horsepower) , MAX(car_names.Make) FROM cars_data JOIN car_names WHERE cars_data.Cylinders = "value"
SELECT MAX(car_names.Make) , MAX(cars_data.Horsepower) FROM cars_data JOIN car_names WHERE cars_data.Cylinders = "value"
SELECT T1.Model FROM CAR_NAMES AS T1 JOIN CARS_DATA AS T2 ON T1.MakeId  =  T2.Id ORDER BY T2.mpg DESC LIMIT 1;
select t1.model from car_names as t1 join cars_data as t2 on t1.makeid  =  t2.id order by t2.mpg desc limit 1;
SELECT avg(horsepower) FROM CARS_DATA WHERE YEAR  <  1980;
select avg(horsepower) from cars_data where year  <  1980;
SELECT AVG(cars_data.Edispl) FROM cars_data JOIN car_names WHERE car_names.Make = "value"
SELECT avg(T2.edispl) FROM CAR_NAMES AS T1 JOIN CARS_DATA AS T2 ON T1.MakeId  =  T2.Id WHERE T1.Model  =  'volvo';
SELECT max(Accelerate) ,  Cylinders FROM CARS_DATA GROUP BY Cylinders;
SELECT max(Accelerate) ,  Cylinders FROM CARS_DATA GROUP BY Cylinders;
SELECT Model FROM CAR_NAMES GROUP BY Model ORDER BY count(*) DESC LIMIT 1;
SELECT Model FROM CAR_NAMES GROUP BY Model ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM CARS_DATA WHERE Cylinders  >  4;
SELECT count(*) FROM CARS_DATA WHERE Cylinders  >  4;
SELECT count(*) FROM CARS_DATA WHERE YEAR  =  1980;
SELECT count(*) FROM CARS_DATA WHERE YEAR  =  1980;
SELECT count(*) FROM CAR_MAKERS AS T1 JOIN MODEL_LIST AS T2 ON T1.Id  =  T2.Maker WHERE T1.FullName  =  'American Motor Company';
SELECT count(*) FROM CAR_MAKERS AS T1 JOIN MODEL_LIST AS T2 ON T1.Id  =  T2.Maker WHERE T1.FullName  =  'American Motor Company';
SELECT car_makers.FullName , car_makers.Id , COUNT(*) FROM car_makers JOIN model_list GROUP BY model_list.Maker HAVING COUNT(*) > "value"
SELECT T1.FullName ,  T1.Id FROM CAR_MAKERS AS T1 JOIN MODEL_LIST AS T2 ON T1.Id  =  T2.Maker GROUP BY T1.Id HAVING count(*)  >  3;
SELECT model_list.Model FROM model_list JOIN car_names JOIN car_makers WHERE car_makers.FullName = "value" OR cars_data.Weight > "value"
SELECT model_list.Model FROM model_list JOIN car_makers JOIN cars_data WHERE car_makers.FullName = "value" OR cars_data.Weight > "value"
SELECT cars_data.Year FROM cars_data WHERE cars_data.Weight < "value" INTERSECT SELECT cars_data.Year FROM cars_data WHERE cars_data.Weight > "value"
select distinct year from cars_data where weight between 3000 and 4000;
SELECT T1.horsepower FROM CARS_DATA AS T1 ORDER BY T1.accelerate DESC LIMIT 1;
SELECT T1.horsepower FROM CARS_DATA AS T1 ORDER BY T1.accelerate DESC LIMIT 1;
SELECT cars_data.Cylinders FROM cars_data JOIN car_names WHERE cars_data.Accelerate = "value" ORDER BY cars_data.Cylinders ASC LIMIT 1
SELECT cars_data.Cylinders FROM cars_data JOIN car_names WHERE cars_data.Accelerate = "value" ORDER BY cars_data.Cylinders ASC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE cars_data.Accelerate > ( SELECT MAX(cars_data.Accelerate) FROM cars_data ) ORDER BY cars_data.Horsepower DESC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE cars_data.Accelerate > ( SELECT MAX(cars_data.Accelerate) FROM cars_data ) ORDER BY cars_data.Horsepower DESC LIMIT 1
SELECT COUNT(*) FROM ( SELECT car_makers.Country FROM car_makers GROUP BY car_makers.Country HAVING COUNT(*) > "value" )
SELECT COUNT(*) FROM ( SELECT car_makers.Country FROM car_makers GROUP BY car_makers.Country HAVING COUNT(*) > "value" )
SELECT COUNT(*) FROM CARS_DATA WHERE Cylinders  >  6;
SELECT COUNT(*) FROM CARS_DATA WHERE Cylinders  >  6;
SELECT T1.Model FROM CAR_NAMES AS T1 JOIN CARS_DATA AS T2 ON T1.MakeId  =  T2.Id WHERE T2.Cylinders  =  4 ORDER BY T2.horsepower DESC LIMIT 1;
SELECT T1.Model FROM CAR_NAMES AS T1 JOIN CARS_DATA AS T2 ON T1.MakeId  =  T2.Id WHERE T2.Cylinders  =  4 ORDER BY T2.horsepower DESC LIMIT 1;
SELECT car_names.MakeId , car_names.Make FROM cars_data JOIN car_names WHERE cars_data.Cylinders > "value" EXCEPT SELECT car_names.MakeId , car_names.Make FROM cars_data JOIN car_names WHERE cars_data.Cylinders > "value"
SELECT car_names.MakeId , car_names.Make FROM cars_data JOIN car_names WHERE cars_data.Cylinders < "value"
select max(mpg) from cars_data where cylinders  =  8 or year  <  1980
select max(mpg) from cars_data where cylinders  =  8 or year  <  1980
SELECT model_list.Model FROM model_list JOIN car_names JOIN car_makers WHERE cars_data.Weight < "value" EXCEPT SELECT model_list.Model FROM model_list JOIN car_names JOIN car_makers WHERE car_makers.FullName = "value"
SELECT model_list.Model FROM model_list JOIN car_names WHERE cars_data.Weight < "value" EXCEPT SELECT model_list.Model FROM model_list JOIN car_names JOIN car_makers WHERE car_names.Make = "value"
SELECT countries.CountryName FROM countries WHERE countries.CountryId NOT IN ( SELECT car_makers.Country FROM car_makers )
SELECT countries.CountryName FROM countries WHERE countries.CountryId NOT IN ( SELECT car_makers.Country FROM car_makers )
SELECT car_makers.Id , car_makers.Maker FROM car_makers JOIN model_list GROUP BY model_list.Maker HAVING COUNT(*) >= "value" INTERSECT SELECT car_makers.Id , car_makers.Maker FROM car_makers JOIN model_list GROUP BY model_list.Maker HAVING COUNT(*) > "value"
SELECT car_makers.Id , car_makers.Maker FROM model_list JOIN car_makers GROUP BY car_makers.Id HAVING COUNT(*) >= "value" INTERSECT SELECT car_makers.Id , car_makers.Maker FROM model_list JOIN car_makers GROUP BY model_list.Maker HAVING COUNT(*) > "value"
SELECT countries.CountryId , countries.CountryName FROM car_makers JOIN countries GROUP BY car_makers.Country HAVING COUNT(*) > "value" UNION SELECT countries.CountryId , countries.CountryName FROM car_makers JOIN model_list JOIN countries JOIN model_list JOIN countries WHERE model_list.Model = "value"
SELECT countries.CountryId , countries.CountryName FROM car_makers JOIN countries GROUP BY car_makers.Country HAVING COUNT(*) > "value" UNION SELECT countries.CountryId , countries.CountryName FROM car_makers JOIN countries WHERE car_makers.Maker = "value"
SELECT Country FROM AIRLINES WHERE Airline  =  "JetBlue Airways"
SELECT Country FROM AIRLINES WHERE Airline  =  "JetBlue Airways"
SELECT Abbreviation FROM AIRLINES WHERE Airline  =  "JetBlue Airways"
SELECT Abbreviation FROM AIRLINES WHERE Airline  =  "JetBlue Airways"
SELECT Airline ,  Abbreviation FROM AIRLINES WHERE Country  =  "USA"
SELECT Airline ,  Abbreviation FROM AIRLINES WHERE Country  =  "USA"
SELECT AirportCode ,  AirportName FROM AIRPORTS WHERE city  =  "Anthony"
SELECT AirportCode ,  AirportName FROM AIRPORTS WHERE city  =  "Anthony"
SELECT count(*) FROM AIRLINES
SELECT count(*) FROM AIRLINES
SELECT count(*) FROM AIRPORTS
SELECT count(*) FROM AIRPORTS
SELECT count(*) FROM FLIGHTS
SELECT count(*) FROM FLIGHTS
SELECT Airline FROM AIRLINES WHERE Abbreviation  =  "UAL"
SELECT Airline FROM AIRLINES WHERE Abbreviation  =  "UAL"
SELECT count(*) FROM AIRLINES WHERE Country  =  "USA"
SELECT count(*) FROM AIRLINES WHERE Country  =  "USA"
SELECT City ,  Country FROM AIRPORTS WHERE AirportName  =  "Alton"
SELECT City ,  Country FROM AIRPORTS WHERE AirportName  =  "Alton"
SELECT AirportName FROM AIRPORTS WHERE AirportCode  =  "AKO"
SELECT AirportName FROM AIRPORTS WHERE AirportCode  =  "AKO"
SELECT AirportName FROM AIRPORTS WHERE City = "Aberdeen"
SELECT AirportName FROM AIRPORTS WHERE City = "Aberdeen"
SELECT count(*) FROM FLIGHTS WHERE SourceAirport  =  "APG"
SELECT count(*) FROM FLIGHTS WHERE SourceAirport  =  "APG"
SELECT count(*) FROM FLIGHTS WHERE DestAirport  =  "ATO"
SELECT count(*) FROM FLIGHTS WHERE DestAirport  =  "ATO"
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.SourceAirport  =  T2.AirportCode WHERE T2.City  =  "Aberdeen"
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.SourceAirport  =  T2.AirportCode WHERE T2.City  =  "Aberdeen"
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.City  =  "Aberdeen"
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.City  =  "Aberdeen"
SELECT COUNT(*) FROM airports JOIN flights WHERE airports.City = "value" AND airports.AirportName = "value"
SELECT COUNT(*) FROM airports JOIN flights WHERE airports.City = "value" AND airports.AirportName = "value"
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRLINES AS T2 ON T1.Airline  =  T2.uid WHERE T2.Airline = "JetBlue Airways"
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRLINES AS T2 ON T1.Airline  =  T2.uid WHERE T2.Airline = "JetBlue Airways"
SELECT COUNT(*) FROM airports JOIN flights JOIN airlines WHERE airlines.Airline = "value" AND airlines.Airline = "value"
SELECT COUNT(*) FROM airports JOIN flights JOIN airlines WHERE airlines.Airline = "value" AND airlines.Airline = "value"
SELECT COUNT(*) FROM airports JOIN flights JOIN airlines WHERE airlines.Airline = "value" AND airlines.Airline = "value"
SELECT COUNT(*) FROM airports JOIN flights JOIN airlines WHERE airlines.Airline = "value" AND airports.AirportName = "value"
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.DestAirport  =  T2.AirportCode JOIN AIRLINES AS T3 ON T3.uid  =  T1.Airline WHERE T2.City  =  "Aberdeen" AND T3.Airline  =  "United Airlines"
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.DestAirport  =  T2.AirportCode JOIN AIRLINES AS T3 ON T3.uid  =  T1.Airline WHERE T2.City  =  "Aberdeen" AND T3.Airline  =  "United Airlines"
SELECT T1.City FROM AIRPORTS AS T1 JOIN FLIGHTS AS T2 ON T1.AirportCode  =  T2.DestAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM AIRPORTS AS T1 JOIN FLIGHTS AS T2 ON T1.AirportCode  =  T2.DestAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT airports.City FROM airports JOIN flights GROUP BY flights.SourceAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM AIRPORTS AS T1 JOIN FLIGHTS AS T2 ON T1.AirportCode  =  T2.SourceAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM AIRPORTS AS T1 JOIN FLIGHTS AS T2 ON T1.AirportCode  =  T2.DestAirport OR T1.AirportCode  =  T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM AIRPORTS AS T1 JOIN FLIGHTS AS T2 ON T1.AirportCode  =  T2.DestAirport OR T1.AirportCode  =  T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM AIRPORTS AS T1 JOIN FLIGHTS AS T2 ON T1.AirportCode  =  T2.DestAirport OR T1.AirportCode  =  T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) LIMIT 1
SELECT T1.AirportCode FROM AIRPORTS AS T1 JOIN FLIGHTS AS T2 ON T1.AirportCode  =  T2.DestAirport OR T1.AirportCode  =  T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) LIMIT 1
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid  =  T2.Airline GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid  =  T2.Airline GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT airlines.Abbreviation , airlines.Country FROM airlines JOIN flights GROUP BY flights.Airline ORDER BY COUNT(*) ASC LIMIT 1
SELECT airlines.Abbreviation , airports.Country FROM airlines JOIN airports JOIN flights JOIN flights GROUP BY airlines.Abbreviation ORDER BY COUNT(*) ASC LIMIT 1
SELECT airlines.Airline FROM airports JOIN flights JOIN airlines WHERE flights.SourceAirport = "value"
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid  =  T2.Airline WHERE T2.SourceAirport  =  "AHD"
SELECT airlines.Airline FROM airports JOIN flights JOIN airlines WHERE flights.DestAirport = "value"
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid  =  T2.Airline WHERE T2.DestAirport  =  "AHD"
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid  =  T2.Airline WHERE T2.SourceAirport  =  "APG" INTERSECT SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid  =  T2.Airline WHERE T2.SourceAirport  =  "CVO"
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid  =  T2.Airline WHERE T2.SourceAirport  =  "APG" INTERSECT SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid  =  T2.Airline WHERE T2.SourceAirport  =  "CVO"
SELECT airlines.Airline FROM airports JOIN flights WHERE flights.SourceAirport = "value" EXCEPT SELECT airlines.Airline FROM airlines WHERE flights.SourceAirport = "value"
SELECT airlines.Airline FROM airports JOIN flights JOIN airports JOIN airlines JOIN flights WHERE flights.SourceAirport = "value" EXCEPT SELECT airlines.Airline FROM airlines WHERE airlines.Airline = "value"
SELECT airlines.Airline FROM airlines JOIN flights GROUP BY airlines.Airline HAVING COUNT(*) >= "value"
SELECT airlines.Airline FROM flights JOIN airlines GROUP BY airlines.Airline HAVING COUNT(*) >= "value"
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid  =  T2.Airline GROUP BY T1.Airline HAVING count(*)  <  200
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid  =  T2.Airline GROUP BY T1.Airline HAVING count(*)  <  200
SELECT T1.FlightNo FROM FLIGHTS AS T1 JOIN AIRLINES AS T2 ON T2.uid  =  T1.Airline WHERE T2.Airline  =  "United Airlines"
SELECT T1.FlightNo FROM FLIGHTS AS T1 JOIN AIRLINES AS T2 ON T2.uid  =  T1.Airline WHERE T2.Airline  =  "United Airlines"
SELECT FlightNo FROM FLIGHTS WHERE SourceAirport  =  "APG"
SELECT FlightNo FROM FLIGHTS WHERE SourceAirport  =  "APG"
SELECT flights.FlightNo FROM airports JOIN flights WHERE airports.AirportName = "value"
SELECT FlightNo FROM FLIGHTS WHERE DestAirport  =  "APG"
SELECT T1.FlightNo FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.SourceAirport   =  T2.AirportCode WHERE T2.City  =  "Aberdeen"
SELECT T1.FlightNo FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.SourceAirport   =  T2.AirportCode WHERE T2.City  =  "Aberdeen"
SELECT T1.FlightNo FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.DestAirport   =  T2.AirportCode WHERE T2.City  =  "Aberdeen"
SELECT T1.FlightNo FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.DestAirport   =  T2.AirportCode WHERE T2.City  =  "Aberdeen"
SELECT count(*) FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.city  =  "Aberdeen" OR T2.city  =  "Abilene"
SELECT count(*) FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.city  =  "Aberdeen" OR T2.city  =  "Abilene"
SELECT airports.AirportName FROM airports WHERE airports.AirportCode NOT IN ( SELECT flights.SourceAirport FROM flights )
SELECT airports.AirportName FROM airports EXCEPT SELECT airports.AirportName FROM airports JOIN flights
SELECT count(*) FROM employee
SELECT count(*) FROM employee
SELECT name FROM employee ORDER BY age
SELECT name FROM employee ORDER BY age
SELECT count(*) ,  city FROM employee GROUP BY city
SELECT count(*) ,  city FROM employee GROUP BY city
SELECT city FROM employee WHERE age  <  30 GROUP BY city HAVING count(*)  >  1
SELECT city FROM employee WHERE age  <  30 GROUP BY city HAVING count(*)  >  1
SELECT count(*) ,  LOCATION FROM shop GROUP BY LOCATION
SELECT count(*) ,  LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name ,  district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT manager_name ,  district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT min(Number_products) ,  max(Number_products) FROM shop
SELECT min(Number_products) ,  max(Number_products) FROM shop
SELECT name ,  LOCATION ,  district FROM shop ORDER BY number_products DESC
SELECT name ,  LOCATION ,  district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products  >  (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products  >  (SELECT avg(number_products) FROM shop)
SELECT t1.name FROM employee AS t1 JOIN evaluation AS t2 ON t1.Employee_ID  =  t2.Employee_ID GROUP BY t2.Employee_ID ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM employee AS t1 JOIN evaluation AS t2 ON t1.Employee_ID  =  t2.Employee_ID GROUP BY t2.Employee_ID ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM employee AS t1 JOIN evaluation AS t2 ON t1.Employee_ID  =  t2.Employee_ID ORDER BY t2.bonus DESC LIMIT 1
SELECT t1.name FROM employee AS t1 JOIN evaluation AS t2 ON t1.Employee_ID  =  t2.Employee_ID ORDER BY t2.bonus DESC LIMIT 1
SELECT name FROM employee WHERE Employee_ID NOT IN (SELECT Employee_ID FROM evaluation)
SELECT name FROM employee WHERE Employee_ID NOT IN (SELECT Employee_ID FROM evaluation)
SELECT t2.name FROM hiring AS t1 JOIN shop AS t2 ON t1.shop_id  =  t2.shop_id GROUP BY t1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT t2.name FROM hiring AS t1 JOIN shop AS t2 ON t1.shop_id  =  t2.shop_id GROUP BY t1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT COUNT(*) , shop.Name FROM hiring JOIN shop GROUP BY hiring.Shop_ID
SELECT count(*) ,  t2.name FROM hiring AS t1 JOIN shop AS t2 ON t1.shop_id  =  t2.shop_id GROUP BY t2.name
SELECT sum(bonus) FROM evaluation
SELECT sum(bonus) FROM evaluation
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE Number_products  <  3000 INTERSECT SELECT district FROM shop WHERE Number_products  >  10000
SELECT district FROM shop WHERE Number_products  <  3000 INTERSECT SELECT district FROM shop WHERE Number_products  >  10000
SELECT count(DISTINCT LOCATION) FROM shop
SELECT count(DISTINCT LOCATION) FROM shop
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id ,  document_name ,  document_description FROM Documents
SELECT document_id ,  document_name ,  document_description FROM Documents
SELECT document_name ,  template_id FROM Documents WHERE Document_Description LIKE "%w%"
SELECT document_name ,  template_id FROM Documents WHERE Document_Description LIKE "%w%"
SELECT document_id ,  template_id ,  Document_Description FROM Documents WHERE document_name  =  "Robbin CV"
SELECT document_id ,  template_id ,  Document_Description FROM Documents WHERE document_name  =  "Robbin CV"
SELECT count(DISTINCT template_id) FROM Documents
SELECT count(DISTINCT template_id) FROM Documents
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID  =  T2.Template_ID WHERE T2.Template_Type_Code  =  'PPT'
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID  =  T2.Template_ID WHERE T2.Template_Type_Code  =  'PPT'
SELECT template_id ,  count(*) FROM Documents GROUP BY template_id
SELECT template_id ,  count(*) FROM Documents GROUP BY template_id
SELECT T1.template_id ,  T2.Template_Type_Code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id  =  T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id ,  T2.Template_Type_Code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id  =  T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*)  >  1
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*)  >  1
SELECT template_id FROM Templates EXCEPT SELECT template_id FROM Documents
SELECT template_id FROM Templates EXCEPT SELECT template_id FROM Documents
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates
SELECT template_id ,  version_number ,  template_type_code FROM Templates
SELECT template_id ,  version_number ,  template_type_code FROM Templates
SELECT DISTINCT template_type_code FROM Templates
SELECT DISTINCT template_type_code FROM Templates
SELECT template_id FROM Templates WHERE template_type_code  =  "PP" OR template_type_code  =  "PPT"
SELECT template_id FROM Templates WHERE template_type_code  =  "PP" OR template_type_code  =  "PPT"
SELECT count(*) FROM Templates WHERE template_type_code  =  "CV"
SELECT count(*) FROM Templates WHERE template_type_code  =  "CV"
SELECT version_number ,  template_type_code FROM Templates WHERE version_number  >  5
SELECT version_number ,  template_type_code FROM Templates WHERE version_number  >  5
SELECT template_type_code ,  count(*) FROM Templates GROUP BY template_type_code
SELECT template_type_code ,  count(*) FROM Templates GROUP BY template_type_code
SELECT template_type_code FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*)  <  3
SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*)  <  3
SELECT Templates.Version_Number , Templates.Template_Type_Code FROM Templates ORDER BY Templates.Version_Number ASC LIMIT 1
SELECT Templates.Version_Number , Templates.Template_Type_Code FROM Templates ORDER BY Templates.Version_Number ASC LIMIT 1
SELECT T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id  =  T2.template_id WHERE T2.document_name  =  "Data base"
SELECT T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id  =  T2.template_id WHERE T2.document_name  =  "Data base"
SELECT T2.document_name FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id  =  T2.template_id WHERE T1.template_type_code  =  "BK"
SELECT T2.document_name FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id  =  T2.template_id WHERE T1.template_type_code  =  "BK"
SELECT Templates.Template_Type_Code , COUNT(*) FROM Templates GROUP BY Templates.Template_Type_Code
SELECT T1.template_type_code ,  count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id  =  T2.template_id GROUP BY T1.template_type_code
SELECT Templates.Template_Type_Code FROM Templates GROUP BY Templates.Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Templates.Template_Type_Code FROM Templates GROUP BY Templates.Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM Templates EXCEPT SELECT template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id  =  T2.template_id
SELECT template_type_code FROM Templates EXCEPT SELECT template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id  =  T2.template_id
SELECT template_type_code ,  template_type_description FROM Ref_template_types
SELECT template_type_code ,  template_type_description FROM Ref_template_types
SELECT template_type_description FROM Ref_template_types WHERE template_type_code  =  "AD"
SELECT template_type_description FROM Ref_template_types WHERE template_type_code  =  "AD"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description  =  "Book"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description  =  "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code  = T2.template_type_code JOIN Documents AS T3 ON T2.Template_ID  =  T3.template_ID
SELECT DISTINCT T1.template_type_description FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code  = T2.template_type_code JOIN Documents AS T3 ON T2.Template_ID  =  T3.template_ID
SELECT T2.template_id FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code  = T2.template_type_code WHERE T1.template_type_description  =  "Presentation"
SELECT T2.template_id FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code  = T2.template_type_code WHERE T1.template_type_description  =  "Presentation"
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_ID  =  T2.document_ID WHERE T2.document_name  =  'Summer Show'
SELECT count(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_ID  =  T2.document_ID WHERE T2.document_name  =  'Summer Show'
select other_details from paragraphs where paragraph_text like 'korea'
select other_details from paragraphs where paragraph_text like 'korea'
SELECT T1.paragraph_id ,   T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id  =  T2.document_id WHERE T2.Document_Name  =  'Welcome to NY'
SELECT T1.paragraph_id ,   T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id  =  T2.document_id WHERE T2.Document_Name  =  'Welcome to NY'
SELECT T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id  =  T2.document_id WHERE T2.document_name  =  "Customer reviews"
SELECT T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id  =  T2.document_id WHERE T2.document_name  =  "Customer reviews"
SELECT Paragraphs.Document_ID , COUNT(*) FROM Paragraphs GROUP BY Paragraphs.Document_ID ORDER BY COUNT(*) ASC
SELECT Paragraphs.Document_ID , COUNT(*) FROM Paragraphs GROUP BY Paragraphs.Document_ID ORDER BY COUNT(*) ASC
SELECT T1.document_id ,  T2.document_name ,  count(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id  =  T2.document_id GROUP BY T1.document_id
SELECT T1.document_id ,  T2.document_name ,  count(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id  =  T2.document_id GROUP BY T1.document_id
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING count(*)  >=  2
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING count(*)  >=  2
SELECT T1.document_id ,  T2.document_name FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id  =  T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_id ,  T2.document_name FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id  =  T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM Paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM Paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2
SELECT document_id FROM Paragraphs WHERE paragraph_text  =  'Brazil' INTERSECT SELECT document_id FROM Paragraphs WHERE paragraph_text  =  'Ireland'
SELECT document_id FROM Paragraphs WHERE paragraph_text  =  'Brazil' INTERSECT SELECT document_id FROM Paragraphs WHERE paragraph_text  =  'Ireland'
SELECT count(*) FROM teacher
SELECT count(*) FROM teacher
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Age ,  Hometown FROM teacher
SELECT Age ,  Hometown FROM teacher
select name from teacher where hometown != "little lever urban district"
select name from teacher where hometown != "little lever urban district"
SELECT Name FROM teacher WHERE Age  =  32 OR Age  =  33
SELECT Name FROM teacher WHERE Age  =  32 OR Age  =  33
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown ,  COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown ,  COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*)  >=  2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*)  >=  2
SELECT T3.Name ,  T2.Course FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID  =  T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID  =  T3.Teacher_ID
SELECT T3.Name ,  T2.Course FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID  =  T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID  =  T3.Teacher_ID
SELECT T3.Name ,  T2.Course FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID  =  T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID  =  T3.Teacher_ID ORDER BY T3.Name
SELECT T3.Name ,  T2.Course FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID  =  T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID  =  T3.Teacher_ID ORDER BY T3.Name
SELECT T3.Name FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID  =  T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID  =  T3.Teacher_ID WHERE T2.Course  =  "Math"
SELECT T3.Name FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID  =  T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID  =  T3.Teacher_ID WHERE T2.Course  =  "Math"
SELECT teacher.Name , COUNT(*) FROM course_arrange JOIN teacher GROUP BY course_arrange.Teacher_ID
SELECT teacher.Name , COUNT(*) FROM course_arrange JOIN teacher GROUP BY course_arrange.Teacher_ID
SELECT teacher.Name FROM course_arrange JOIN teacher GROUP BY course_arrange.Teacher_ID HAVING COUNT(*) >= "value"
SELECT teacher.Name FROM course_arrange JOIN teacher GROUP BY course_arrange.Teacher_ID HAVING COUNT(*) >= "value"
SELECT Name FROM teacher WHERE Teacher_id NOT IN (SELECT Teacher_id FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_id NOT IN (SELECT Teacher_id FROM course_arrange)
SELECT count(*) FROM visitor WHERE age  <  30
SELECT visitor.Name FROM visitor WHERE visitor.Level_of_membership > "value" ORDER BY visitor.Name DESC
SELECT AVG(visitor.Age) FROM visitor WHERE visitor.Level_of_membership > "value"
SELECT visitor.Name , visitor.Level_of_membership FROM visitor WHERE visitor.Age > "value" ORDER BY visitor.Age ASC
SELECT museum_id ,  name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(num_of_staff) FROM museum WHERE open_year  <  2009
SELECT Num_of_Staff ,  Open_Year FROM museum WHERE name  =  'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff  >  (SELECT min(num_of_staff) FROM museum WHERE open_year  >  2010)
SELECT t1.id ,  t1.name ,  t1.age FROM visitor AS t1 JOIN visit AS t2 ON t1.id  =  t2.visitor_id GROUP BY t1.id HAVING count(*)  >  1
SELECT t2.visitor_id ,  t1.name ,  t1.Level_of_membership FROM visitor AS t1 JOIN visit AS t2 ON t1.id  =  t2.visitor_id GROUP BY t2.visitor_id ORDER BY sum(t2.Total_spent) DESC LIMIT 1
SELECT t2.Museum_ID ,  t1.name FROM museum AS t1 JOIN visit AS t2 ON t1.Museum_ID  =  t2.Museum_ID GROUP BY t2.Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE Museum_ID NOT IN (SELECT museum_id FROM visit)
SELECT visitor.Name , visitor.Age FROM visitor JOIN visit GROUP BY visit.visitor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT avg(num_of_ticket) ,  max(num_of_ticket) FROM visit
SELECT sum(t2.Total_spent) FROM visitor AS t1 JOIN visit AS t2 ON t1.id  =  t2.visitor_id WHERE t1.Level_of_membership  =  1
SELECT t1.name FROM visitor AS t1 JOIN visit AS t2 ON t1.id  =  t2.visitor_id JOIN museum AS t3 ON t3.Museum_ID  =  t2.Museum_ID WHERE t3.open_year  <  2009 INTERSECT SELECT t1.name FROM visitor AS t1 JOIN visit AS t2 ON t1.id  =  t2.visitor_id JOIN museum AS t3 ON t3.Museum_ID  =  t2.Museum_ID WHERE t3.open_year  >  2011
SELECT COUNT(*) FROM visitor WHERE visitor.ID NOT IN ( SELECT visit.visitor_ID FROM visit JOIN museum WHERE museum.Open_Year > "value" )
SELECT count(*) FROM museum WHERE open_year  >  2013 OR open_year  <  2008
SELECT count(*) FROM players
SELECT count(*) FROM players
SELECT count(*) FROM matches
SELECT count(*) FROM matches
SELECT first_name ,  birth_date FROM players WHERE country_code  =  'USA'
SELECT first_name ,  birth_date FROM players WHERE country_code  =  'USA'
SELECT avg(loser_age) ,  avg(winner_age) FROM matches
SELECT avg(loser_age) ,  avg(winner_age) FROM matches
SELECT AVG(matches.winner_rank_points) FROM matches
SELECT avg(winner_rank) FROM matches
SELECT MAX(matches.loser_rank_points) FROM matches
SELECT MAX(matches.loser_rank_points) FROM matches
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT matches.tourney_name FROM matches GROUP BY matches.tourney_id HAVING COUNT(*) > "value"
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*)  >  10
SELECT players.last_name FROM players JOIN matches WHERE matches.year = "value" INTERSECT SELECT matches.winner_name FROM players JOIN matches WHERE matches.year = "value"
SELECT winner_name FROM matches WHERE YEAR  =  2013 INTERSECT SELECT winner_name FROM matches WHERE YEAR  =  2016
SELECT count(*) FROM matches WHERE YEAR  =  2013 OR YEAR  =  2016
SELECT count(*) FROM matches WHERE YEAR  =  2013 OR YEAR  =  2016
SELECT T1.country_code ,  T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.tourney_name  =  'WTA Championships' INTERSECT SELECT T1.country_code ,  T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.tourney_name  =  'Australian Open'
SELECT T1.country_code ,  T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.tourney_name  =  'WTA Championships' INTERSECT SELECT T1.country_code ,  T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.tourney_name  =  'Australian Open'
SELECT players.first_name , players.country_code FROM players ORDER BY players.birth_date DESC LIMIT 1
SELECT players.first_name , players.country_code FROM players ORDER BY players.birth_date DESC LIMIT 1
SELECT first_name ,  last_name FROM players ORDER BY birth_date
SELECT first_name ,  last_name FROM players ORDER BY birth_date
SELECT first_name ,  last_name FROM players WHERE hand  =  'L' ORDER BY birth_date
SELECT first_name ,  last_name FROM players WHERE hand  =  'L' ORDER BY birth_date
SELECT players.first_name , players.country_code FROM players JOIN rankings GROUP BY rankings.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT players.first_name , players.country_code FROM players JOIN rankings GROUP BY rankings.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT matches.winner_name , matches.winner_rank_points FROM matches GROUP BY matches.winner_rank ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name ,  winner_rank_points FROM matches GROUP BY winner_name ORDER BY count(*) DESC LIMIT 1
SELECT winner_name FROM matches WHERE tourney_name  =  'Australian Open' ORDER BY winner_rank_points DESC LIMIT 1
SELECT winner_name FROM matches WHERE tourney_name  =  'Australian Open' ORDER BY winner_rank_points DESC LIMIT 1
SELECT winner_name ,  loser_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT winner_name ,  loser_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT players.first_name , AVG(rankings.ranking_points) FROM players JOIN rankings GROUP BY players.first_name
SELECT avg(ranking) ,  T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.first_name
SELECT sum(ranking_points) ,  T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.first_name
SELECT sum(ranking_points) ,  T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.first_name
SELECT count(*) ,  country_code FROM players GROUP BY country_code
SELECT count(*) ,  country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*)  >  50
SELECT country_code FROM players GROUP BY country_code HAVING count(*)  >  50
SELECT COUNT(*) , rankings.ranking_date FROM rankings GROUP BY rankings.ranking_date
SELECT sum(tours) ,  ranking_date FROM rankings GROUP BY ranking_date
SELECT count(*) ,  YEAR FROM matches GROUP BY YEAR
SELECT count(*) ,  YEAR FROM matches GROUP BY YEAR
SELECT DISTINCT winner_name ,  winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT DISTINCT winner_name ,  winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT COUNT(matches.winner_entry) FROM matches WHERE matches.tourney_name = "value" AND matches.winner_hand = "value"
SELECT COUNT(*) FROM matches WHERE matches.tourney_name = "value" AND matches.winner_hand = "value"
SELECT T1.first_name ,  T1.country_code ,  T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name ,  T1.country_code ,  T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT count(*) ,  hand FROM players GROUP BY hand
SELECT count(*) ,  hand FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship  =  'Captured'
SELECT name ,  tonnage FROM ship ORDER BY name DESC
SELECT battle.name , battle.date , battle.result FROM battle
SELECT MAX(death.killed) , MIN(death.killed) , death.caused_by_ship_id FROM death GROUP BY death.caused_by_ship_id
SELECT AVG(death.injured) , * FROM death GROUP BY *
SELECT T1.killed ,  T1.injured FROM death AS T1 JOIN ship AS t2 ON T1.caused_by_ship_id  =  T2.id WHERE T2.tonnage  =  't'
SELECT name ,  RESULT FROM battle WHERE bulgarian_commander != 'Boril'
SELECT DISTINCT T1.id ,  T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id  =  T2.lost_in_battle WHERE T2.ship_type  =  'Brig'
SELECT battle.id , battle.name FROM battle JOIN death GROUP BY battle.id HAVING SUM(death.killed) > "value"
SELECT ship.id , ship.name FROM ship JOIN death GROUP BY death.caused_by_ship_id ORDER BY SUM(death.injured) DESC LIMIT 1
SELECT name FROM battle WHERE bulgarian_commander  =  'Kaloyan' AND latin_commander  =  'Baldwin I'
SELECT count(DISTINCT RESULT) FROM battle
SELECT count(*) FROM battle WHERE id NOT IN ( SELECT lost_in_battle FROM ship WHERE tonnage  =  '225' );
SELECT T1.name ,  T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id  =  T2.lost_in_battle WHERE T2.name  =  'Lettice' INTERSECT SELECT T1.name ,  T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id  =  T2.lost_in_battle WHERE T2.name  =  'HMS Atalanta'
SELECT battle.name , battle.result , battle.bulgarian_commander FROM battle WHERE battle.id NOT IN ( SELECT ship.lost_in_battle FROM ship WHERE ship.location = "value" )
SELECT note FROM death WHERE note LIKE '%East%'
SELECT Addresses.line_1 FROM Addresses WHERE Addresses.line_2 BETWEEN "value" AND "value"
SELECT line_1 ,  line_2 FROM addresses
SELECT count(*) FROM Courses
SELECT count(*) FROM Courses
SELECT course_description FROM Courses WHERE course_name  =  'math'
SELECT course_description FROM Courses WHERE course_name  =  'math'
SELECT zip_postcode FROM Addresses WHERE city  =  'Port Chelsea'
SELECT zip_postcode FROM Addresses WHERE city  =  'Port Chelsea'
SELECT T2.department_name ,  T1.department_id FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id  =  T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
select t2.department_name ,  t1.department_id from degree_programs as t1 join departments as t2 on t1.department_id  =  t2.department_id group by t1.department_id order by count(*) desc limit 1
SELECT count(DISTINCT department_id) FROM Degree_Programs
SELECT count(DISTINCT department_id) FROM Degree_Programs
SELECT COUNT(Degree_Programs.degree_program_id) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(*) FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id  =  T2.department_id WHERE T1.department_name  =  'engineer'
SELECT count(*) FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id  =  T2.department_id WHERE T1.department_name  =  'engineer'
SELECT section_name ,  section_description FROM Sections
SELECT section_name ,  section_description FROM Sections
SELECT Courses.course_name , Courses.course_id FROM Courses JOIN Sections GROUP BY Sections.course_id HAVING COUNT(*) < "value"
SELECT T1.course_name ,  T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_id HAVING count(*)  <=  2
SELECT section_name FROM Sections ORDER BY section_name DESC
SELECT section_name FROM Sections ORDER BY section_name DESC
SELECT T1.semester_name ,  T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id  =  T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name ,  T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id  =  T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT department_description FROM Departments WHERE department_name LIKE '%computer%'
SELECT department_description FROM Departments WHERE department_name LIKE '%computer%'
SELECT Students.first_name , Students.middle_name , Students.last_name , COUNT(*) FROM Student_Enrolment JOIN Students GROUP BY Student_Enrolment.semester_id HAVING COUNT(*) = "value"
SELECT Students.first_name , Students.middle_name , Students.last_name FROM Student_Enrolment JOIN Students GROUP BY Student_Enrolment.student_id HAVING COUNT(*) = "value"
SELECT Students.first_name , Students.middle_name , Students.last_name FROM Student_Enrolment JOIN Students WHERE Student_Enrolment.degree_program_id = "value"
SELECT Students.first_name , Students.middle_name , Students.last_name FROM Student_Enrolment JOIN Students WHERE Student_Enrolment.degree_program_id = "value"
SELECT Student_Enrolment.degree_program_id FROM Student_Enrolment GROUP BY Student_Enrolment.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id  =  T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id ,  T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id  =  T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id ,  T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id  =  T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT Student_Enrolment.student_id , Students.first_name , Students.middle_name , Students.last_name FROM Student_Enrolment JOIN Students GROUP BY Student_Enrolment.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT Students.first_name , Students.middle_name , COUNT(*) FROM Student_Enrolment JOIN Students GROUP BY Student_Enrolment.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name FROM Semesters WHERE semester_id NOT IN( SELECT semester_id FROM Student_Enrolment )
SELECT semester_name FROM Semesters WHERE semester_id NOT IN( SELECT semester_id FROM Student_Enrolment )
SELECT DISTINCT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id  =  T2.course_id
SELECT DISTINCT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id  =  T2.course_id
SELECT Courses.course_name FROM Courses JOIN Student_Enrolment_Courses GROUP BY Student_Enrolment_Courses.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT Courses.course_name FROM Courses JOIN Student_Enrolment_Courses GROUP BY Student_Enrolment_Courses.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id  =  T2.address_id WHERE T2.state_province_county  =  'NorthCarolina' EXCEPT SELECT DISTINCT T3.last_name FROM Students AS T3 JOIN Student_Enrolment AS T4 ON T3.student_id  =  T4.student_id
SELECT T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id  =  T2.address_id WHERE T2.state_province_county  =  'NorthCarolina' EXCEPT SELECT DISTINCT T3.last_name FROM Students AS T3 JOIN Student_Enrolment AS T4 ON T3.student_id  =  T4.student_id
SELECT T2.transcript_date ,  T1.transcript_id FROM Transcript_Contents AS T1 JOIN Transcripts AS T2 ON T1.transcript_id  =  T2.transcript_id GROUP BY T1.transcript_id HAVING count(*)  >=  2
SELECT T2.transcript_date ,  T1.transcript_id FROM Transcript_Contents AS T1 JOIN Transcripts AS T2 ON T1.transcript_id  =  T2.transcript_id GROUP BY T1.transcript_id HAVING count(*)  >=  2
SELECT cell_mobile_number FROM Students WHERE first_name  =  'Timmothy' AND last_name  =  'Ward'
select cell_mobile_number from students where first_name  =  'timmothy' and last_name  =  'ward'
SELECT first_name ,  middle_name ,  last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name ,  middle_name ,  last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name ,  middle_name ,  last_name FROM Students ORDER BY date_left ASC LIMIT 1
SELECT first_name ,  middle_name ,  last_name FROM Students ORDER BY date_left ASC LIMIT 1
SELECT first_name FROM Students WHERE current_address_id != permanent_address_id
SELECT first_name FROM Students WHERE current_address_id != permanent_address_id
SELECT Addresses.address_id , Addresses.line_1 FROM Addresses JOIN Students GROUP BY Addresses.address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.address_id ,  T1.line_1 ,  T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id  =  T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(transcript_date) FROM Transcripts
SELECT avg(transcript_date) FROM Transcripts
SELECT transcript_date ,  other_details FROM Transcripts ORDER BY transcript_date ASC LIMIT 1
SELECT transcript_date ,  other_details FROM Transcripts ORDER BY transcript_date ASC LIMIT 1
SELECT count(*) FROM Transcripts
SELECT count(*) FROM Transcripts
SELECT MAX(Transcripts.transcript_date) FROM Transcripts
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT Transcript_Contents.transcript_id , COUNT(*) FROM Transcript_Contents JOIN Student_Enrolment_Courses GROUP BY Student_Enrolment_Courses.student_enrolment_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT Student_Enrolment_Courses.course_id , COUNT(Transcript_Contents.transcript_id) FROM Student_Enrolment_Courses JOIN Transcript_Contents GROUP BY Student_Enrolment_Courses.course_id ORDER BY COUNT(Transcript_Contents.transcript_id) DESC LIMIT 1
SELECT T2.transcript_date ,  T1.transcript_id FROM Transcript_Contents AS T1 JOIN Transcripts AS T2 ON T1.transcript_id  =  T2.transcript_id GROUP BY T1.transcript_id ORDER BY count(*) ASC LIMIT 1
SELECT T2.transcript_date ,  T1.transcript_id FROM Transcript_Contents AS T1 JOIN Transcripts AS T2 ON T1.transcript_id  =  T2.transcript_id GROUP BY T1.transcript_id ORDER BY count(*) ASC LIMIT 1
SELECT Semesters.semester_name FROM Student_Enrolment JOIN Semesters JOIN Degree_Programs WHERE Degree_Programs.degree_summary_name = "value" INTERSECT SELECT Semesters.semester_name FROM Student_Enrolment JOIN Semesters JOIN Semesters WHERE Student_Enrolment.student_id = "value"
SELECT Student_Enrolment.semester_id FROM Student_Enrolment WHERE Student_Enrolment.degree_program_id = "value" INTERSECT SELECT Student_Enrolment.semester_id FROM Student_Enrolment WHERE Student_Enrolment.degree_program_id = "value"
SELECT Students.current_address_id FROM Students
SELECT count(DISTINCT current_address_id) FROM Students
SELECT other_student_details FROM Students ORDER BY other_student_details DESC
SELECT other_student_details FROM Students ORDER BY other_student_details DESC
SELECT section_description FROM Sections WHERE section_name  =  'h'
SELECT section_description FROM Sections WHERE section_name  =  'h'
select t1.first_name from students as t1 join addresses as t2 on t1.permanent_address_id  =  t2.address_id where t2.country  =  'haiti' or t1.cell_mobile_number  =  '09700166582'
select t1.first_name from students as t1 join addresses as t2 on t1.permanent_address_id  =  t2.address_id where t2.country  =  'haiti' or t1.cell_mobile_number  =  '09700166582'
SELECT Title FROM Cartoon ORDER BY title
SELECT Title FROM Cartoon ORDER BY title
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones";
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones";
SELECT count(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr";
SELECT count(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr";
SELECT title ,  Directed_by FROM Cartoon ORDER BY Original_air_date
SELECT title ,  Directed_by FROM Cartoon ORDER BY Original_air_date
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti";
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti";
SELECT Country ,  count(*) FROM TV_Channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1;
SELECT Country ,  count(*) FROM TV_Channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1;
SELECT COUNT(TV_Channel.series_name) , TV_Channel.Content FROM TV_Channel
SELECT count(DISTINCT series_name) ,  count(DISTINCT content) FROM TV_Channel;
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio";
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio";
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio";
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio";
SELECT count(*) FROM TV_Channel WHERE LANGUAGE = "English";
SELECT count(*) FROM TV_Channel WHERE LANGUAGE = "English";
SELECT LANGUAGE ,  count(*) FROM TV_Channel GROUP BY LANGUAGE ORDER BY count(*) ASC LIMIT 1;
SELECT LANGUAGE ,  count(*) FROM TV_Channel GROUP BY LANGUAGE ORDER BY count(*) ASC LIMIT 1;
SELECT LANGUAGE ,  count(*) FROM TV_Channel GROUP BY LANGUAGE
SELECT LANGUAGE ,  count(*) FROM TV_Channel GROUP BY LANGUAGE
SELECT TV_Channel.series_name FROM TV_series JOIN TV_Channel JOIN Cartoon WHERE Cartoon.Title = "value"
SELECT TV_Channel.series_name FROM TV_series JOIN TV_Channel JOIN Cartoon WHERE Cartoon.Title = "value"
SELECT Cartoon.Title FROM Cartoon JOIN TV_Channel JOIN TV_series WHERE TV_Channel.series_name = "value"
SELECT T2.Title FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T1.series_name = "Sky Radio";
SELECT Episode FROM TV_series ORDER BY rating
SELECT Episode FROM TV_series ORDER BY rating
SELECT Episode ,  Rating FROM TV_series ORDER BY Rating DESC LIMIT 3;
SELECT Episode ,  Rating FROM TV_series ORDER BY Rating DESC LIMIT 3;
SELECT max(SHARE) , min(SHARE) FROM TV_series;
SELECT max(SHARE) , min(SHARE) FROM TV_series;
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime";
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime";
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime";
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime";
SELECT T1.series_name FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Episode = "A Love of a Lifetime";
SELECT T1.series_name FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Episode = "A Love of a Lifetime";
SELECT T2.Episode FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.series_name = "Sky Radio";
SELECT T2.Episode FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.series_name = "Sky Radio";
SELECT count(*) ,  Directed_by FROM cartoon GROUP BY Directed_by
SELECT count(*) ,  Directed_by FROM cartoon GROUP BY Directed_by
select production_code ,  channel from cartoon order by original_air_date desc limit 1
select production_code ,  channel from cartoon order by original_air_date desc limit 1
SELECT package_option ,  series_name FROM TV_Channel WHERE hight_definition_TV  =  "yes"
SELECT package_option ,  series_name FROM TV_Channel WHERE hight_definition_TV  =  "yes"
SELECT T1.country FROM TV_Channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.Channel WHERE T2.written_by  =  'Todd Casey'
SELECT T1.country FROM TV_Channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.Channel WHERE T2.written_by  =  'Todd Casey'
SELECT country FROM TV_Channel EXCEPT SELECT T1.country FROM TV_Channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.Channel WHERE T2.written_by  =  'Todd Casey'
SELECT country FROM TV_Channel EXCEPT SELECT T1.country FROM TV_Channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.Channel WHERE T2.written_by  =  'Todd Casey'
SELECT T1.series_name ,  T1.country FROM TV_Channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.Channel WHERE T2.directed_by  =  'Michael Chang' INTERSECT SELECT T1.series_name ,  T1.country FROM TV_Channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.Channel WHERE T2.directed_by  =  'Ben Jones'
SELECT T1.series_name ,  T1.country FROM TV_Channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.Channel WHERE T2.directed_by  =  'Michael Chang' INTERSECT SELECT T1.series_name ,  T1.country FROM TV_Channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.Channel WHERE T2.directed_by  =  'Ben Jones'
SELECT Pixel_aspect_ratio_PAR ,  country FROM tv_channel WHERE LANGUAGE != 'English'
SELECT Pixel_aspect_ratio_PAR ,  country FROM tv_channel WHERE LANGUAGE != 'English'
SELECT TV_Channel.id FROM TV_Channel GROUP BY TV_Channel.id HAVING COUNT(*) > "value"
SELECT id FROM tv_channel GROUP BY country HAVING count(*)  >  2
SELECT id FROM TV_Channel EXCEPT SELECT channel FROM cartoon WHERE directed_by  =  'Ben Jones'
SELECT id FROM TV_Channel EXCEPT SELECT channel FROM cartoon WHERE directed_by  =  'Ben Jones'
SELECT TV_Channel.Package_Option FROM TV_Channel EXCEPT SELECT TV_Channel.Package_Option FROM TV_Channel JOIN Cartoon WHERE Cartoon.Directed_by = "value"
SELECT TV_Channel.Package_Option FROM TV_Channel EXCEPT SELECT TV_Channel.Package_Option FROM TV_Channel JOIN Cartoon WHERE Cartoon.Directed_by = "value"
SELECT count(*) FROM poker_player
SELECT count(*) FROM poker_player
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made ,  Best_Finish FROM poker_player
SELECT Final_Table_Made ,  Best_Finish FROM poker_player
SELECT avg(Earnings) FROM poker_player
SELECT avg(Earnings) FROM poker_player
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings  <  200000
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings  <  200000
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID  =  T2.People_ID
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID  =  T2.People_ID
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID  =  T2.People_ID WHERE T2.Earnings  >  300000
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID  =  T2.People_ID WHERE T2.Earnings  >  300000
SELECT people.Name FROM poker_player JOIN people GROUP BY people.Name ORDER BY COUNT(*) ASC
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Final_Table_Made
SELECT T1.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Earnings ASC LIMIT 1
SELECT T1.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Earnings ASC LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT avg(T2.Earnings) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID  =  T2.People_ID WHERE T1.Height  >  200
SELECT avg(T2.Earnings) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID  =  T2.People_ID WHERE T1.Height  >  200
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Earnings DESC
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Earnings DESC
SELECT Nationality ,  COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality ,  COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*)  >=  2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*)  >=  2
SELECT Name ,  Birth_Date FROM people ORDER BY Name ASC
SELECT Name ,  Birth_Date FROM people ORDER BY Name ASC
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(*) FROM area_code_state
SELECT contestant_number ,  contestant_name FROM contestants ORDER BY contestant_name DESC
SELECT vote_id ,  phone_number ,  state FROM votes
SELECT max(area_code) ,  min(area_code) FROM area_code_state
SELECT max(created) FROM votes WHERE state  =  'CA'
SELECT contestant_name FROM contestants WHERE contestant_name != 'Jessie Alloway'
SELECT DISTINCT state ,  created FROM votes
SELECT T1.contestant_number , T1.contestant_name FROM contestants AS T1 JOIN votes AS T2 ON T1.contestant_number  =  T2.contestant_number GROUP BY T1.contestant_number HAVING count(*)  >=  2
SELECT CONTESTANTS.contestant_number , CONTESTANTS.contestant_name FROM CONTESTANTS JOIN VOTES ORDER BY VOTES.contestant_number ASC LIMIT 1
SELECT count(*) FROM votes WHERE state  =  'NY' OR state  =  'CA'
SELECT count(*) FROM contestants WHERE contestant_number NOT IN ( SELECT contestant_number FROM votes )
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state  =  T2.state GROUP BY T1.area_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.created ,  T2.state ,  T2.phone_number FROM contestants AS T1 JOIN votes AS T2 ON T1.contestant_number  =  T2.contestant_number WHERE T1.contestant_name  =  'Tabatha Gehling'
SELECT AREA_CODE_STATE.area_code FROM VOTES JOIN CONTESTANTS WHERE CONTESTANTS.contestant_name = "value" INTERSECT SELECT AREA_CODE_STATE.area_code FROM VOTES JOIN CONTESTANTS WHERE CONTESTANTS.contestant_name = "value"
select contestant_name from contestants where contestant_name like "%al%"
SELECT Name FROM country WHERE IndepYear  >  1950
SELECT Name FROM country WHERE IndepYear  >  1950
SELECT count(*) FROM country WHERE GovernmentForm  =  "Republic"
SELECT count(*) FROM country WHERE GovernmentForm  =  "Republic"
SELECT SUM(country.SurfaceArea) FROM country WHERE country.Continent = "value"
SELECT sum(SurfaceArea) FROM country WHERE Region  =  "Caribbean"
SELECT country.Continent FROM country WHERE country.LocalName = "value"
SELECT Continent FROM country WHERE Name  =  "Anguilla"
SELECT Region FROM country AS T1 JOIN city AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Name  =  "Kabul"
SELECT Region FROM country AS T1 JOIN city AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Name  =  "Kabul"
SELECT countrylanguage.Language FROM countrylanguage JOIN country WHERE country.Name = "value" GROUP BY countrylanguage.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT countrylanguage.Language FROM countrylanguage JOIN country WHERE country.Name = "value" GROUP BY countrylanguage.Language ORDER BY COUNT(country.Code) DESC LIMIT 1
SELECT Population ,  LifeExpectancy FROM country WHERE Name  =  "Brazil"
SELECT Population ,  LifeExpectancy FROM country WHERE Name  =  "Brazil"
SELECT Population ,  Region FROM country WHERE Name  =  "Angola"
SELECT Population ,  Region FROM country WHERE Name  =  "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Region  =  "Central Africa"
SELECT avg(LifeExpectancy) FROM country WHERE Region  =  "Central Africa"
SELECT Name FROM country WHERE Continent  =  "Asia" ORDER BY LifeExpectancy LIMIT 1
SELECT Name FROM country WHERE Continent  =  "Asia" ORDER BY LifeExpectancy LIMIT 1
SELECT country.Population , country.GNP FROM country WHERE country.Continent = "value" ORDER BY country.GNP DESC LIMIT 1
SELECT sum(Population) ,  max(GNP) FROM country WHERE Continent  =  "Asia"
SELECT AVG(country.LifeExpectancy) FROM country WHERE country.Continent = "value" AND country.Name = "value"
SELECT AVG(country.LifeExpectancy) FROM country WHERE country.Continent = "value" AND country.Continent = "value"
SELECT sum(SurfaceArea) FROM country WHERE Continent  =  "Asia" OR Continent  =  "Europe"
SELECT sum(SurfaceArea) FROM country WHERE Continent  =  "Asia" OR Continent  =  "Europe"
SELECT city.Population FROM city WHERE city.District = "value"
SELECT sum(Population) FROM city WHERE District  =  "Gelderland"
SELECT AVG(country.GNP) , AVG(country.Population) FROM country WHERE country.GovernmentForm = "value"
SELECT AVG(country.GNP) , AVG(country.Population) FROM country WHERE country.LocalName = "value"
SELECT count(DISTINCT LANGUAGE) FROM countrylanguage
SELECT count(DISTINCT LANGUAGE) FROM countrylanguage
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent  =  "Africa"
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent  =  "Africa"
SELECT COUNT(T2.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T1.Name  =  "Aruba"
SELECT COUNT(T2.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T1.Name  =  "Aruba"
SELECT COUNT(countrylanguage.Language) FROM countrylanguage JOIN country WHERE country.Name = "value"
SELECT COUNT(countrylanguage.Language) FROM countrylanguage JOIN country WHERE country.Name = "value"
SELECT country.Name FROM countrylanguage JOIN country GROUP BY countrylanguage.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT country.Continent FROM country GROUP BY country.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE countrylanguage.Language = "value" AND countrylanguage.Language = "value"
SELECT COUNT(*) FROM countrylanguage WHERE countrylanguage.Language = "value" AND countrylanguage.Language = "value"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  "French"
SELECT country.Name FROM country JOIN countrylanguage WHERE countrylanguage.Language = "value" INTERSECT SELECT country.Name FROM country JOIN countrylanguage WHERE countrylanguage.Language = "value"
SELECT country.Name FROM country JOIN countrylanguage WHERE countrylanguage.Language = "value" INTERSECT SELECT country.Name FROM country JOIN countrylanguage WHERE countrylanguage.Language = "value"
SELECT COUNT( DISTINCT Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  "Chinese"
SELECT COUNT( DISTINCT Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  "Chinese"
SELECT DISTINCT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  "English" OR T2.Language  =  "Dutch"
SELECT DISTINCT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  "English" OR T2.Language  =  "Dutch"
SELECT country.Name FROM countrylanguage JOIN country WHERE countrylanguage.Language = "value" OR countrylanguage.Language = "value"
SELECT country.Name FROM countrylanguage JOIN country WHERE countrylanguage.Language = "value" OR countrylanguage.Language = "value"
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T1.Continent  =  "Asia" GROUP BY T2.Language ORDER BY COUNT (*) DESC LIMIT 1
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T1.Continent  =  "Asia" GROUP BY T2.Language ORDER BY COUNT (*) DESC LIMIT 1
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T1.GovernmentForm  =  "Republic" GROUP BY T2.Language HAVING COUNT(*)  =  1
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T1.GovernmentForm  =  "Republic" GROUP BY T2.Language HAVING COUNT(*)  =  1
SELECT city.Name FROM city WHERE city.Population = "value" ORDER BY city.Population DESC LIMIT 1
SELECT city.Name FROM city JOIN countrylanguage WHERE countrylanguage.Language = "value" ORDER BY city.Population DESC LIMIT 1
SELECT country.Name , country.Population , country.LifeExpectancy FROM country WHERE country.SurfaceArea = "value" ORDER BY country.Continent DESC LIMIT 1
SELECT Name ,  Population ,  LifeExpectancy FROM country WHERE Continent  =  "Asia" ORDER BY SurfaceArea DESC LIMIT 1
SELECT AVG(country.LifeExpectancy) FROM country JOIN countrylanguage WHERE countrylanguage.IsOfficial = "value" AND countrylanguage.Language != "value"
SELECT AVG(country.LifeExpectancy) FROM country JOIN countrylanguage WHERE countrylanguage.IsOfficial = "value" AND countrylanguage.Language != "value"
SELECT SUM(country.Population) FROM country JOIN countrylanguage WHERE countrylanguage.Language != "value"
SELECT country.Population FROM country JOIN countrylanguage WHERE countrylanguage.Language != "value"
SELECT countrylanguage.Language FROM countrylanguage JOIN country WHERE country.HeadOfState = "value"
SELECT countrylanguage.Language FROM countrylanguage JOIN country WHERE country.HeadOfState = "value"
SELECT COUNT(countrylanguage.Language) FROM countrylanguage JOIN country WHERE country.IndepYear < "value"
SELECT COUNT(countrylanguage.Language) FROM countrylanguage JOIN country WHERE country.IndepYear < "value"
SELECT country.Name FROM country WHERE country.SurfaceArea > ( SELECT MAX(country.SurfaceArea) FROM country WHERE country.Continent = "value" )
SELECT country.Name FROM country WHERE country.SurfaceArea > ( SELECT MAX(country.SurfaceArea) FROM country WHERE country.Continent = "value" )
SELECT country.Name FROM country WHERE country.Population < ( SELECT MAX(country.Population) FROM country WHERE country.Continent = "value" )
SELECT country.Name FROM country WHERE country.Population < ( SELECT MAX(country.Population) FROM country WHERE country.Continent = "value" )
SELECT country.Name FROM country WHERE country.Population > ( SELECT MAX(country.Population) FROM country WHERE country.Continent = "value" )
SELECT country.Name FROM country WHERE country.Population > ( SELECT MAX(country.Population) FROM country WHERE country.Continent = "value" )
SELECT countrylanguage.CountryCode FROM countrylanguage WHERE countrylanguage.Language != "value"
SELECT countrylanguage.CountryCode FROM countrylanguage WHERE countrylanguage.Language != "value"
SELECT DISTINCT CountryCode FROM countrylanguage WHERE LANGUAGE != "English"
SELECT DISTINCT CountryCode FROM countrylanguage WHERE LANGUAGE != "English"
SELECT country.Code FROM country WHERE country.GovernmentForm = "value" AND country.GovernmentForm != "value"
SELECT country.Code FROM country WHERE country.GovernmentForm = "value" EXCEPT SELECT countrylanguage.CountryCode FROM countrylanguage WHERE countrylanguage.Language != "value"
SELECT city.Name FROM city WHERE city.CountryCode = "value" AND city.CountryCode != "value"
SELECT city.Name FROM city JOIN country WHERE countrylanguage.IsOfficial = "value" AND country.Continent != "value"
SELECT city.Name FROM city JOIN country JOIN countrylanguage WHERE countrylanguage.IsOfficial = "value" AND countrylanguage.Language = "value"
SELECT city.Name FROM city JOIN country JOIN country JOIN countrylanguage WHERE country.Continent = "value" AND countrylanguage.Language = "value"
SELECT Name ,  SurfaceArea ,  IndepYear FROM country ORDER BY Population LIMIT 1
SELECT Name ,  SurfaceArea ,  IndepYear FROM country ORDER BY Population LIMIT 1
SELECT country.Population , country.Name , country.SurfaceArea FROM country ORDER BY country.SurfaceArea DESC LIMIT 1
SELECT Name ,  population ,  HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT country.Name , COUNT(*) FROM countrylanguage JOIN country GROUP BY country.Name HAVING COUNT(*) >= "value"
SELECT country.Name , COUNT(*) FROM countrylanguage JOIN country GROUP BY country.Name HAVING COUNT(*) > "value"
SELECT count(*) ,  District FROM city WHERE Population  >  (SELECT avg(Population) FROM city) GROUP BY District
SELECT count(*) ,  District FROM city WHERE Population  >  (SELECT avg(Population) FROM city) GROUP BY District
SELECT country.GovernmentForm , AVG(country.Population) FROM country GROUP BY country.GovernmentForm HAVING AVG(country.LifeExpectancy) > "value"
SELECT country.GovernmentForm , SUM(country.Population) FROM country WHERE country.LifeExpectancy > "value" GROUP BY country.GovernmentForm
SELECT AVG(country.LifeExpectancy) , AVG(country.Population) , country.Continent FROM country GROUP BY country.Continent HAVING AVG(country.Population) < "value"
SELECT country.Continent , SUM(country.Population) , SUM(country.LifeExpectancy) FROM country WHERE country.LifeExpectancy < "value" GROUP BY country.Continent
SELECT Name ,  SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name ,  SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT count(*) FROM country WHERE continent  =  "Asia"
SELECT count(*) FROM country WHERE continent  =  "Asia"
SELECT country.Name FROM country WHERE country.Continent = "value" AND country.Population > "value"
SELECT country.Name FROM country WHERE country.Continent = "value" AND country.Population > "value"
SELECT SUM(country.Population) , AVG(country.SurfaceArea) FROM country WHERE country.Continent = "value"
SELECT SUM(country.Population) , AVG(country.SurfaceArea) FROM country WHERE country.Continent = "value"
SELECT name FROM city WHERE Population BETWEEN 160000 AND 900000
select name from city where population between 160000 and 900000
SELECT LANGUAGE FROM countrylanguage GROUP BY LANGUAGE ORDER BY count(*) DESC LIMIT 1
SELECT LANGUAGE FROM countrylanguage GROUP BY LANGUAGE ORDER BY count(*) DESC LIMIT 1
SELECT countrylanguage.Language , MAX(countrylanguage.Percentage) FROM countrylanguage GROUP BY countrylanguage.Language ORDER BY SUM(countrylanguage.Percentage) DESC LIMIT 1
SELECT countrylanguage.CountryCode , SUM(countrylanguage.Language) FROM countrylanguage GROUP BY countrylanguage.CountryCode ORDER BY SUM(countrylanguage.Percentage) DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE countrylanguage.Language = "value" ORDER BY countrylanguage.Percentage DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE countrylanguage.Language = "value" GROUP BY * ORDER BY COUNT(*) DESC LIMIT 1
SELECT countrylanguage.CountryCode FROM countrylanguage WHERE countrylanguage.Language = "value" ORDER BY countrylanguage.Percentage DESC LIMIT 1
SELECT countrylanguage.CountryCode FROM countrylanguage WHERE countrylanguage.Language = "value" GROUP BY countrylanguage.CountryCode ORDER BY AVG(countrylanguage.Percentage) DESC LIMIT 1
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor WHERE Nationality != 'USA'
SELECT Name FROM conductor WHERE Nationality != 'USA'
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT avg(Attendance) FROM SHOW
SELECT avg(Attendance) FROM SHOW
SELECT max(SHARE) ,  min(SHARE) FROM performance WHERE TYPE != "Live final"
SELECT max(SHARE) ,  min(SHARE) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT Nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT T1.Name ,  T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID
SELECT T1.Name ,  T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID GROUP BY T2.Conductor_ID HAVING COUNT(*)  >  1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID GROUP BY T2.Conductor_ID HAVING COUNT(*)  >  1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID GROUP BY T2.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID GROUP BY T2.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID WHERE Year_of_Founded  >  2008
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID WHERE Year_of_Founded  >  2008
SELECT Record_Company ,  COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Record_Company ,  COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) ASC
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) ASC
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT Record_Company FROM orchestra WHERE Year_of_Founded  <  2003 INTERSECT SELECT Record_Company FROM orchestra WHERE Year_of_Founded  >  2003
SELECT Record_Company FROM orchestra WHERE Year_of_Founded  <  2003 INTERSECT SELECT Record_Company FROM orchestra WHERE Year_of_Founded  >  2003
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format  =  "CD" OR Major_Record_Format  =  "DVD"
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format  =  "CD" OR Major_Record_Format  =  "DVD"
SELECT Year_of_Founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID  =  T2.Orchestra_ID GROUP BY T2.Orchestra_ID HAVING COUNT(*)  >  1
SELECT Year_of_Founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID  =  T2.Orchestra_ID GROUP BY T2.Orchestra_ID HAVING COUNT(*)  >  1
SELECT count(*) FROM Highschooler
SELECT count(*) FROM Highschooler
SELECT name ,  grade FROM Highschooler
SELECT name ,  grade FROM Highschooler
SELECT grade FROM Highschooler
SELECT grade FROM Highschooler
SELECT grade FROM Highschooler WHERE name  =  "Kyle"
SELECT grade FROM Highschooler WHERE name  =  "Kyle"
SELECT name FROM Highschooler WHERE grade  =  10
SELECT name FROM Highschooler WHERE grade  =  10
SELECT ID FROM Highschooler WHERE name  =  "Kyle"
SELECT ID FROM Highschooler WHERE name  =  "Kyle"
SELECT count(*) FROM Highschooler WHERE grade  =  9 OR grade  =  10
SELECT count(*) FROM Highschooler WHERE grade  =  9 OR grade  =  10
SELECT grade ,  count(*) FROM Highschooler GROUP BY grade
SELECT grade ,  count(*) FROM Highschooler GROUP BY grade
SELECT grade FROM Highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade HAVING count(*)  >=  4
SELECT grade FROM Highschooler GROUP BY grade HAVING count(*)  >=  4
SELECT COUNT(*) FROM Friend
SELECT student_id ,  count(*) FROM Friend GROUP BY student_id
SELECT Highschooler.name , COUNT(*) FROM Highschooler JOIN Friend GROUP BY Highschooler.name
SELECT T2.name ,  count(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id HAVING count(*)  >=  3
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id HAVING count(*)  >=  3
SELECT Highschooler.name FROM Highschooler JOIN Friend WHERE Highschooler.name = "value"
SELECT Friend.friend_id FROM Highschooler JOIN Friend WHERE Highschooler.name = "value"
SELECT COUNT(Friend.friend_id) FROM Highschooler JOIN Friend WHERE Highschooler.name = "value"
SELECT count(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id WHERE T2.name  =  "Kyle"
SELECT id FROM Highschooler EXCEPT SELECT student_id FROM Friend
SELECT id FROM Highschooler EXCEPT SELECT student_id FROM Friend
SELECT name FROM Highschooler EXCEPT SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id
SELECT name FROM Highschooler EXCEPT SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id
SELECT Highschooler.ID FROM Highschooler INTERSECT SELECT Likes.student_id FROM Likes
SELECT Likes.student_id FROM Likes INTERSECT SELECT Likes.liked_id FROM Likes
SELECT Highschooler.name FROM Highschooler JOIN Likes INTERSECT SELECT Highschooler.name FROM Highschooler JOIN Likes
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id INTERSECT SELECT T2.name FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.liked_id  =  T2.id
SELECT COUNT(*) FROM Likes GROUP BY Likes.student_id
SELECT student_id ,  count(*) FROM Likes GROUP BY student_id
SELECT T2.name ,  count(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id
SELECT T2.name ,  count(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id
SELECT Highschooler.name FROM Highschooler JOIN Likes ORDER BY Highschooler.name DESC LIMIT 1
SELECT Highschooler.name FROM Highschooler JOIN Likes ORDER BY Likes.student_id DESC LIMIT 1
SELECT T2.name FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id HAVING count(*)  >=  2
SELECT T2.name FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id HAVING count(*)  >=  2
SELECT Highschooler.name FROM Highschooler JOIN Friend WHERE Highschooler.grade > "value" GROUP BY Friend.student_id ORDER BY COUNT(*) ASC
SELECT Highschooler.name FROM Highschooler JOIN Friend WHERE Highschooler.grade > "value" GROUP BY Friend.student_id ORDER BY COUNT(*) ASC
SELECT Likes.liked_id FROM Highschooler JOIN Likes WHERE Highschooler.name = "value"
SELECT count(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id WHERE T2.name  =  "Kyle"
SELECT AVG(Highschooler.grade) FROM Highschooler WHERE Highschooler.ID IN ( SELECT Friend.student_id FROM Friend )
SELECT AVG(Highschooler.grade) FROM Highschooler WHERE Highschooler.ID IN ( SELECT Friend.student_id FROM Friend )
SELECT MIN(Highschooler.grade) FROM Highschooler WHERE Highschooler.ID NOT IN ( SELECT Friend.student_id FROM Friend )
SELECT MIN(Highschooler.grade) FROM Highschooler WHERE Highschooler.ID NOT IN ( SELECT Friend.student_id FROM Friend )
SELECT state FROM Owners INTERSECT SELECT state FROM Professionals
SELECT state FROM Owners INTERSECT SELECT state FROM Professionals
SELECT AVG(Dogs.age) FROM Dogs JOIN Treatments
SELECT AVG(Dogs.age) FROM Treatments JOIN Dogs
SELECT Treatments.professional_id , Professionals.last_name , Professionals.cell_number FROM Professionals JOIN Treatments WHERE Professionals.state = "value" UNION SELECT Treatments.professional_id , Professionals.last_name , Professionals.cell_number FROM Professionals JOIN Treatments GROUP BY Treatments.professional_id HAVING COUNT(*) > "value"
SELECT Treatments.professional_id , Professionals.last_name , Professionals.cell_number FROM Professionals JOIN Treatments WHERE Professionals.state = "value" UNION SELECT Treatments.professional_id , Professionals.last_name , Professionals.cell_number FROM Professionals JOIN Treatments GROUP BY Professionals.state HAVING COUNT(*) > "value"
SELECT Dogs.name FROM Dogs EXCEPT SELECT Dogs.name FROM Dogs JOIN Treatments WHERE Treatments.cost_of_treatment > "value"
SELECT Dogs.name FROM Dogs EXCEPT SELECT Dogs.name FROM Dogs JOIN Treatments WHERE Treatments.cost_of_treatment > "value"
SELECT Professionals.first_name FROM Professionals JOIN Owners EXCEPT SELECT Owners.first_name FROM Owners
SELECT Professionals.first_name FROM Professionals JOIN Owners EXCEPT SELECT Owners.first_name FROM Owners
SELECT professional_id ,  role_code ,  email_address FROM Professionals EXCEPT SELECT T1.professional_id ,  T1.role_code ,  T1.email_address FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id  =  T2.professional_id
SELECT professional_id ,  role_code ,  email_address FROM Professionals EXCEPT SELECT T1.professional_id ,  T1.role_code ,  T1.email_address FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id  =  T2.professional_id
SELECT T1.owner_id ,  T2.first_name ,  T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id ,  T2.first_name ,  T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id ,  T1.role_code ,  T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >=  2
SELECT T1.professional_id ,  T1.role_code ,  T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >=  2
SELECT Breeds.breed_name FROM Dogs JOIN Breeds GROUP BY Dogs.breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Breeds.breed_name FROM Dogs JOIN Breeds GROUP BY Dogs.breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id ,  T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id  =  T2.owner_id JOIN Treatments AS T3 ON T2.dog_id  =  T3.dog_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id ,  T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id  =  T2.owner_id JOIN Treatments AS T3 ON T2.dog_id  =  T3.dog_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code  =  T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY sum(cost_of_treatment) ASC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code  =  T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY sum(cost_of_treatment) ASC LIMIT 1
SELECT Owners.owner_id , Owners.zip_code FROM Owners JOIN Dogs JOIN Charges GROUP BY Owners.owner_id ORDER BY SUM(Charges.charge_amount) DESC LIMIT 1
SELECT Owners.owner_id , Owners.zip_code FROM Owners JOIN Dogs GROUP BY Owners.owner_id ORDER BY SUM(Dogs.date_adopted) DESC LIMIT 1
SELECT T1.professional_id ,  T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >=  2
SELECT T1.professional_id ,  T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >=  2
SELECT DISTINCT T1.first_name ,  T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 WHERE cost_of_treatment  <  ( SELECT avg(cost_of_treatment) FROM Treatments )
SELECT DISTINCT T1.first_name ,  T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 WHERE cost_of_treatment  <  ( SELECT avg(cost_of_treatment) FROM Treatments )
SELECT T1.date_of_treatment ,  T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id  =  T2.professional_id
SELECT T1.date_of_treatment ,  T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id  =  T2.professional_id
SELECT T1.cost_of_treatment ,  T2.treatment_type_description FROM Treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code  =  T2.treatment_type_code
SELECT T1.cost_of_treatment ,  T2.treatment_type_description FROM Treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code  =  T2.treatment_type_code
SELECT T1.first_name ,  T1.last_name ,  T2.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id  =  T2.owner_id
SELECT T1.first_name ,  T1.last_name ,  T2.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id  =  T2.owner_id
SELECT T1.first_name ,  T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id  =  T2.owner_id
SELECT T1.first_name ,  T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id  =  T2.owner_id
SELECT Dogs.name , Treatments.date_of_treatment FROM Treatments JOIN Dogs GROUP BY Dogs.breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Dogs.name , Treatments.date_of_treatment FROM Dogs JOIN Treatments GROUP BY Dogs.breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name ,  T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id  =  T2.owner_id WHERE T1.state  =  'Virginia'
SELECT T1.first_name ,  T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id  =  T2.owner_id WHERE T1.state  =  'Virginia'
SELECT DISTINCT T1.date_arrived ,  T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id  =  T2.dog_id
SELECT DISTINCT T1.date_arrived ,  T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id  =  T2.dog_id
SELECT Owners.last_name FROM Owners JOIN Dogs ORDER BY Dogs.age ASC LIMIT 1
SELECT Owners.last_name FROM Owners JOIN Dogs ORDER BY Dogs.age ASC LIMIT 1
SELECT email_address FROM Professionals WHERE state  =  'Hawaii' OR state  =  'Wisconsin'
SELECT email_address FROM Professionals WHERE state  =  'Hawaii' OR state  =  'Wisconsin'
SELECT date_arrived ,  date_departed FROM Dogs
SELECT date_arrived ,  date_departed FROM Dogs
SELECT count(DISTINCT dog_id) FROM Treatments
SELECT count(DISTINCT dog_id) FROM Treatments
SELECT count(DISTINCT professional_id) FROM Treatments
SELECT count(DISTINCT professional_id) FROM Treatments
SELECT role_code ,  street ,  city ,  state FROM professionals WHERE city LIKE '%West%'
SELECT role_code ,  street ,  city ,  state FROM professionals WHERE city LIKE '%West%'
SELECT first_name ,  last_name ,  email_address FROM Owners WHERE state LIKE '%North%'
SELECT first_name ,  last_name ,  email_address FROM Owners WHERE state LIKE '%North%'
SELECT count(*) FROM Dogs WHERE age  <  ( SELECT avg(age) FROM Dogs )
SELECT count(*) FROM Dogs WHERE age  <  ( SELECT avg(age) FROM Dogs )
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM Dogs WHERE dog_id NOT IN ( SELECT dog_id FROM Treatments )
select count(*) from dogs where dog_id not in ( select dog_id from treatments )
SELECT count(*) FROM Owners WHERE owner_id NOT IN ( SELECT owner_id FROM Dogs )
SELECT count(*) FROM Owners WHERE owner_id NOT IN ( SELECT owner_id FROM Dogs )
SELECT count(*) FROM Professionals WHERE professional_id NOT IN ( SELECT professional_id FROM Treatments )
SELECT count(*) FROM Professionals WHERE professional_id NOT IN ( SELECT professional_id FROM Treatments )
SELECT name ,  age ,  weight FROM Dogs WHERE abandoned_yn  =  1
SELECT name ,  age ,  weight FROM Dogs WHERE abandoned_yn  =  1
SELECT avg(age) FROM Dogs
SELECT avg(age) FROM Dogs
SELECT max(age) FROM Dogs
SELECT max(age) FROM Dogs
SELECT Charges.charge_type , SUM(Charges.charge_amount) FROM Charges GROUP BY Charges.charge_type
SELECT Charges.charge_type , SUM(Charges.charge_amount) FROM Charges GROUP BY Charges.charge_type
SELECT Charges.charge_type FROM Charges ORDER BY Charges.charge_amount DESC LIMIT 1
SELECT Charges.charge_amount FROM Charges ORDER BY Charges.charge_type DESC LIMIT 1
SELECT email_address ,  cell_number ,  home_phone FROM professionals
SELECT email_address ,  cell_number ,  home_phone FROM professionals
SELECT Sizes.size_code , Sizes.size_code FROM Sizes
SELECT DISTINCT breed_code ,  size_code FROM dogs
SELECT DISTINCT T1.first_name ,  T3.treatment_type_description FROM professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id  =  T2.professional_id JOIN Treatment_types AS T3 ON T2.treatment_type_code  =  T3.treatment_type_code
SELECT DISTINCT T1.first_name ,  T3.treatment_type_description FROM professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id  =  T2.professional_id JOIN Treatment_types AS T3 ON T2.treatment_type_code  =  T3.treatment_type_code
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year ,  Citizenship FROM singer
SELECT Birth_Year ,  Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Birth_Year  =  1948 OR Birth_Year  =  1949
SELECT Name FROM singer WHERE Birth_Year  =  1948 OR Birth_Year  =  1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship ,  COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship ,  COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
select citizenship from singer group by citizenship order by count(*) desc limit 1
SELECT Citizenship ,  max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT Citizenship ,  max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT T2.Title ,  T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID
SELECT T2.Title ,  T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID WHERE T2.Sales  >  300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID WHERE T2.Sales  >  300000
SELECT singer.Name FROM singer JOIN song GROUP BY song.Singer_ID HAVING COUNT(*) > "value"
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T1.Name HAVING COUNT(*)  >  1
SELECT T1.Name ,  sum(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T1.Name
SELECT T1.Name ,  sum(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year  <  1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year  >  1955
SELECT Citizenship FROM singer WHERE Birth_Year  <  1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year  >  1955
SELECT count(*) FROM Other_Available_Features
SELECT T2.feature_type_name FROM Other_Available_Features AS T1 JOIN Ref_Feature_Types AS T2 ON T1.feature_type_code  =  T2.feature_type_code WHERE T1.feature_name  =  "AirCon"
SELECT Ref_Property_Types.property_type_description FROM Ref_Property_Types JOIN Properties ORDER BY Properties.property_type_code DESC LIMIT 1
SELECT Properties.property_name FROM Properties WHERE Properties.property_type_code = "value" UNION SELECT Properties.property_name FROM Properties WHERE Properties.room_count > "value"
