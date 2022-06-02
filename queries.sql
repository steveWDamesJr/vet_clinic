SELECT * FROM animals WHERE name LIKE '%mon%';
SELECT * FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-01-01';
SELECT * FROM animals WHERE neutered = 'true' AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name  = 'Agumon' OR name = 'Pikachu';
SELECT name,  escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = 'true';
SELECT * FROM animals WHERE name != 'Gabumon';
SELECT * FROM animals WHERE weight_kg >= '10.4' OR weight_kg <= '17.3';


SELECT COUNT(*) FROM animals;
SELECT COUNT(escape_attempts) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT neutered, AVG(escape_attempts) FROM animals GROUP BY neutered;
SELECT species, MIN(weight_kg), MAX(weight_kg) FROM animals GROUP BY species;
SELECT species, AVG(escape_attempts) FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-01-31' GROUP BY species;


SELECT full_name, name FROM owners
INNER JOIN animals ON animals.owner_id = owners.id WHERE full_name = 'Melody Pond';

SELECT animals.name FROM animals
INNER JOIN species ON animals.species_id = species.id WHERE species.name = 'Pokemon';

SELECT full_name, name FROM owners 
FULL OUTER JOIN animals ON animals.owner_id = owners.id;

SELECT species.name, animals.name FROM species
INNER JOIN animals ON animals.species_id = species.id WHERE species.id= species_id;

SELECT full_name, name FROM owners 
INNER JOIN animals ON animals.owner_id = owners.id WHERE full_name = 'Jennifer Orwell' AND species_id = '2';

SELECT full_name, name FROM owners 
INNER JOIN animals ON animals.owner_id = owners.id WHERE full_name = 'Dean Winchester' AND escape_attempts = '0';

SELECT full_name, animals.name FROM owners
INNER JOIN animals ON animals.owner_id = owners.id WHERE owners.id= owner_id;