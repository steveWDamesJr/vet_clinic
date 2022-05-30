INSERT INTO animals (ID, NAME, DATE_OF_BIRTH, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG) VALUES ('1','Agumon', '2020-02-03', '0', 'true', '10.23');
INSERT INTO animals (ID, NAME, DATE_OF_BIRTH, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG) VALUES ('2','Gabumon', '2018-11-15', '2', 'true', '11');
INSERT INTO animals (ID, NAME, DATE_OF_BIRTH, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG) VALUES ('3','Pikachu', '2021-01-07', '1', 'false', '15.04');
INSERT INTO animals (ID, NAME, DATE_OF_BIRTH, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG) VALUES ('4','Devimon', '2017-05-12', '5', 'true', '11');
SELECT name,  escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = 'true';
SELECT * FROM animals WHERE name != 'Gabumon';
SELECT * FROM animals WHERE weight_kg >= '10.4' OR weight_kg <= '17.3';
