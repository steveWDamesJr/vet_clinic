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

SELECT owners.full_name, COUNT(owners.full_name) FROM animals
lEFT JOIN owners ON animals.owner_id = owners.id GROUP BY owners.full_name
ORDER BY COUNT(owners.full_name) DESC;


SELECT * FROM visits WHERE vet_id = '1' ORDER BY date_of_visit DESC LIMIT 1;

SELECT DISTINCT COUNT(visits.animals_id) FROM visits WHERE vet_id = '3';

SELECT V.id AS vets_id, V.name, S.id AS species_id, S.name FROM vets AS V FULL OUTER JOIN species AS S ON V.id = S.id;

SELECT * FROM visits WHERE vet_id = '3' AND date_of_visit BETWEEN '2020-04-01' AND '2020-08-30';

SELECT visits.animals_id, COUNT(visits.animals_id) as counted FROM visits GROUP BY animals_id ORDER BY counted DESC LIMIT 4;

SELECT visits.animals_id, visits.date_of_visit, COUNT(visits.animals_id) as counted FROM visits WHERE vet_id = '2' GROUP BY date_of_visit,animals_id ORDER BY date_of_visit LIMIT 1;

SELECT * FROM visits ORDER BY visits.date_of_visit DESC LIMIT 1;

SELECT COUNT(visits.date_of_visit) FROM visits FULL OUTER JOIN specializations ON visits.vet_id = specializations.vet_id WHERE specializations.vet_id is null ORDER BY COUNT DESC
LIMIT 1;

SELECT species.id,
    COUNT(species.id)
FROM animals
    FULL JOIN species ON animals.species_id = species.id
    JOIN visits ON animals.id = visits.animals_id
WHERE visits.vet_id = '2'
GROUP BY species.id
ORDER BY COUNT DESC
LIMIT 1;
