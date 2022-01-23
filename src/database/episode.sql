-- CREATE DATABASE v_dev;

-- CREATE TABLE episode(
--   id SERIAL PRIMARY KEY,
--   name VARCHAR(100),
--   air_date VARCHAR(100),
--   episode VARCHAR(100),
--   url VARCHAR(100),
--   created VARCHAR(100)
-- );

INSERT INTO episode (name, air_date, episode, url, created) VALUES
  ('Mi primer episodio', 'Lanzamiento', 'S01E03', 'https://', 'Hoy'),
  ('Segundo episodio', 'Lanzamiento', 'S01E04', 'https://', 'Hoy');
