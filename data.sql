-- Animals Tables

INSERT INTO animals (NAME, DATE_OF_BIRTH, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG) VALUES ('Agumon', '2020-02-03', '0', 'true', '10.23');
INSERT INTO animals (NAME, DATE_OF_BIRTH, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG) VALUES ('Gabumon', '2018-11-15', '2', 'true', '11');
INSERT INTO animals (NAME, DATE_OF_BIRTH, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG) VALUES ('Pikachu', '2021-01-07', '1', 'false', '15.04');
INSERT INTO animals (NAME, DATE_OF_BIRTH, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG) VALUES ('Devimon', '2017-05-12', '5', 'true', '11');

INSERT INTO animals (NAME, DATE_OF_BIRTH, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG) VALUES ('Charmander', '2020-02-08', '0', 'false', '11');
INSERT INTO animals (NAME, DATE_OF_BIRTH, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG) VALUES ('Plantmon', '2021-11-15', '2', 'true', '5.7');
INSERT INTO animals (NAME, DATE_OF_BIRTH, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG) VALUES ('Squirtle', '1993-04-02', '3', 'false', '12.13');
INSERT INTO animals (NAME, DATE_OF_BIRTH, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG) VALUES ('Angemon', '2005-06-12', '1', 'true', '45');
INSERT INTO animals (NAME, DATE_OF_BIRTH, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG) VALUES ('Boarmon', '2005-06-07', '7', 'true', '20.4');
INSERT INTO animals (NAME, DATE_OF_BIRTH, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG) VALUES ('Blossom', '1998-10-13', '3', 'true', '17');
INSERT INTO animals (NAME, DATE_OF_BIRTH, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG) VALUES ('Ditto', '2022-05-14', '4', 'true', '22');


-- Owners table

INSERT INTO owners (FULL_NAME, AGE) VALUES ('Sam Smith', '34');
INSERT INTO owners (FULL_NAME, AGE) VALUES ('Jennifer Orwell', '19');
INSERT INTO owners (FULL_NAME, AGE) VALUES ('Bob', '45');
INSERT INTO owners (FULL_NAME, AGE) VALUES ('Melody Pond', '77');
INSERT INTO owners (FULL_NAME, AGE) VALUES ('Dean Winchester', '14');
INSERT INTO owners (FULL_NAME, AGE) VALUES ('Jodie Whittaker', '38');


-- Species table

INSERT INTO species (NAME) VALUES ('Pokemon');
INSERT INTO species (NAME) VALUES ('Digimon');


-- Set species_id

BEGIN;
UPDATE animals
SET species_id = '1'
WHERE name NOT LIKE '%mon%';
-- UPDATE 4

UPDATE animals
SET species_id = '2'
WHERE name LIKE '%mon%';
COMMIT;
-- UPDATE 6


-- Set owner_id 
BEGIN;
UPDATE animals
SET owner_id = 1
WHERE name = 'Agumon';
-- UPDATE 1

UPDATE animals
SET owner_id = 2
WHERE name = 'Gabumon' OR name = 'Pikachu';
-- UPDATE 2

UPDATE animals
SET owner_id = 3
WHERE name = 'Devimon' OR name = 'Plantmon';
-- UPDATE 2

UPDATE animals
SET owner_id = 4
WHERE name = 'Charmander' OR name = 'Squirtle' OR name = 'Blossom';
-- UPDATE 3

UPDATE animals
SET owner_id = 5
WHERE name = 'Angemon' OR name = 'Boarmon';
COMMIT;
-- UPDATE 2