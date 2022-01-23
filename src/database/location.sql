-- CREATE DATABASE v_dev;
DROP TABLE IF EXISTS location;

CREATE TABLE location(
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  type VARCHAR(100),
  dimension VARCHAR(100),
  url VARCHAR(100),
  created VARCHAR(100)
);

INSERT INTO location (name, type, dimension, url, created) VALUES
  ('Earth (C-137)', 'Planet', 'Dimension C-137', 'https://', 'Hoy'),
  ('Abadango', 'Cluster', 'unknown', 'https://', 'Hoy');
