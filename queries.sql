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
SELECT species FROM animals;
ROLLBACK;
select species FROM animals;

BEGIN;
UPDATE animals SET species = 'digimon' where name like '%mon';
UPDATE animals SET species = 'pokemon' where species IS NULL;
SELECT species FROM animals;
COMMIT;
SELECT species from animals;

BEGIN;
DELETE FROM animals;
select * from animals;
ROLLBACK;
select * from animals;

BEGIN;
DELETE from animals WHERE date_of_birth > '01-01-2022';
select name, date_of_birth from animals;

SAVEPOINT
UPDATE animals SET weight_kg = weight_kg * -1;
select name, weight_kg from animals;

ROLLBACK TO SAVEPOINT;

BEGIN;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
COMMIT;
select name, weight_kg from animals;

/*How many animals are there?*/
select count(*) from animals;

/*How many animals have never tried to escape?*/
select count(*) from animals where escape_attempts = 0;

/*What is the average weight of animals?*/
select AVG(weight_kg) from animals;

/*Who escapes the most, neutered or not neutered animals?*/
select count(*) asescape_attempts, neutered from animals group by neutered;

/*What is the minimum and maximum weight of each type of animal?*/

select MIN(weight_kg) as min_weight, MAX(weight_kg) as max_weight, species from animals group by species;

/*What is the average number of escape attempts per animal type of those born between 1990 and 2000?*/
select AVG(escape_attempts) as avg_escape_attempt, species from animals where date_of_birth between '01-01-1990' and '12-31-2000' group by species;

select name from animals JOIN owners ON owners.full_name = 'Melody Pond' AND owners.owners_id = animals.owner_id;
select * from animals JOIN species ON species.name = 'Pokemon' AND species.species_id = animals.species_id;
select name, full_name from animals RIGHT OUTER JOIN owners ON animals.owner_id = owners.owners_id;
select count(*), species.name from animals JOIN species ON animals.species_id = species.species_id group by species.species_id;

select animals.name, owners.full_name as owner, species.name as type, animals.species_id from animals
JOIN owners ON animals.owner_id = owners.owners_id
JOIN species ON animals.species_id = species.species_id
where species.name = 'Digimon' AND owners.full_name = 'Jennifer Orwell'; 

select animals.name, animals.escape_attempts, owners.full_name as owner from animals
JOIN owners ON animals.owner_id = owners.owners_id
WHERE owners.full_name = 'Dean Winchester' AND escape_attempts = 0;

select count(*), owners.full_name as owner from animals
JOIN owners ON animals.owner_id = owners.owners_id GROUP BY owners.full_name ORDER BY count(*) DESC LIMIT 1;

select vets.name as vet_name, animals.name as animal_name, date_of_visit from visits
JOIN vets ON vets.id = visits.vet_id
JOIN animals ON vet_id = (select id from vets where name = 'William Tatcher')
AND animals.id = visits.animal_id ORDER BY date_of_visit DESC LIMIT 1;

select vets.name as vet_name, animals.name as animal_name from visits
JOIN animals ON animals.id = visits.animal_id
AND vet_id = (select id from vets where name = 'Stephanie Mendez')
JOIN vets on vets.id = visits.vet_id;

select vets.name as vet_name, species.name as specialty from vets
LEFT JOIN specializations on vets.id = specializations.vet_id
LEFT JOIN species on species.species_id = specializations.species_id;

select vets.name as vet_name, animals.name as animal_name, visits.date_of_visit FROM animals
JOIN visits on animals.id = visits.animal_id
JOIN vets on vets.id = visits.vet_id
WHERE vets.name = 'Stephanie Mendez' AND date_of_visit BETWEEN '04-01-2020' AND '08-30-2020';

select animals.name, count(animal_id) from visits
JOIN animals ON animals.id = visits.animal_id
GROUP BY animals.name ORDER BY count(animal_id) DESC LIMIT 1;

select vets.name as vet_name, animals.name as animal_name, date_of_visit from visits
JOIN vets ON vets.id = visits.vet_id
JOIN animals ON vet_id = (select id from vets where name = 'Maisy Smith')
AND animals.id = visits.animal_id ORDER BY date_of_visit ASC LIMIT 1;


select * from visits 
FULL OUTER JOIN animals ON animals.id = visits.animal_id
FULL OUTER JOIN vets ON vets.id = visits.vet_id
ORDER BY date_of_visit DESC LIMIT 1;

select vets.name, count(visits.*) from vets
LEFT JOIN specializations ON specializations.vet_id = vets.id
LEFT JOIN visits ON visits.vet_id = vets.id
WHERE specializations.vet_id IS NULL 
GROUP BY vets.name;

select vets.name as vet_name, species.name as type,  count(visits.*) from animals
JOIN species ON species.id = animals.species_id
JOIN visits ON visits.animal_id = animals.id
JOIN vets on vets.id = visits.vet_id AND vets.name = 'Maisy Smith'
GROUP BY species.name, vets.name 
ORDER BY count(species_id) DESC LIMIT 1;




