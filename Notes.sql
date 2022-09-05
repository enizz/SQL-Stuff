--CREATE TABLE delete_me(
--	Id INT NOT NULL,
--	Name NVARCHAR(50)
--)

--DROP TABLE IF EXISTS delete_me

--CREATE TABLE SuperHeroes(
--	Id INT NOT NULL IDENTITY,
--	RealName NVARCHAR(50),
--	SuperHeroName NVARCHAR(50),
--	Power NVARCHAR(50),
--	Popularity TINYINT
--)

--add new data
--INSERT INTO SuperHeroes (RealName, SuperHeroName, Power, Popularity)
--VALUES ('Peter Parker', 'Spider-Man', 'Web-slinging', 83)

--selects ALL data from a given table
--SELECT * From SuperHeroes

--INSERT INTO SuperHeroes (RealName, SuperHeroName, Power, Popularity)
--VALUES ('Bruce Banner', 'The Hulk', 'Strength', 61),
--('Master Shake', 'The Drizzle', 'Precipitation', 69), 
--('Bruce Wayne', 'Batman', 'Rich', 0), 
--('Tony Stark', 'Iron Man', 'Rich', 1)

--SELECT *
--FROM SuperHeroes
--WHERE SuperHeroName = 'The Drizzle'

--Update SuperHeroes
--Set Power = 'Smash'
--WHERE SuperHeroName = 'The Hulk'

--DELETE FROM SuperHeroes
--WHERE ID > 5 --IN(6,7,8,9,10)

SELECT RealName FROM SuperHeroes
Where SuperHeroName = 'The Hulk'

INSERT INTO SuperHeroes (RealName, SuperHeroName, Power, Popularity)
VALUES ('Cluck Kent', 'Grant Chirpus', 'Finding Bugs', 0)

UPDATE SuperHeroes
SET Power = 'Flying'
WHERE SuperHeroName = 'Spider-Man'

DELETE FROM SuperHeroes
WHERE Id = '10'