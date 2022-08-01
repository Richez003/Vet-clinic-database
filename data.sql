/*animals data*/
INSERT INTO animals (name, date_of_birth, neutered, escape_attempts, weight_kg)
VALUES ('Agumon', date'2020-02-03', boolean'true', int'0', '10.23');
INSERT 0 1
INSERT INTO animals (name, date_of_birth, neutered, escape_attempts, weight_kg)
VALUES ('Gabumon', date'2018-11-15', boolean'true', int'2', '8');
INSERT 0 1
INSERT INTO animals (name, date_of_birth, neutered, escape_attempts, weight_kg)
VALUES ('Pikachu', date'2021-01-07', boolean'false', int'1', '15.04');
INSERT 0 1
INSERT INTO animals (name, date_of_birth, neutered, escape_attempts, weight_kg)
VALUES ('Devimon', date'2017-05-12', boolean'true', int'5', '11');
INSERT 0 1
INSERT INTO animals (name, date_of_birth, neutered, escape_attempts, weight_kg)
VALUES ('Charmander', date'2020-02-08', boolean'false', int'0', '-11');
INSERT 0 1
INSERT INTO animals (name, date_of_birth, neutered, escape_attempts, weight_kg)
VALUES ('Plantmon', date'2021-11-15', boolean'true', int'2', '-5.7');
INSERT 0 1
INSERT INTO animals (name, date_of_birth, neutered, escape_attempts, weight_kg)
VALUES ('Squirtle', date'1993-04-02', boolean'false', int'3', '-12.13');
INSERT 0 1
INSERT INTO animals (name, date_of_birth, neutered, escape_attempts, weight_kg)
VALUES ('Angemon', date'2005-01-12', boolean'true', int'1', '-45');
INSERT 0 1
INSERT INTO animals (name, date_of_birth, neutered, escape_attempts, weight_kg)
VALUES ('Boarmon', date'2005-07-12', boolean'true', int'7', '20.4');
INSERT 0 1
INSERT INTO animals (name, date_of_birth, neutered, escape_attempts, weight_kg)
VALUES ('Blossom', date'1998-10-13', boolean'true', int'3', '17');
INSERT 0 1
INSERT INTO animals (name, date_of_birth, neutered, escape_attempts, weight_kg)
VALUES ('Ditto', date'2022-05-14', boolean'true', int'4', '22');
INSERT 0 1

/*species data*/
INSERT INTO species (name) VALUES ('Pokemon');
INSERT 0 1
INSERT INTO species (name) VALUES ('Digimon');
INSERT 0 1

/*owners data*/
INSERT INTO owners (full_name, age) VALUES ('Jennifer Orwell', 19);
INSERT 0 1
INSERT INTO owners (full_name, age) VALUES ('Bob', 45);
INSERT 0 1
INSERT INTO owners (full_name, age) VALUES ('Melody Pond', 77);
INSERT 0 1
INSERT INTO owners (full_name, age) VALUES ('Dean Winchester', 14);
INSERT 0 1
INSERT INTO owners (full_name, age) VALUES ('Jodie Whittaker', 38);
INSERT 0 1
INSERT INTO owners (full_name, age) VALUES ('Sam Smith', 34);
INSERT 0 1

ALTER TABLE animals RENAME species TO species_id;

UPDATE animals SET owner_id = 1 WHERE name = 'Agumon';
UPDATE animals SET owner_id = 2 WHERE name = 'Gabumon' OR name = 'Pikachu';
UPDATE animals SET owner_id = 3 WHERE name = 'Devimon' OR name = 'Plantmon';
UPDATE animals SET owner_id = 4 WHERE name = 'Charmander' OR name = 'Squirtle' OR name = 'Blossom';
UPDATE animals SET owner_id = 5 WHERE name = 'Angemon' OR name = 'Boarmon';


/*vet data*/
INSERT INTO vets (name, age, date_of_graduation) VALUES ('William Tatcher', 45, '2000-04-23');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Maisy Smith', 26, '2019-01-17');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Stephanie Mendez', 64, '1981-05-04');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Jack Harkness', 38, '2008-06-08');

/*SPECIALIZATION DATA*/
INSERT INTO specializations VALUES ((SELECT id FROM vets WHERE name = 'William Tatcher'),(SELECT id FROM species WHERE name = 'Pokemon'));
INSERT INTO specializations VALUES ((SELECT id FROM vets WHERE name = 'Stephanie Mendez'),(SELECT id FROM species WHERE name = 'Digimon'));
INSERT INTO specializations VALUES ((SELECT id FROM vets WHERE name = 'Stephanie Mendez'),(SELECT id FROM species WHERE name = 'Pokemon'));
INSERT INTO specializations VALUES ((SELECT id FROM vets WHERE name = 'Jack Harkness'),(SELECT id FROM species WHERE name = 'Digimon'));

/*VISITS DATA*/
INSERT INTO visits VALUES ((SELECT id FROM vets WHERE name = 'William Tatcher'), (SELECT id FROM animals WHERE name = 'Agmon'), '2020-05-24');
INSERT INTO visits VALUES ((SELECT id FROM vets WHERE name = 'Stephanie Mendez'), (SELECT id FROM animals WHERE name = 'Agmon'), '2020-06-22');
INSERT INTO visits VALUES ((SELECT id FROM vets WHERE name = 'Jack Harkness'), (SELECT id FROM animals WHERE name = 'Gabumon'), '2021-02-02');
INSERT INTO visits VALUES ((SELECT id FROM vets WHERE name = 'Maisy Smith'), (SELECT id FROM animals WHERE name = 'Pikachu'), '2020-01-05');
INSERT INTO visits VALUES ((SELECT id FROM vets WHERE name = 'Maisy Smith'), (SELECT id FROM animals WHERE name = 'Pikachu'), '2020-03-08');
INSERT INTO visits VALUES ((SELECT id FROM vets WHERE name = 'Maisy Smith'), (SELECT id FROM animals WHERE name = 'Pikachu'), '2020-05-14');
INSERT INTO visits VALUES ((SELECT id FROM vets WHERE name = 'Stephanie Mendez'), (SELECT id FROM animals WHERE name = 'Devimon'), '2021-05-04');
INSERT INTO visits VALUES ((SELECT id FROM vets WHERE name = 'Jack Harkness'), (SELECT id FROM animals WHERE name = 'Charmender'), '2021-02-24');
INSERT INTO visits VALUES ((SELECT id FROM vets WHERE name = 'Maisy Smith'), (SELECT id FROM animals WHERE name = 'Plantmon'), '2019-12-21');
INSERT INTO visits VALUES ((SELECT id FROM vets WHERE name = 'William Tatcher'), (SELECT id FROM animals WHERE name = 'Plantmon'), '2020-08-10');
INSERT INTO visits VALUES ((SELECT id FROM vets WHERE name = 'Maisy Smith'), (SELECT id FROM animals WHERE name = 'Plantmon'), '2021-04-07');
INSERT INTO visits VALUES ((SELECT id FROM vets WHERE name = 'Stephanie Mendez'), (SELECT id FROM animals WHERE name = 'Squirtle'), '2019-09-29');
INSERT INTO visits VALUES ((SELECT id FROM vets WHERE name = 'Jack Harkness'), (SELECT id FROM animals WHERE name = 'Angemon'), '2020-10-03');
INSERT INTO visits VALUES ((SELECT id FROM vets WHERE name = 'Jack Harkness'), (SELECT id FROM animals WHERE name = 'Angemon'), '2020-10-03');
INSERT INTO visits VALUES ((SELECT id FROM vets WHERE name = 'Jack Harkness'), (SELECT id FROM animals WHERE name = 'Angemon'), '2020-11-04');
INSERT INTO visits VALUES ((SELECT id FROM vets WHERE name = 'Maisy Smith'), (SELECT id FROM animals WHERE name = 'Boarmon'), '2019-01-24');
INSERT INTO visits VALUES ((SELECT id FROM vets WHERE name = 'Maisy Smith'), (SELECT id FROM animals WHERE name = 'Boarmon'), '2019-05-15');
INSERT INTO visits VALUES ((SELECT id FROM vets WHERE name = 'Maisy Smith'), (SELECT id FROM animals WHERE name = 'Boarmon'), '2020-02-27');
INSERT INTO visits VALUES ((SELECT id FROM vets WHERE name = 'Maisy Smith'), (SELECT id FROM animals WHERE name = 'Boarmon'), '2020-08-03');
INSERT INTO visits VALUES ((SELECT id FROM vets WHERE name = 'Stephanie Mendez'), (SELECT id FROM animals WHERE name = 'Blossom'), '2020-05-24');
INSERT INTO visits VALUES ((SELECT id FROM vets WHERE name = 'William Tatcher'), (SELECT id FROM animals WHERE name = 'Blossom'), '2021-01-11');

-- This will add 3.594.280 visits considering you have 10 animals, 4 vets, and it will use around ~87.000 timestamps (~4min approx.)
INSERT INTO visits (animal_id, vet_id, date_of_visit) SELECT * FROM (SELECT id FROM animals) animal_ids, (SELECT id FROM vets) vets_ids, generate_series('1980-01-01'::timestamp, '2021-01-01', '4 hours') visit_timestamp;

-- This will add 2.500.000 owners with full_name = 'Owner <X>' and email = 'owner_<X>@email.com' (~2min approx.)
insert into owners (full_name, email) select 'Owner ' || generate_series(1,2500000), 'owner_' || generate_series(1,2500000) || '@mail.com';

