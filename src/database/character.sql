-- CREATE DATABASE v_dev;
DROP TABLE IF EXISTS character;

CREATE TABLE character(
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  status VARCHAR(100),
  species VARCHAR(100),
  type VARCHAR(100),
  gender VARCHAR(100),
  image VARCHAR(200),
  url VARCHAR(100),
  created VARCHAR(100)
);

INSERT INTO character (name, status, species, type, gender, image, url, created) VALUES
  ('Personaje 1', 'Activo', 'Humano', 'Vacío', 'Masculino', 'https://rickandmortyapi.com/api/character/avatar/1.jpeg', 'https://', '2022-01-01'),
  ('Personaje 2', 'Activo', 'Humano', 'Vacío', 'Masculino', 'https://rickandmortyapi.com/api/character/avatar/2.jpeg', 'https://', '2022-01-01');
