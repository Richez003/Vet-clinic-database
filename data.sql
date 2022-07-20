
vet_clinic=# CREATE TABLE animals (
vet_clinic(# id BIGSERIAL NOT NULL PRIMARY KEY,
vet_clinic(# name VARCHAR(50) NOT NULL,
vet_clinic(# date_of_birth DATE NOT NULL,
vet_clinic(# neutered BOOLEAN NOT NULL,
vet_clinic(# escape_attempts INT NOT NULL,
vet_clinic(# weight_kg DECIMAL NOT NULL)))))));

CREATE TABLE
vet_clinic=# INSERT INTO animals (name, date_of_birth, neutered, escape_attempts, weight_kg)
vet_clinic-# VALUES ('Agumon', date'2020-02-03', boolean'true', int'0', '10.23');
INSERT 0 1
vet_clinic=# INSERT INTO animals (name, date_of_birth, neutered, escape_attempts, weight_kg)
vet_clinic-# VALUES ('Gabumon', date'2018-11-15', boolean'true', int'2', '8');
INSERT 0 1
vet_clinic=# INSERT INTO animals (name, date_of_birth, neutered, escape_attempts, weight_kg)
vet_clinic-# VALUES ('Pikachu', date'2021-01-07', boolean'false', int'1', '15.04');
INSERT 0 1
vet_clinic=# INSERT INTO animals (name, date_of_birth, neutered, escape_attempts, weight_kg)
vet_clinic-# VALUES ('Devimon', date'2017-05-12', boolean'true', int'5', '11');
INSERT 0 1
vet_clinic=# SELECT * FROM animals
vet_clinic-# SELECT * FROM animals;
