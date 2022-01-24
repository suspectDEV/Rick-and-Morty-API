CREATE DATABASE v_dev;
DROP TABLE IF EXISTS character;
DROP TABLE IF EXISTS location;

-- Location

CREATE TABLE location(
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  type VARCHAR(100),
  dimension VARCHAR(100),
  url VARCHAR(100),
  created VARCHAR(100)
);

INSERT INTO location (name, type, dimension, url, created) VALUES
  ('Earth (C-137)', 'Planet', 'Dimension C-137', 'https://rickandmortyapi.com/api/location/1', 'Hoy'),
  ('Abadango', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/2', 'Hoy'),
  ('Lugar #3', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/3', 'Hoy'),
  ('Lugar #4', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/4', 'Hoy'),
  ('Lugar #5', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/5', 'Hoy'),
  ('Lugar #6', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/6', 'Hoy'),
  ('Lugar #7', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/7', 'Hoy'),
  ('Lugar #8', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/8', 'Hoy'),
  ('Lugar #9', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/9', 'Hoy'),
  ('Lugar #10', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/10', 'Hoy'),
  ('Lugar #11', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/11', 'Hoy'),
  ('Lugar #12', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/12', 'Hoy'),
  ('Lugar #13', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/13', 'Hoy'),
  ('Lugar #14', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/14', 'Hoy'),
  ('Lugar #15', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/15', 'Hoy'),
  ('Lugar #16', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/16', 'Hoy'),
  ('Lugar #17', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/17', 'Hoy'),
  ('Lugar #18', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/18', 'Hoy'),
  ('Lugar #19', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/19', 'Hoy'),
  ('Lugar #20', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/20', 'Hoy'),
  ('Lugar #21', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/21', 'Hoy'),
  ('Lugar #22', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/22', 'Hoy'),
  ('Lugar #23', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/23', 'Hoy'),
  ('Lugar #24', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/24', 'Hoy'),
  ('Lugar #25', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/25', 'Hoy'),
  ('Lugar #26', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/26', 'Hoy'),
  ('Lugar #27', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/27', 'Hoy'),
  ('Lugar #28', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/28', 'Hoy'),
  ('Lugar #29', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/29', 'Hoy'),
  ('Lugar #30', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/30', 'Hoy'),
  ('Lugar #31', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/31', 'Hoy'),
  ('Lugar #32', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/32', 'Hoy'),
  ('Lugar #33', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/33', 'Hoy'),
  ('Lugar #34', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/34', 'Hoy'),
  ('Lugar #35', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/35', 'Hoy'),
  ('Lugar #36', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/36', 'Hoy'),
  ('Lugar #37', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/37', 'Hoy'),
  ('Lugar #38', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/38', 'Hoy'),
  ('Lugar #39', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/39', 'Hoy'),
  ('Lugar #40', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/40', 'Hoy'),
  ('Lugar #41', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/41', 'Hoy'),
  ('Lugar #42', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/42', 'Hoy'),
  ('Lugar #43', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/43', 'Hoy'),
  ('Lugar #44', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/44', 'Hoy'),
  ('Lugar #45', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/45', 'Hoy'),
  ('Lugar #46', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/46', 'Hoy'),
  ('Lugar #47', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/47', 'Hoy'),
  ('Lugar #48', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/48', 'Hoy'),
  ('Lugar #49', 'Cluster', 'unknown', 'https://rickandmortyapi.com/api/location/49', 'Hoy');



-- Character

CREATE TABLE character(
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  status VARCHAR(100),
  species VARCHAR(100),
  type VARCHAR(100),
  gender VARCHAR(100),
  image VARCHAR(200),
  location_id INT,
  CONSTRAINT fk_location FOREIGN KEY(location_id) REFERENCES location(id),
  url VARCHAR(100),
  created VARCHAR(100)
);

INSERT INTO character (name, status, species, type, gender, image, location_id, url, created) VALUES
  ('Rick Sanchez', 'Alive', 'Human', '', 'Male', 'https://rickandmortyapi.com/api/character/avatar/1.jpeg', 1, 'https://', '2022-01-01'),
  ('Morty Smith', 'Alive', 'Human', '', 'Male', 'https://rickandmortyapi.com/api/character/avatar/2.jpeg', 1, 'https://', '2022-01-01'),
  ('Personaje 3', 'Alive', 'Human', '', 'Male', 'https://rickandmortyapi.com/api/character/avatar/3.jpeg', 1, 'https://', '2022-01-01'),
  ('Personaje 4', 'Alive', 'Human', '', 'Male', 'https://rickandmortyapi.com/api/character/avatar/4.jpeg', 1, 'https://', '2022-01-01'),
  ('Personaje 5', 'Alive', 'Human', '', 'Male', 'https://rickandmortyapi.com/api/character/avatar/5.jpeg', 1, 'https://', '2022-01-01'),
  ('Personaje 6', 'Alive', 'Human', '', 'Male', 'https://rickandmortyapi.com/api/character/avatar/6.jpeg', 1, 'https://', '2022-01-01'),
  ('Personaje 7', 'Alive', 'Human', '', 'Male', 'https://rickandmortyapi.com/api/character/avatar/7.jpeg', 1, 'https://', '2022-01-01'),
  ('Personaje 8', 'Alive', 'Human', '', 'Male', 'https://rickandmortyapi.com/api/character/avatar/8.jpeg', 1, 'https://', '2022-01-01'),
  ('Personaje 9', 'Alive', 'Human', '', 'Male', 'https://rickandmortyapi.com/api/character/avatar/9.jpeg', 1, 'https://', '2022-01-01'),
  ('Personaje 10', 'Alive', 'Human', '', 'Male', 'https://rickandmortyapi.com/api/character/avatar/10.jpeg', 1, 'https://', '2022-01-01'),
  ('Personaje 11', 'Alive', 'Human', '', 'Male', 'https://rickandmortyapi.com/api/character/avatar/11.jpeg', 1, 'https://', '2022-01-01'),
  ('Personaje 12', 'Alive', 'Human', '', 'Male', 'https://rickandmortyapi.com/api/character/avatar/12.jpeg', 1, 'https://', '2022-01-01'),
  ('Personaje 13', 'Alive', 'Human', '', 'Male', 'https://rickandmortyapi.com/api/character/avatar/13.jpeg', 1, 'https://', '2022-01-01'),
  ('Personaje 14', 'Alive', 'Human', '', 'Male', 'https://rickandmortyapi.com/api/character/avatar/14.jpeg', 1, 'https://', '2022-01-01'),
  ('Personaje 15', 'Alive', 'Human', '', 'Male', 'https://rickandmortyapi.com/api/character/avatar/15.jpeg', 1, 'https://', '2022-01-01'),
  ('Personaje 16', 'Alive', 'Human', '', 'Male', 'https://rickandmortyapi.com/api/character/avatar/16.jpeg', 2, 'https://', '2022-01-01'),
  ('Personaje 17', 'Alive', 'Human', '', 'Male', 'https://rickandmortyapi.com/api/character/avatar/17.jpeg', 2, 'https://', '2022-01-01'),
  ('Personaje 18', 'Alive', 'Human', '', 'Male', 'https://rickandmortyapi.com/api/character/avatar/18.jpeg', 2, 'https://', '2022-01-01'),
  ('Personaje 19', 'Alive', 'Human', '', 'Male', 'https://rickandmortyapi.com/api/character/avatar/19.jpeg', 2, 'https://', '2022-01-01'),
  ('Personaje 20', 'Alive', 'Human', '', 'Male', 'https://rickandmortyapi.com/api/character/avatar/20.jpeg', 2, 'https://', '2022-01-01'),
  ('Personaje 21', 'Alive', 'Human', '', 'Male', 'https://rickandmortyapi.com/api/character/avatar/21.jpeg', 2, 'https://', '2022-01-01'),
  ('Personaje 22', 'Alive', 'Human', '', 'Male', 'https://rickandmortyapi.com/api/character/avatar/22.jpeg', 2, 'https://', '2022-01-01'),
  ('Personaje 23', 'Alive', 'Human', '', 'Male', 'https://rickandmortyapi.com/api/character/avatar/23.jpeg', 2, 'https://', '2022-01-01'),
  ('Personaje 24', 'Alive', 'Human', '', 'Male', 'https://rickandmortyapi.com/api/character/avatar/24.jpeg', 2, 'https://', '2022-01-01'),
  ('Personaje 25', 'Alive', 'Human', '', 'Male', 'https://rickandmortyapi.com/api/character/avatar/25.jpeg', 2, 'https://', '2022-01-01'),
  ('Personaje 26', 'Alive', 'Human', '', 'Male', 'https://rickandmortyapi.com/api/character/avatar/26.jpeg', 2, 'https://', '2022-01-01'),
  ('Personaje 27', 'Alive', 'Human', '', 'Male', 'https://rickandmortyapi.com/api/character/avatar/27.jpeg', 2, 'https://', '2022-01-01'),
  ('Personaje 28', 'Alive', 'Human', '', 'Male', 'https://rickandmortyapi.com/api/character/avatar/28.jpeg', 2, 'https://', '2022-01-01'),
  ('Personaje 29', 'Activo', 'Humano', 'Vacío', 'Masculino', 'https://rickandmortyapi.com/api/character/avatar/29.jpeg', 2, 'https://', '2022-01-01');
