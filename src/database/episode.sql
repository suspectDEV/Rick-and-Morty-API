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
  ('Primer episodio', '2022-01-01', 'S01E01', 'https://rickandmortyapi.com/api/episode/1', '2022-01-01'),
  ('Segundo episodio', '2022-01-01', 'S01E02', 'https://rickandmortyapi.com/api/episode/2', '2022-01-01'),
  ('Tercer episodio', '2022-01-01', 'S01E03', 'https://rickandmortyapi.com/api/episode/3', '2022-01-01'),
  ('Cuarto episodio', '2022-01-01', 'S01E04', 'https://rickandmortyapi.com/api/episode/4', '2022-01-01'),
  ('Quinto episodio', '2022-01-01', 'S01E05', 'https://rickandmortyapi.com/api/episode/5', '2022-01-01'),
  ('Sexto episodio', '2022-01-01', 'S01E06', 'https://rickandmortyapi.com/api/episode/6', '2022-01-01'),
  ('Séptimo episodio', '2022-01-01', 'S01E07', 'https://rickandmortyapi.com/api/episode/7', '2022-01-01'),
  ('Octavo episodio', '2022-01-01', 'S01E08', 'https://rickandmortyapi.com/api/episode/8', '2022-01-01'),
  ('Noveno episodio', '2022-01-01', 'S01E09', 'https://rickandmortyapi.com/api/episode/9', '2022-01-01');
