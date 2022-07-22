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
ALTER TABLE animals RENAME species TO species_id;

UPDATE animals SET owner_id = 1 WHERE name = 'Agumon';
UPDATE animals SET owner_id = 2 WHERE name = 'Gabumon' OR name = 'Pikachu';
UPDATE animals SET owner_id = 3 WHERE name = 'Devimon' OR name = 'Plantmon';
UPDATE animals SET owner_id = 4 WHERE name = 'Charmander' OR name = 'Squirtle' OR name = 'Blossom';
UPDATE animals SET owner_id = 5 WHERE name = 'Angemon' OR name = 'Boarmon';



