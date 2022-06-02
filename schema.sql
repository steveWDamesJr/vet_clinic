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

ALTER TABLE animals
DROP COLUMN species;

ADD COLUMN species_id INT;
ADD COLUMN owner_id INT;

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
