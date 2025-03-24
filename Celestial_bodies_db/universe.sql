CREATE DATABASE universe

CREATE TABLE galaxy(
    galaxy_id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(255) UNIQUE NOT NULL,
    age_in_millions_of_years INT,
    description TEXT,
    number_of_stars_in_millions INT 
);

CREATE TABLE star(
    star_id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(255) UNIQUE NOT NULL,
    age_in_millions_of_years INT,
    description TEXT,
    number_of_planets INT,
    galaxy_id INT REFERENCES galaxy(galaxy_id) 
);

CREATE TABLE planet(
    planet_id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(255) UNIQUE NOT NULL,
    age_in_millions_of_years INT,
    description TEXT,
    number_of_moons INT,
    has_water BOOLEAN,
    star_id INT REFERENCES star(star_id) 
);

CREATE TABLE moon(
    moon_id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(255) UNIQUE NOT NULL,
    age_in_millions_of_years INT,
    description TEXT,
    has_water BOOLEAN,
    distance_from_planet NUMERIC(10,2),
    planet_id INT REFERENCES planet(planet_id)  
);

CREATE TABLE kind(
    kind_id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(255) UNIQUE NOT NULL,
    kind_description TEXT
);

CREATE TABLE other(
    other_id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(255) UNIQUE NOT NULL,
    age_in_millions_of_years INT,
    description TEXT,
    kind_id INT REFERENCES kind(kind_id)
);