CREATE TABLE animals (
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg DECIMAL,
    species_id INT,
    owner_id INT,
    PRIMARY KEY (id)
);

CREATE TABLE vets (
  id INT PRIMARY KEY NOT NULL,
  name VARCHAR(250) NOT NULL,
  age INT NOT NULL,
  date_of_graduation DATE
);

CREATE TABLE specializations (
  species_id INT,
  vet_id INT,
  PRIMARY KEY (species_id,vet_id)
);

CREATE TABLE visits (
  animals_id INT,
  vet_id INT,
  date_of_visit TIMESTAMPTZ,
  PRIMARY KEY (animals_id, vet_id, date_of_visit)
);

ALTER TABLE animals
DROP COLUMN species;

ADD COLUMN species_id INT;
ADD COLUMN owner_id INT;
ADD COLUMN vets_id INT;

CREATE TABLE species(
  id INT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(250) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE owners(
  id INT GENERATED ALWAYS AS IDENTITY,
  ful_name VARCHAR(250) NOT NULL,
  age INT,
  PRIMARY KEY (id)
);


ALTER TABLE animals 
ADD CONSTRAINT fk_species
FOREIGN KEY(species_id)
REFERENCES species(id)
ON DELETE CASCADE;

ALTER TABLE animals
ADD CONSTRAINT fk_owners
FOREIGN KEY(owner_id)
REFERENCES owners(id)
ON DELETE CASCADE;

ALTER TABLE specializations 
ADD CONSTRAINT fk_vets
FOREIGN KEY(vet_id)
REFERENCES vet(id)
ON DELETE CASCADE;
