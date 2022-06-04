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


-- Vets tables

INSERT INTO vets (NAME, AGE, DATE_OF_GRADUATION) VALUES ('William Tatcher','45','2000-04-23');
INSERT INTO vets (NAME, AGE, DATE_OF_GRADUATION) VALUES ('Maisy Smith','26','2019-01-17');
INSERT INTO vets (NAME, AGE, DATE_OF_GRADUATION) VALUES ('Stephanie Mendez','64','1981-05-04');
INSERT INTO vets (NAME, AGE, DATE_OF_GRADUATION) VALUES ('Jack Harkness','38','2008-06-08');

-- Specialities

INSERT INTO specializations VALUES ('1','1');
INSERT INTO specializations VALUES ('3','1');
INSERT INTO specializations VALUES ('3','2');
INSERT INTO specializations VALUES ('4','2');

-- Visits

INSERT INTO visits VALUES ('3','1','2020-05-24 08:13:39-05');
INSERT INTO visits VALUES ('3','3','2020-07-22 14:12:22-05');
INSERT INTO visits VALUES ('4','4','2021-02-02 07:14:30-05');
INSERT INTO visits VALUES ('5','2','2020-01-05 08:52:51-05');
INSERT INTO visits VALUES ('5','2','2020-03-08 09:55:26-05');
INSERT INTO visits VALUES ('5','2','2020-05-14 13:41:38-05');
INSERT INTO visits VALUES ('6','3','2021-05-04 10:26:19-05');
INSERT INTO visits VALUES ('7','4','2021-02-24 09:22:10-05');
INSERT INTO visits VALUES ('8','2','2019-12-21 11:18:24-05');
INSERT INTO visits VALUES ('8','1','2020-08-10 13:58:17-05');
INSERT INTO visits VALUES ('8','2','2021-04-07 09:08:28-05');
INSERT INTO visits VALUES ('9','3','2019-09-29 12:25:36-05');
INSERT INTO visits VALUES ('10','4','2020-10-03 11:17:42-05');
INSERT INTO visits VALUES ('10','4','2020-11-04 15:40:51-05');
INSERT INTO visits VALUES ('10','4','2019-01-24 10:39:50-05');
INSERT INTO visits VALUES ('11','2','2019-05-15 11:27:11-05');
INSERT INTO visits VALUES ('11','2','2020-02-27 10:15:33-05');
INSERT INTO visits VALUES ('11','2','2020-08-03 08:10:44-05');
INSERT INTO visits VALUES ('12','3','2020-05-24 09:07:46-05');
INSERT INTO visits VALUES ('12','1','2021-01-11 07:16:46-05');

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

