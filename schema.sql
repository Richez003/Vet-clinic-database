/* Database schema to keep the structure of entire database. */
CREATE DATABASE vet_clinic;
                                     ^
CREATE TABLE animals (
 id BIGSERIAL NOT NULL PRIMARY KEY,
 name VARCHAR(100) NOT NULL,
 date_of_birth DATE NOT NULL,
 neutered BOOLEAN NOT NULL,
 escape_attempts INT NOT NULL,
 weight_kg DECIMAL NOT NULL);

/*species table*/
CREATE TABLE species (
species_id INT GENERATED ALWAYS AS IDENTITY,
name VARCHAR(100) NOT NULL,
PRIMARY KEY(species_id));

ALTER TABLE owners ADD age INT NOT NULL;
ALTER TABLE animals RENAME species_id TO species;
ALTER TABLE animals DROP COLUMN species;
ALTER TABLE animals ADD COLUMN species_id;
ALTER TABLE animals ADD COLUMN INT;


/*owners table*/
CREATE TABLE owners(
full_name VARCHAR(100) NOT NULL,
owners_id INT GENERATED ALWAYS AS IDENTITY,
age INT,
PRIMARY KEY(owners_id));

ALTER TABLE owners ALTER COLUMN age DROP NOT NULL;


ALTER TABLE REMOVE species;
alter table animals add species_id INT REFERENCES species(species_id);
alter table animals add owner_id INT REFERENCES owners(owners_id);

 CREATE TABLE vets (
id BIGSERIAL NOT NULL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
INT NOT NULL,
date_of_graduation DATE NOT NULL,

CREATE TABLE specializations(
    vet_id INT REFERENCES vets(id),
    species_id INT REFERENCES species(species_id)
);

CREATE TABLE visits(
    vet_id INT REFERENCES vets(id),
    animal_id INT REFERENCES animals(id),
    date_of_visit DATE NOT NULL
);

-- Add an email column to your owners table
ALTER TABLE owners ADD COLUMN email VARCHAR(120);
