-- CREATE DATABASE v_dev;
DROP TABLE IF EXISTS episode;

CREATE TABLE episode(
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  air_date VARCHAR(100),
  episode VARCHAR(100),
  url VARCHAR(100),
  created VARCHAR(100)
);

INSERT INTO episode (name, air_date, episode, url, created) VALUES
  ('Primer episodio', '2022-01-01', 'S01E03', 'https://', '2022-01-01'),
  ('Segundo episodio', '2022-01-01', 'S01E04', 'https://', '2022-01-01');
