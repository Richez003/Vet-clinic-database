/* Database schema to keep the structure of entire database. */
                                     ^
CREATE TABLE animals (
 id BIGSERIAL NOT NULL PRIMARY KEY,
 name VARCHAR(50) NOT NULL,
 date_of_birth DATE NOT NULL,
 neutered BOOLEAN NOT NULL,
 escape_attempts INT NOT NULL,
 weight_kg DECIMAL NOT NULL);