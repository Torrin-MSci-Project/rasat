SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT singer.Name , singer.Country FROM singer ORDER BY singer.Country DESC
SELECT singer.Name , singer.Country FROM singer ORDER BY singer.Birthday DESC
SELECT avg(Singer_ID) ,  min(Singer_ID) ,  max(Singer_ID) FROM singer WHERE country  =  'France'
SELECT avg(Singer_ID) ,  min(Singer_ID) ,  max(Singer_ID) FROM singer WHERE country  =  'France'
SELECT singer.Song_Name , singer.Song_release_year FROM singer ORDER BY singer.Birthday ASC LIMIT 1
SELECT song_name ,  song_release_year FROM singer ORDER BY birthday desc LIMIT 1
SELECT singer.Country FROM singer WHERE singer.Birthday = "value"
SELECT singer.Country FROM singer WHERE singer.Birthday = "value"
SELECT country ,  count(*) FROM singer GROUP BY country
SELECT country ,  count(*) FROM singer GROUP BY country
SELECT singer.Song_Name FROM singer WHERE singer.Song_Name > ( SELECT AVG(singer.Song_Name) FROM singer )
SELECT singer.Song_Name FROM singer WHERE singer.Is_male > ( SELECT AVG(singer.Is_male) FROM singer )
SELECT LOCATION ,  name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION ,  name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT AVG(stadium.Average) , MAX(stadium.Capacity) FROM stadium
SELECT AVG(stadium.Capacity) , MAX(stadium.Highest) FROM stadium
SELECT name ,  capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name ,  capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR  >=  2014
SELECT count(*) FROM concert WHERE YEAR  >=  2014
SELECT stadium.Stadium_ID , COUNT(*) FROM stadium JOIN concert GROUP BY stadium.Stadium_ID
SELECT T2.name ,  count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id GROUP BY T1.stadium_id
SELECT stadium.Name , stadium.Highest FROM stadium JOIN concert WHERE concert.Year > "value" GROUP BY concert.Stadium_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name ,  T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.year  >=  2014 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT concert_Name FROM concert ORDER BY YEAR asc LIMIT 1
SELECT concert_Name FROM concert ORDER BY YEAR asc LIMIT 1
SELECT MAX(stadium.Highest) FROM stadium WHERE stadium.Stadium_ID NOT IN ( SELECT concert.Stadium_ID FROM concert )
SELECT MIN(stadium.Lowest) FROM stadium WHERE stadium.Stadium_ID NOT IN ( SELECT concert.Stadium_ID FROM concert )
SELECT singer.Country FROM singer WHERE singer.Birthday = "value" OR singer.Birthday = "value"
SELECT average FROM stadium EXCEPT SELECT T2.average FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.year  =  2014
SELECT MIN(stadium.Lowest) FROM stadium WHERE stadium.Stadium_ID NOT IN ( SELECT concert.Stadium_ID FROM concert WHERE concert.Year = "value" )
SELECT T2.concert_name ,  T2.theme ,  count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id  =  T2.concert_id GROUP BY T2.concert_id
SELECT T2.concert_name ,  T2.theme ,  count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id  =  T2.concert_id GROUP BY T2.concert_id
SELECT singer.Name , COUNT(*) FROM singer_in_concert JOIN singer GROUP BY singer.Name
SELECT T2.name ,  count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id  =  T2.singer_id GROUP BY T2.singer_id
SELECT T2.name FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id  =  T2.singer_id JOIN concert AS T3 ON T1.concert_id  =  T3.concert_id WHERE T3.year  >=  2014
SELECT singer.Name FROM singer_in_concert JOIN singer JOIN concert WHERE concert.Year < "value"
SELECT name ,  country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name ,  country FROM singer WHERE song_name LIKE '%Hey%'
SELECT stadium.Lowest , stadium.Highest FROM concert JOIN stadium WHERE concert.Year = "value" OR concert.Year = "value"
SELECT stadium.Lowest , stadium.Highest FROM concert JOIN stadium WHERE concert.Year = "value" INTERSECT SELECT stadium.Lowest , stadium.Highest FROM concert JOIN stadium WHERE concert.Year = "value"
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id ORDER BY T2.Capacity DESC LIMIT 1
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id ORDER BY T2.Capacity DESC LIMIT 1
SELECT count(*) FROM pets WHERE weight  >  10
SELECT count(*) FROM pets WHERE weight  >  10
SELECT Pets.weight FROM Pets ORDER BY Pets.birthdate ASC LIMIT 1
SELECT Pets.weight FROM Pets ORDER BY Pets.birthdate ASC LIMIT 1
SELECT MAX(Pets.weight) , MAX(Pets.weight) , Pets.PetType FROM Pets GROUP BY Pets.PetType
SELECT max(weight) ,  petType FROM pets GROUP BY petType
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid WHERE T1.age  >  20
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid WHERE T1.age  >  20
SELECT COUNT(*) FROM Student JOIN Has_Pet JOIN Student WHERE Student.Sex = "value"
SELECT COUNT(*) FROM Has_Pet JOIN Student JOIN Has_Pet WHERE Student.Sex = "value"
SELECT count(DISTINCT pettype) FROM pets
SELECT count(DISTINCT pettype) FROM pets
SELECT DISTINCT T1.Fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T3.petid  =  T2.petid WHERE T3.pettype  =  'cat' OR T3.pettype  =  'dog'
SELECT DISTINCT T1.Fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T3.petid  =  T2.petid WHERE T3.pettype  =  'cat' OR T3.pettype  =  'dog'
SELECT Student.LName FROM Student JOIN Has_Pet JOIN Pets WHERE Pets.PetType = "value" INTERSECT SELECT Student.LName FROM Student JOIN Has_Pet JOIN Pets WHERE Pets.PetType = "value"
SELECT T1.Fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T3.petid  =  T2.petid WHERE T3.pettype  =  'cat' INTERSECT SELECT T1.Fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T3.petid  =  T2.petid WHERE T3.pettype  =  'dog'
SELECT Student.Major , Student.Age FROM Student EXCEPT SELECT Student.Major , Student.Age FROM Student JOIN Has_Pet WHERE Has_Pet.StuID = "value"
SELECT Student.Major , Student.Age FROM Student EXCEPT SELECT Student.Major , Student.Age FROM Student JOIN Has_Pet WHERE Has_Pet.StuID = "value"
SELECT Student.StuID FROM Student EXCEPT SELECT Has_Pet.StuID FROM Has_Pet WHERE Has_Pet.StuID = "value"
SELECT Student.StuID FROM Student EXCEPT SELECT Has_Pet.StuID FROM Has_Pet WHERE Has_Pet.PetID = "value"
SELECT Student.Fname , Student.Age FROM Student JOIN Has_Pet JOIN Pets WHERE Pets.PetType = "value"
SELECT Student.Fname FROM Student WHERE Student.StuID = "value" EXCEPT SELECT Has_Pet.StuID FROM Has_Pet WHERE Has_Pet.PetID = "value"
SELECT Pets.PetType , Pets.weight FROM Pets ORDER BY Pets.birthdate ASC LIMIT 1
SELECT Pets.PetType , Pets.weight FROM Pets ORDER BY Pets.birthdate ASC LIMIT 1
SELECT Pets.PetID , Pets.weight FROM Pets WHERE Pets.birthdate > "value"
SELECT Pets.PetID , Pets.weight FROM Pets WHERE Pets.birthdate > "value"
SELECT avg(PetID) ,  max(PetID) ,  pettype FROM pets GROUP BY pettype
SELECT avg(PetID) ,  max(PetID) ,  pettype FROM pets GROUP BY pettype
SELECT avg(PetID) ,  max(PetID) ,  pettype FROM pets GROUP BY pettype
SELECT avg(weight) ,  pettype FROM pets GROUP BY pettype
SELECT Student.Fname , Student.LName FROM Student JOIN Has_Pet
SELECT Student.Fname , Student.LName FROM Student JOIN Has_Pet
SELECT T2.petid FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid WHERE T1.Lname  =  'Smith'
SELECT T2.petid FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid WHERE T1.Lname  =  'Smith'
SELECT COUNT(*) , Has_Pet.StuID FROM Has_Pet GROUP BY Has_Pet.StuID
SELECT Has_Pet.StuID , COUNT(*) FROM Has_Pet GROUP BY Has_Pet.StuID
SELECT T1.fname ,  T1.sex FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid GROUP BY T1.stuid HAVING count(*)  >  1
SELECT T1.fname ,  T1.sex FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid GROUP BY T1.stuid HAVING count(*)  >  1
SELECT Student.LName FROM Pets JOIN Has_Pet JOIN Student WHERE Pets.birthdate = "value"
SELECT Student.LName FROM Pets JOIN Has_Pet JOIN Student WHERE Pets.birthdate = "value"
SELECT AVG(Student.Age) FROM Student WHERE Student.StuID NOT IN ( SELECT Has_Pet.StuID FROM Has_Pet )
SELECT AVG(Student.Age) FROM Student WHERE Student.StuID NOT IN ( SELECT Has_Pet.StuID FROM Has_Pet )
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
SELECT car_names.Model FROM cars_data JOIN car_names WHERE cars_data.Year <= "value"
SELECT DISTINCT T1.model FROM MODEL_LIST AS T1 JOIN CAR_NAMES AS T2 ON T1.model  =  T2.model JOIN CARS_DATA AS T3 ON T2.MakeId  =  T3.id WHERE T3.year  <=  1980;
SELECT T1.Continent ,  count(*) FROM CONTINENTS AS T1 JOIN COUNTRIES AS T2 ON T1.ContId  =  T2.continent JOIN car_makers AS T3 ON T2.CountryId  =  T3.Country GROUP BY T1.Continent;
SELECT T1.Continent ,  count(*) FROM CONTINENTS AS T1 JOIN COUNTRIES AS T2 ON T1.ContId  =  T2.continent JOIN car_makers AS T3 ON T2.CountryId  =  T3.Country GROUP BY T1.Continent;
SELECT T2.CountryName FROM CAR_MAKERS AS T1 JOIN COUNTRIES AS T2 ON T1.Country  =  T2.CountryId GROUP BY T1.Country ORDER BY Count(*) DESC LIMIT 1;
SELECT T2.CountryName FROM CAR_MAKERS AS T1 JOIN COUNTRIES AS T2 ON T1.Country  =  T2.CountryId GROUP BY T1.Country ORDER BY Count(*) DESC LIMIT 1;
SELECT COUNT(*) , car_makers.FullName FROM car_makers JOIN model_list GROUP BY car_makers.Maker
SELECT Count(*) ,  T2.FullName ,  T2.id FROM MODEL_LIST AS T1 JOIN CAR_MAKERS AS T2 ON T1.Maker  =  T2.Id GROUP BY T2.id;
SELECT cars_data.Accelerate FROM cars_data JOIN car_names WHERE car_names.Model = "value" AND car_names.Make = "value"
SELECT cars_data.Accelerate FROM cars_data JOIN car_names WHERE car_names.Model = "value" AND car_names.Make = "value"
SELECT COUNT(*) FROM car_makers WHERE car_makers.Country = "value"
SELECT COUNT(*) FROM car_makers WHERE car_makers.Country = "value"
SELECT COUNT(*) FROM model_list JOIN car_makers WHERE car_makers.Country = "value"
SELECT COUNT(*) FROM model_list JOIN car_makers WHERE car_makers.Country = "value"
SELECT avg(mpg) FROM CARS_DATA WHERE Cylinders  =  4;
SELECT avg(mpg) FROM CARS_DATA WHERE Cylinders  =  4;
SELECT MIN(cars_data.Weight) FROM cars_data WHERE cars_data.Year = "value" AND cars_data.Cylinders = "value"
SELECT MIN(cars_data.Weight) FROM cars_data WHERE cars_data.Year = "value" AND cars_data.Cylinders = "value"
SELECT car_makers.Maker , model_list.Model FROM car_makers JOIN model_list
SELECT Maker ,  Model FROM MODEL_LIST;
SELECT countries.CountryName , car_makers.Id FROM car_makers JOIN countries
SELECT countries.CountryName , countries.CountryId FROM car_makers JOIN countries
SELECT count(*) FROM CARS_DATA WHERE horsepower  >  150;
SELECT count(*) FROM CARS_DATA WHERE horsepower  >  150;
SELECT AVG(cars_data.Weight) , MAX(cars_data.Weight) , cars_data.Year FROM cars_data GROUP BY cars_data.Year
SELECT avg(Weight) ,  YEAR FROM CARS_DATA GROUP BY YEAR;
SELECT countries.CountryName FROM countries JOIN car_makers WHERE countries.CountryName = "value" GROUP BY countries.CountryName HAVING COUNT(*) >= "value"
SELECT countries.CountryName FROM car_makers JOIN countries WHERE countries.Continent = "value" GROUP BY car_makers.Country HAVING COUNT(*) >= "value"
SELECT MAX(cars_data.Horsepower) , MAX(car_names.Make) FROM cars_data JOIN car_names WHERE cars_data.Cylinders = "value"
SELECT MAX(car_names.Make) , MAX(cars_data.Horsepower) FROM cars_data JOIN car_names WHERE cars_data.Cylinders = "value"
SELECT cars_data.MPG FROM cars_data ORDER BY cars_data.MPG DESC LIMIT 1
SELECT T1.Model FROM CAR_NAMES AS T1 JOIN CARS_DATA AS T2 ON T1.MakeId  =  T2.Id ORDER BY T2.mpg DESC LIMIT 1;
SELECT avg(horsepower) FROM CARS_DATA WHERE YEAR  <=  1980;
SELECT avg(horsepower) FROM CARS_DATA WHERE YEAR  <=  1980;
SELECT avg(T2.edispl) FROM CAR_NAMES AS T1 JOIN CARS_DATA AS T2 ON T1.MakeId  =  T2.Id WHERE T1.Model  =  'tesla';
SELECT avg(T2.edispl) FROM CAR_NAMES AS T1 JOIN CARS_DATA AS T2 ON T1.MakeId  =  T2.Id WHERE T1.Model  =  'tesla';
SELECT max(Accelerate) ,  Cylinders FROM CARS_DATA GROUP BY Cylinders;
SELECT max(Accelerate) ,  Cylinders FROM CARS_DATA GROUP BY Cylinders;
SELECT Model FROM CAR_NAMES GROUP BY Model ORDER BY count(*) DESC LIMIT 1;
SELECT Model FROM CAR_NAMES GROUP BY Model ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM CARS_DATA WHERE Cylinders  >  4;
SELECT count(*) FROM CARS_DATA WHERE Cylinders  >  4;
SELECT COUNT(*) FROM cars_data ORDER BY cars_data.Year DESC LIMIT 1
SELECT COUNT(*) FROM cars_data ORDER BY cars_data.Year DESC LIMIT 1
SELECT count(*) FROM CAR_MAKERS AS T1 JOIN MODEL_LIST AS T2 ON T1.Id  =  T2.Maker WHERE T1.FullName  =  'American Motor Company';
SELECT count(*) FROM CAR_MAKERS AS T1 JOIN MODEL_LIST AS T2 ON T1.Id  =  T2.Maker WHERE T1.FullName  =  'American Motor Company';
SELECT car_makers.FullName , car_makers.Id , COUNT(*) FROM car_makers JOIN model_list GROUP BY model_list.Maker HAVING COUNT(*) > "value"
SELECT T1.FullName ,  T1.Id FROM CAR_MAKERS AS T1 JOIN MODEL_LIST AS T2 ON T1.Id  =  T2.Maker GROUP BY T1.Id HAVING count(*)  >  3;
SELECT model_list.Model FROM model_list JOIN car_names JOIN car_makers WHERE car_makers.FullName = "value" OR cars_data.Weight > "value"
SELECT model_list.Model FROM model_list JOIN car_makers JOIN cars_data WHERE car_makers.FullName = "value" OR cars_data.Weight > "value"
SELECT cars_data.Year FROM cars_data WHERE cars_data.Weight BETWEEN "value" AND "value"
SELECT cars_data.Year FROM cars_data WHERE cars_data.Weight < "value" INTERSECT SELECT cars_data.Year FROM cars_data WHERE cars_data.Weight > "value"
SELECT T1.horsepower FROM CARS_DATA AS T1 ORDER BY T1.accelerate DESC LIMIT 1;
SELECT T1.horsepower FROM CARS_DATA AS T1 ORDER BY T1.accelerate DESC LIMIT 1;
SELECT cars_data.Cylinders FROM cars_data WHERE cars_data.Accelerate = "value" ORDER BY cars_data.Cylinders ASC LIMIT 1
SELECT T1.cylinders FROM CARS_DATA AS T1 JOIN CAR_NAMES AS T2 ON T1.Id  =  T2.MakeId WHERE T2.Model  =  'tesla' ORDER BY T1.accelerate ASC LIMIT 1;
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
SELECT MAX(cars_data.MPG) FROM cars_data WHERE cars_data.Cylinders = "value" OR cars_data.Year < "value"
SELECT MAX(cars_data.MPG) FROM cars_data WHERE cars_data.Cylinders = "value" OR cars_data.Year < "value"
SELECT model_list.Model FROM cars_data JOIN car_names JOIN car_makers WHERE cars_data.Weight < "value" EXCEPT SELECT model_list.Model FROM cars_data JOIN car_names JOIN car_makers WHERE car_makers.FullName = "value"
SELECT model_list.Model FROM model_list JOIN car_names WHERE cars_data.Weight < "value" EXCEPT SELECT model_list.Model FROM model_list JOIN car_names JOIN car_makers WHERE car_names.Make = "value"
SELECT countries.CountryName FROM countries WHERE countries.CountryId NOT IN ( SELECT car_makers.Country FROM car_makers )
SELECT countries.CountryName FROM countries WHERE countries.CountryId NOT IN ( SELECT car_makers.Country FROM car_makers )
SELECT car_makers.Id , car_makers.Maker FROM car_makers JOIN model_list GROUP BY car_makers.Id HAVING COUNT(*) >= "value" INTERSECT SELECT car_makers.Id , car_makers.Maker FROM car_makers JOIN model_list GROUP BY model_list.Maker HAVING COUNT(*) > "value"
SELECT car_makers.Id , car_makers.Maker FROM model_list JOIN car_makers GROUP BY car_makers.Id HAVING COUNT(*) >= "value" INTERSECT SELECT car_makers.Id , car_makers.Maker FROM model_list JOIN car_makers GROUP BY model_list.Maker HAVING COUNT(*) > "value"
SELECT countries.CountryId , countries.CountryName FROM car_makers JOIN countries GROUP BY car_makers.Country HAVING COUNT(*) > "value" UNION SELECT countries.CountryId , countries.CountryName FROM car_makers JOIN model_list JOIN countries JOIN countries JOIN model_list WHERE model_list.Model = "value"
SELECT countries.CountryId , countries.CountryName FROM countries JOIN car_makers GROUP BY car_makers.Country HAVING COUNT(*) > "value" UNION SELECT countries.CountryId , countries.CountryName FROM countries JOIN car_makers WHERE car_makers.Country = "value"
SELECT Country FROM AIRLINES WHERE Airline  =  "JetBlue Airways"
SELECT Country FROM AIRLINES WHERE Airline  =  "JetBlue Airways"
SELECT Abbreviation FROM AIRLINES WHERE Airline  =  "JetBlue Airways"
SELECT Abbreviation FROM AIRLINES WHERE Airline  =  "JetBlue Airways"
SELECT Airline ,  Abbreviation FROM AIRLINES WHERE Country  =  "USA"
SELECT Airline ,  Abbreviation FROM AIRLINES WHERE Country  =  "USA"
SELECT AirportCode ,  AirportName FROM AIRPORTS WHERE city  =  "Jackson"
SELECT AirportCode ,  AirportName FROM AIRPORTS WHERE city  =  "Syracuse"
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
SELECT AirportName FROM AIRPORTS WHERE City = "Jackson"
SELECT AirportName FROM AIRPORTS WHERE City = "Jackson"
SELECT count(*) FROM FLIGHTS WHERE SourceAirport  =  "APG"
SELECT count(*) FROM FLIGHTS WHERE SourceAirport  =  "APG"
SELECT count(*) FROM FLIGHTS WHERE DestAirport  =  "ATO"
SELECT count(*) FROM FLIGHTS WHERE DestAirport  =  "ATO"
SELECT COUNT(*) FROM flights WHERE flights.SourceAirport = "value"
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.SourceAirport  =  T2.AirportCode WHERE T2.City  =  "Jackson"
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.City  =  "Jackson"
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.City  =  "Jackson"
SELECT COUNT(*) FROM airports JOIN flights WHERE airports.City = "value" AND airports.AirportName = "value"
SELECT COUNT(*) FROM airports JOIN flights WHERE airports.City = "value" AND airports.AirportName = "value"
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRLINES AS T2 ON T1.Airline  =  T2.uid WHERE T2.Airline = "JetBlue Airways"
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRLINES AS T2 ON T1.Airline  =  T2.uid WHERE T2.Airline = "JetBlue Airways"
SELECT COUNT(*) FROM airports JOIN flights JOIN airlines WHERE flights.DestAirport = "value" AND airlines.Airline = "value"
SELECT COUNT(*) FROM airports JOIN flights JOIN airlines WHERE airports.AirportName = "value" AND airlines.Airline = "value"
SELECT COUNT(*) FROM airports JOIN flights JOIN airlines WHERE flights.SourceAirport = "value" AND airlines.Airline = "value"
SELECT COUNT(*) FROM airports JOIN flights JOIN airlines WHERE airports.AirportName = "value" AND airlines.Airline = "value"
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.DestAirport  =  T2.AirportCode JOIN AIRLINES AS T3 ON T3.uid  =  T1.Airline WHERE T2.City  =  "Aberdeen" AND T3.Airline  =  "JetBlue Airways"
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.DestAirport  =  T2.AirportCode JOIN AIRLINES AS T3 ON T3.uid  =  T1.Airline WHERE T2.City  =  "Aberdeen" AND T3.Airline  =  "JetBlue Airways"
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
SELECT T1.FlightNo FROM FLIGHTS AS T1 JOIN AIRLINES AS T2 ON T2.uid  =  T1.Airline WHERE T2.Airline  =  "JetBlue Airways"
SELECT T1.FlightNo FROM FLIGHTS AS T1 JOIN AIRLINES AS T2 ON T2.uid  =  T1.Airline WHERE T2.Airline  =  "JetBlue Airways"
SELECT FlightNo FROM FLIGHTS WHERE SourceAirport  =  "APG"
SELECT FlightNo FROM FLIGHTS WHERE SourceAirport  =  "APG"
SELECT flights.FlightNo FROM airports JOIN flights WHERE airports.AirportName = "value"
SELECT FlightNo FROM FLIGHTS WHERE DestAirport  =  "APG"
SELECT flights.FlightNo FROM airports JOIN flights WHERE airports.AirportName = "value"
SELECT T1.FlightNo FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.SourceAirport   =  T2.AirportCode WHERE T2.City  =  "Jackson"
SELECT flights.FlightNo FROM airports JOIN flights WHERE airports.AirportName = "value"
SELECT T1.FlightNo FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.DestAirport   =  T2.AirportCode WHERE T2.City  =  "Jackson"
SELECT count(*) FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.city  =  "Syracuse" OR T2.city  =  "Jackson"
SELECT count(*) FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.city  =  "Syracuse" OR T2.city  =  "Jackson"
SELECT airports.AirportName FROM airports WHERE airports.AirportCode NOT IN ( SELECT flights.SourceAirport FROM flights )
SELECT airports.AirportName FROM airports EXCEPT SELECT airports.AirportName FROM airports JOIN flights
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT Documents.Document_ID , Documents.Document_Name FROM Documents
SELECT document_id ,  document_name ,  document_description FROM Documents
SELECT document_name ,  template_id FROM Documents WHERE Document_Description LIKE "%w%"
SELECT Documents.Document_Name , Documents.Template_ID FROM Documents WHERE Documents.Document_Description LIKE "value"
SELECT Documents.Document_Description , Documents.Template_ID FROM Documents WHERE Documents.Document_Name = "value"
SELECT Documents.Document_Description , Documents.Template_ID , Documents.Document_Name FROM Documents WHERE Documents.Document_Name = "value"
SELECT count(DISTINCT template_id) FROM Documents
SELECT count(DISTINCT template_id) FROM Documents
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID  =  T2.Template_ID WHERE T2.Template_Type_Code  =  'PPT'
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID  =  T2.Template_ID WHERE T2.Template_Type_Code  =  'PPT'
SELECT template_id ,  count(*) FROM Documents GROUP BY template_id
SELECT template_id ,  count(*) FROM Documents GROUP BY template_id
SELECT Templates.Date_Effective_To FROM Templates JOIN Documents GROUP BY Documents.Template_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Templates.Date_Effective_To FROM Templates JOIN Documents GROUP BY Documents.Template_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*)  >  1
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*)  >  1
SELECT template_id FROM Templates EXCEPT SELECT template_id FROM Documents
SELECT template_id FROM Templates EXCEPT SELECT template_id FROM Documents
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates
SELECT Templates.Date_Effective_From , Templates.Template_Type_Code FROM Templates
SELECT Templates.Date_Effective_To , Templates.Template_Type_Code FROM Templates
SELECT Templates.Date_Effective_To FROM Templates
SELECT Templates.Date_Effective_From FROM Templates
SELECT Templates.Date_Effective_To FROM Templates WHERE Templates.Template_Type_Code = "value" OR Templates.Template_Type_Code = "value"
SELECT Templates.Date_Effective_To FROM Templates WHERE Templates.Template_Type_Code = "value" OR Templates.Template_Type_Code = "value"
SELECT Templates.Date_Effective_To FROM Templates WHERE Templates.Template_Type_Code = "value"
SELECT Templates.Date_Effective_To FROM Templates WHERE Templates.Template_Type_Code = "value"
SELECT Templates.Date_Effective_To , Templates.Template_Type_Code FROM Templates WHERE Templates.Version_Number > "value"
SELECT Templates.Date_Effective_From , Templates.Template_Type_Code FROM Templates WHERE Templates.Version_Number > "value"
SELECT Templates.Date_Effective_To , COUNT(*) FROM Templates GROUP BY Templates.Date_Effective_To
SELECT Templates.Date_Effective_To , COUNT(*) FROM Templates GROUP BY Templates.Date_Effective_To
SELECT Templates.Date_Effective_From FROM Templates GROUP BY Templates.Date_Effective_To ORDER BY COUNT(*) DESC LIMIT 1
SELECT Templates.Date_Effective_To FROM Templates GROUP BY Templates.Date_Effective_To ORDER BY COUNT(*) DESC LIMIT 1
SELECT Templates.Date_Effective_To FROM Templates GROUP BY Templates.Date_Effective_To HAVING COUNT(*) < "value"
SELECT Templates.Date_Effective_To FROM Templates GROUP BY Templates.Date_Effective_To HAVING COUNT(*) < "value"
SELECT MIN(Templates.Date_Effective_From) , MIN(Templates.Date_Effective_To) , Templates.Version_Number FROM Templates
SELECT MIN(Templates.Date_Effective_From) , AVG(Templates.Date_Effective_To) , Templates.Version_Number FROM Templates
SELECT Templates.Date_Effective_To FROM Documents JOIN Templates WHERE Documents.Document_Name = "value"
SELECT Templates.Date_Effective_To FROM Templates JOIN Documents WHERE Documents.Document_Name = "value"
SELECT Documents.Document_Name , Documents.Template_ID , Templates.Template_Type_Code FROM Documents JOIN Templates WHERE Templates.Template_Type_Code = "value"
SELECT Documents.Document_Name , Documents.Template_ID FROM Documents JOIN Templates WHERE Templates.Template_Type_Code = "value"
SELECT Templates.Date_Effective_From , Templates.Date_Effective_To , COUNT(*) FROM Templates GROUP BY Templates.Template_Type_Code
SELECT Templates.Date_Effective_From , Templates.Date_Effective_To , COUNT(*) FROM Templates GROUP BY Templates.Template_Type_Code
SELECT Templates.Date_Effective_To FROM Templates GROUP BY Templates.Date_Effective_To ORDER BY COUNT(*) DESC LIMIT 1
SELECT Templates.Date_Effective_To FROM Templates GROUP BY Templates.Date_Effective_To ORDER BY COUNT(*) DESC LIMIT 1
SELECT Date_Effective_From ,  Date_Effective_To FROM Templates EXCEPT SELECT Date_Effective_From ,  Date_Effective_To FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id  =  T2.template_id
SELECT Date_Effective_From ,  Date_Effective_To FROM Templates EXCEPT SELECT Date_Effective_From ,  Date_Effective_To FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id  =  T2.template_id
SELECT template_type_code ,  template_type_description FROM Ref_template_types
SELECT template_type_code ,  template_type_description FROM Ref_template_types
SELECT template_type_description FROM Ref_template_types WHERE template_type_code  =  "AD"
SELECT template_type_description FROM Ref_template_types WHERE template_type_code  =  "AD"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description  =  "Book"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description  =  "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code  = T2.template_type_code JOIN Documents AS T3 ON T2.Template_ID  =  T3.template_ID
SELECT DISTINCT T1.template_type_description FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code  = T2.template_type_code JOIN Documents AS T3 ON T2.Template_ID  =  T3.template_ID
SELECT Templates.Date_Effective_From FROM Templates JOIN Ref_Template_Types WHERE Ref_Template_Types.Template_Type_Description = "value"
SELECT Templates.Date_Effective_To FROM Templates JOIN Ref_Template_Types WHERE Ref_Template_Types.Template_Type_Description = "value"
SELECT players.first_name FROM players JOIN matches
SELECT players.first_name FROM players JOIN matches
SELECT matches.loser_age FROM matches
SELECT matches.loser_age FROM matches
SELECT first_name ,  birth_date FROM players WHERE country_code  =  'USA'
SELECT first_name ,  birth_date FROM players WHERE country_code  =  'USA'
SELECT avg(loser_age) ,  avg(winner_age) FROM matches
SELECT avg(loser_age) ,  avg(winner_age) FROM matches
SELECT AVG(matches.winner_rank) FROM matches
SELECT avg(winner_rank), avg(loser_rank) FROM matches
SELECT MAX(matches.winner_rank) FROM matches
SELECT MAX(matches.winner_rank_points) FROM matches
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT matches.tourney_name FROM matches GROUP BY matches.tourney_id HAVING COUNT(*) > "value"
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*)  >  10
SELECT matches.winner_name , players.last_name , matches.loser_name FROM players JOIN matches WHERE matches.year = "value" INTERSECT SELECT matches.winner_name , players.last_name , matches.loser_name FROM players JOIN matches WHERE matches.year = "value"
SELECT players.first_name , players.last_name , matches.loser_name FROM players JOIN matches WHERE matches.year = "value" INTERSECT SELECT players.first_name , players.last_name , matches.loser_name FROM players JOIN matches WHERE matches.year = "value"
SELECT players.first_name FROM players JOIN matches WHERE matches.year = "value" OR matches.year = "value"
SELECT loser_name, winner_name FROM matches WHERE YEAR  =  2013 OR YEAR  =  2016
SELECT T1.country_code ,  T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.tourney_name  =  'WTA Championships' INTERSECT SELECT T1.country_code ,  T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.tourney_name  =  'Australian Open'
SELECT T1.country_code ,  T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.tourney_name  =  'WTA Championships' INTERSECT SELECT T1.country_code ,  T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.tourney_name  =  'Australian Open'
SELECT players.first_name , players.country_code FROM players ORDER BY players.birth_date DESC LIMIT 1
SELECT players.first_name , players.country_code FROM players ORDER BY players.birth_date DESC LIMIT 1
SELECT players.first_name , players.last_name FROM players ORDER BY players.last_name DESC
SELECT first_name ,  last_name FROM players ORDER BY birth_date
SELECT players.first_name , players.last_name FROM players WHERE players.hand = "value" ORDER BY players.birth_date DESC
SELECT players.first_name FROM players WHERE players.hand = "value" ORDER BY players.birth_date ASC
SELECT players.first_name , players.country_code FROM players JOIN rankings GROUP BY rankings.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT players.first_name , players.country_code FROM players JOIN rankings GROUP BY rankings.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT matches.winner_name , matches.winner_rank_points FROM players JOIN matches GROUP BY players.first_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT players.first_name , players.last_name FROM players JOIN matches GROUP BY players.first_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT matches.winner_name , matches.loser_name , matches.winner_rank_points FROM matches WHERE matches.tourney_name = "value" ORDER BY matches.winner_rank_points DESC LIMIT 1
SELECT matches.winner_name , matches.loser_name , matches.winner_rank_points FROM matches WHERE matches.tourney_name = "value" ORDER BY matches.winner_rank_points DESC LIMIT 1
SELECT players.first_name , players.last_name FROM players JOIN matches ORDER BY matches.minutes DESC LIMIT 1
SELECT winner_name ,  loser_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT players.first_name , AVG(rankings.ranking_points) FROM players JOIN rankings GROUP BY players.first_name
SELECT avg(ranking) ,  T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.first_name
SELECT SUM(rankings.ranking_points) , players.last_name FROM players JOIN rankings GROUP BY players.first_name
SELECT players.first_name , SUM(players.last_name) FROM players JOIN rankings GROUP BY players.last_name
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
SELECT matches.winner_name , players.birth_date FROM players JOIN matches ORDER BY matches.winner_rank_points DESC LIMIT 1
SELECT players.first_name , players.birth_date FROM players JOIN matches ORDER BY matches.winner_rank_points DESC LIMIT 1
SELECT count(*) ,  hand FROM players GROUP BY hand
SELECT count(*) ,  hand FROM players GROUP BY hand
SELECT Addresses.line_1 FROM Addresses
SELECT Addresses.line_3 FROM Addresses
SELECT COUNT(*) FROM show
SELECT COUNT(*) FROM show
SELECT conductor.Name FROM conductor ORDER BY conductor.birthday ASC
SELECT conductor.Name FROM conductor ORDER BY conductor.birthday ASC
SELECT Name FROM conductor WHERE Nationality = 'USA'
SELECT Name FROM conductor WHERE Nationality = 'USA'
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded asc
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded asc
SELECT AVG(show.Attendance) FROM show WHERE show.If_first_show NOT IN ( SELECT show.If_first_show FROM show )
SELECT AVG(show.Attendance) FROM show WHERE show.If_first_show != "value"
SELECT max(SHARE) ,  min(SHARE) FROM performance WHERE TYPE != "Live final"
SELECT max(SHARE) ,  min(SHARE) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT Nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT conductor.Name FROM conductor ORDER BY conductor.birthday ASC
SELECT conductor.Name FROM conductor ORDER BY conductor.birthday ASC
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT T1.Name ,  T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID
SELECT T1.Name ,  T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID GROUP BY T2.Conductor_ID HAVING COUNT(*)  >  1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID GROUP BY T2.Conductor_ID HAVING COUNT(*)  >  1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID GROUP BY T2.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID GROUP BY T2.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT conductor.Name FROM orchestra JOIN conductor ORDER BY orchestra.Year_of_Founded DESC LIMIT 1
SELECT conductor.Name FROM conductor JOIN orchestra ORDER BY orchestra.Orchestra DESC LIMIT 1
SELECT Record_Company ,  COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Record_Company ,  COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT orchestra.Major_Record_Format FROM orchestra ORDER BY orchestra.Year_of_Founded ASC
SELECT orchestra.Major_Record_Format FROM orchestra ORDER BY orchestra.Year_of_Founded ASC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded asc LIMIT 1
SELECT orchestra.Record_Company FROM orchestra ORDER BY orchestra.Record_Company DESC LIMIT 1
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT Record_Company FROM orchestra WHERE Year_of_Founded  <=  2003
SELECT orchestra.Record_Company FROM orchestra WHERE orchestra.Year_of_Founded >= "value" INTERSECT SELECT orchestra.Record_Company FROM orchestra WHERE orchestra.Year_of_Founded >= "value"
SELECT COUNT(*) FROM show WHERE show.Result = "value"
SELECT COUNT(*) FROM show WHERE show.Result = "value"
SELECT performance.Type FROM performance JOIN show WHERE show.If_first_show != "value" GROUP BY show.Performance_ID HAVING COUNT(*) > "value"
SELECT performance.Type FROM performance JOIN show WHERE show.If_first_show != "value" GROUP BY show.Performance_ID HAVING COUNT(*) > "value"
SELECT state FROM Owners INTERSECT SELECT state FROM Professionals
SELECT state FROM Owners INTERSECT SELECT state FROM Professionals
SELECT AVG(Dogs.age) FROM Dogs JOIN Treatments
SELECT AVG(Dogs.age) FROM Treatments JOIN Dogs
SELECT Treatments.professional_id , Professionals.last_name , Professionals.cell_number FROM Professionals JOIN Treatments WHERE Professionals.state = "value" UNION SELECT Treatments.professional_id , Professionals.last_name , Professionals.cell_number FROM Professionals JOIN Treatments GROUP BY Treatments.professional_id HAVING COUNT(*) > "value"
SELECT Treatments.professional_id , Professionals.last_name , Professionals.cell_number FROM Professionals JOIN Treatments WHERE Professionals.state = "value" UNION SELECT Treatments.professional_id , Professionals.last_name , Professionals.cell_number FROM Professionals JOIN Treatments GROUP BY Professionals.state HAVING COUNT(*) > "value"
SELECT Dogs.name FROM Dogs EXCEPT SELECT Dogs.name FROM Dogs JOIN Treatments WHERE Treatments.cost_of_treatment > "value"
SELECT Dogs.name FROM Dogs JOIN Treatments WHERE Treatments.cost_of_treatment > "value"
SELECT Professionals.first_name FROM Professionals JOIN Owners EXCEPT SELECT Owners.first_name FROM Owners
SELECT Professionals.first_name FROM Professionals JOIN Owners EXCEPT SELECT Owners.first_name FROM Owners
SELECT Professionals.professional_id , Professionals.last_name FROM Professionals WHERE Professionals.professional_id NOT IN ( SELECT Treatments.professional_id FROM Treatments )
SELECT Professionals.professional_id , Professionals.last_name FROM Professionals WHERE Professionals.professional_id NOT IN ( SELECT Treatments.professional_id FROM Treatments )
SELECT Owners.owner_id , Owners.last_name FROM Owners JOIN Dogs GROUP BY Owners.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT Owners.owner_id , Owners.last_name FROM Owners JOIN Dogs GROUP BY Owners.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT Treatments.professional_id , Professionals.home_phone , COUNT(*) FROM Treatments JOIN Professionals GROUP BY Treatments.professional_id HAVING COUNT(*) >= "value"
SELECT Treatments.professional_id , Professionals.home_phone , COUNT(*) FROM Treatments JOIN Professionals GROUP BY Treatments.professional_id HAVING COUNT(*) >= "value"
SELECT Breeds.breed_name FROM Dogs JOIN Breeds GROUP BY Dogs.breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Breeds.breed_name FROM Dogs JOIN Breeds GROUP BY Dogs.breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id ,  T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id  =  T2.owner_id JOIN Treatments AS T3 ON T2.dog_id  =  T3.dog_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id ,  T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id  =  T2.owner_id JOIN Treatments AS T3 ON T2.dog_id  =  T3.dog_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code  =  T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY sum(cost_of_treatment) ASC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code  =  T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY sum(cost_of_treatment) ASC LIMIT 1
SELECT Owners.owner_id , Owners.zip_code FROM Owners JOIN Dogs JOIN Charges GROUP BY Owners.owner_id ORDER BY SUM(Charges.charge_amount) DESC LIMIT 1
SELECT Owners.owner_id , Owners.zip_code FROM Owners JOIN Dogs GROUP BY Owners.owner_id ORDER BY SUM(Dogs.date_adopted) DESC LIMIT 1
SELECT Treatments.professional_id , Professionals.last_name FROM Professionals JOIN Treatments GROUP BY Treatments.professional_id HAVING COUNT(*) >= "value"
SELECT Treatments.professional_id , Professionals.home_phone , COUNT(*) FROM Professionals JOIN Treatments GROUP BY Professionals.professional_id HAVING COUNT(*) >= "value"
SELECT Professionals.first_name FROM Professionals JOIN Treatments WHERE Professionals.last_name < ( SELECT AVG(Treatments.cost_of_treatment) FROM Treatments )
SELECT Professionals.first_name FROM Professionals JOIN Treatments WHERE Professionals.last_name < ( SELECT AVG(Treatments.cost_of_treatment) FROM Treatments )
SELECT Treatments.date_of_treatment , Professionals.last_name FROM Treatments JOIN Professionals
SELECT Treatments.date_of_treatment , Professionals.last_name FROM Treatments JOIN Professionals
SELECT T1.cost_of_treatment ,  T2.treatment_type_description FROM Treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code  =  T2.treatment_type_code
SELECT T1.cost_of_treatment ,  T2.treatment_type_description FROM Treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code  =  T2.treatment_type_code
SELECT Owners.first_name , Owners.last_name FROM Owners JOIN Dogs
SELECT Owners.first_name , Owners.last_name FROM Owners JOIN Dogs
SELECT Owners.first_name , Owners.last_name FROM Owners JOIN Dogs
SELECT Owners.first_name , Owners.last_name FROM Owners JOIN Dogs
SELECT Dogs.name , Treatments.date_of_treatment FROM Treatments JOIN Dogs GROUP BY Dogs.breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Dogs.name , Treatments.date_of_treatment FROM Dogs JOIN Treatments GROUP BY Dogs.breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name ,  T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id  =  T2.owner_id WHERE T1.state  =  'Virginia'
SELECT T1.first_name ,  T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id  =  T2.owner_id WHERE T1.state  =  'Virginia'
SELECT Dogs.date_arrived FROM Dogs
SELECT Dogs.date_arrived FROM Dogs ORDER BY Dogs.date_departed DESC
SELECT Owners.last_name FROM Owners JOIN Dogs ORDER BY Dogs.age ASC LIMIT 1
SELECT Owners.last_name FROM Owners JOIN Dogs ORDER BY Dogs.age ASC LIMIT 1
SELECT email_address FROM Professionals WHERE state  =  'Hawaii' OR state  =  'Wisconsin'
SELECT email_address FROM Professionals WHERE state  =  'Hawaii' OR state  =  'Wisconsin'
SELECT Dogs.date_arrived , Dogs.date_departed FROM Dogs
SELECT Dogs.date_arrived , Dogs.date_departed FROM Dogs
SELECT count(DISTINCT dog_id) FROM Treatments
SELECT count(DISTINCT dog_id) FROM Treatments
SELECT count(DISTINCT professional_id) FROM Treatments
SELECT count(DISTINCT professional_id) FROM Treatments
SELECT Professionals.first_name FROM Professionals WHERE Professionals.city LIKE "value"
SELECT Professionals.first_name FROM Professionals WHERE Professionals.city LIKE "value"
SELECT Owners.last_name FROM Owners WHERE Owners.state LIKE "value"
SELECT Owners.first_name FROM Owners WHERE Owners.state LIKE "value"
SELECT COUNT(*) FROM Dogs WHERE Dogs.age < ( SELECT AVG(Dogs.age) FROM Dogs )
SELECT COUNT(*) FROM Dogs WHERE Dogs.age < ( SELECT AVG(Dogs.age) FROM Dogs )
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT COUNT(*) FROM Dogs WHERE Dogs.dog_id NOT IN ( SELECT Treatments.dog_id FROM Treatments )
SELECT COUNT(Treatments.dog_id) FROM Treatments
SELECT COUNT(*) FROM Owners WHERE Owners.owner_id NOT IN ( SELECT Dogs.owner_id FROM Dogs )
SELECT COUNT(*) FROM Owners WHERE Owners.owner_id NOT IN ( SELECT Dogs.owner_id FROM Dogs )
SELECT count(*) FROM Professionals WHERE professional_id NOT IN ( SELECT professional_id FROM Treatments )
SELECT count(*) FROM Professionals WHERE professional_id NOT IN ( SELECT professional_id FROM Treatments )
SELECT name ,  age ,  weight FROM Dogs WHERE abandoned_yn  =  1
SELECT name ,  age ,  weight FROM Dogs WHERE abandoned_yn  =  1
SELECT AVG(Dogs.age) FROM Dogs
SELECT AVG(Dogs.age) FROM Dogs
SELECT max(age) FROM Dogs
SELECT max(age) FROM Dogs
SELECT Charges.charge_type , SUM(Charges.charge_amount) FROM Charges GROUP BY Charges.charge_type
SELECT Charges.charge_type , SUM(Charges.charge_amount) FROM Charges GROUP BY Charges.charge_type
SELECT Charges.charge_type FROM Charges ORDER BY Charges.charge_amount DESC LIMIT 1
SELECT Charges.charge_amount FROM Charges ORDER BY Charges.charge_type DESC LIMIT 1
SELECT Professionals.email_address , Professionals.last_name FROM Professionals
SELECT Professionals.email_address , Professionals.last_name FROM Professionals
SELECT Sizes.size_code , Sizes.size_code FROM Sizes
SELECT DISTINCT breed_code ,  size_code FROM dogs
SELECT Professionals.first_name , Professionals.last_name FROM Professionals JOIN Treatments JOIN Treatment_Types
SELECT Professionals.first_name , Professionals.last_name FROM Professionals JOIN Treatments JOIN Treatment_Types
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT singer.Name FROM singer ORDER BY singer.Birth_Year ASC
SELECT singer.Name FROM singer ORDER BY singer.Birth_Year ASC
SELECT Birth_Year ,  Citizenship FROM singer
SELECT Birth_Year ,  Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT singer.Name FROM singer WHERE singer.Birth_Year < ( SELECT MAX(singer.Birth_Year) FROM singer WHERE singer.Birth_Year = "value" )
SELECT singer.Name FROM singer WHERE singer.Birth_Year < ( SELECT MAX(singer.Birth_Year) FROM singer WHERE singer.Birth_Year = "value" )
SELECT singer.Name FROM singer ORDER BY singer.Birth_Year ASC LIMIT 1
SELECT singer.Name FROM singer ORDER BY singer.Birth_Year ASC LIMIT 1
SELECT Citizenship ,  COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship ,  COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship ,  max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT Citizenship ,  max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT Title FROM song order by Sales desc limit 1
SELECT Title FROM song order by Sales desc limit 1
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID WHERE T2.Sales  >  300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID WHERE T2.Sales  >  300000
SELECT singer.Name FROM singer JOIN song GROUP BY song.Singer_ID HAVING COUNT(*) > "value"
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T1.Name HAVING COUNT(*)  >  1
SELECT T1.Name ,  max(T2.Highest_Position) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T1.Name
SELECT T1.Name ,  max(T2.Highest_Position) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT singer.Citizenship FROM singer WHERE singer.Birth_Year < "value" INTERSECT SELECT singer.Citizenship FROM singer WHERE singer.Birth_Year <= "value"
SELECT singer.Citizenship FROM singer WHERE singer.Birth_Year < "value" INTERSECT SELECT singer.Citizenship FROM singer WHERE singer.Birth_Year = "value"
