/* Database schema to keep the structure of entire database. */
                                     ^
CREATE TABLE animals (
 id BIGSERIAL NOT NULL PRIMARY KEY,
 name VARCHAR(50) NOT NULL,
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
PRIMARY KEY(owners_id));

alter table animals drop column owner_id;
alter table animals add species_id INT REFERENCES species(species_id);
alter table animals add owner_id INT REFERENCES owners(owners_id);

