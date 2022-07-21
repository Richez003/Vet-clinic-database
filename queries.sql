/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name = 'Luna';
select * from animals where name like '%mon';
select * from animals where date_of_birth BETWEEN '2016-1-1' AND '2019-12-31';
select * from animals where neutered = true and escape_attempts < 3;
select date_of_birth from animals where name = 'Agumon' OR name = 'Pikachu';
select name, escape_attempts from animals where weight_kg > 10.5;
select * from animals where neutered = true;
select * from animals where name != 'Gabumon';
select * from animals where weight_kg BETWEEN 10.4 AND 17.3;

BEGIN;
UPDATE animals SET species = 'unspecified';
SELECT name, species FROM animals;

BEGIN;
UPDATE animals SET species = 'digimon' where name like '%mon';
UPDATE animals SET species = 'pokemon' where species IS NULL;

BEGIN;
DELETE from animals WHERE date_of_birth > '01-01-2022';

SAVEPOINT
UPDATE animals SET weight_kg = weight_kg * -1;

ROLLBACK TO SAVEPOINT;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;

/*How many animals are there?*/
select count(*) from animals;

/*How many animals have never tried to escape?*/
select count(*) from animals where escape_attempts = 0;

/*What is the average weight of animals?*/
select AVG(weight_kg) from animals;

/*Who escapes the most, neutered or not neutered animals?*/
select count(escape_attempts) as escape_counts, neutered from animals group by neutered;

/*What is the minimum and maximum weight of each type of animal?*/

select MIN(weight_kg) as min_weight, MAX(weight_kg) as max_weight, species from animals group by species;

/*What is the average number of escape attempts per animal type of those born between 1990 and 2000?*/
select AVG(escape_attempts) as avg_escape_attempt, species from animals where date_of_birth between '01-01-1990' and '12-31-2000' group by species;