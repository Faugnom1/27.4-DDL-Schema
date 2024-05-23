CREATE TABLE planets (
    planet_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    distance_from_sun FLOAT NOT NULL
);

CREATE TABLE missions (
    mission_id SERIAL PRIMARY KEY,
    mission_name VARCHAR(255) NOT NULL UNIQUE,
    planet_id INT REFERENCES planets(planet_id)
);
