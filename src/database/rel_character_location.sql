-- CREATE DATABASE v_dev;
DROP TABLE IF EXISTS rel_char_loc;

CREATE TABLE rel_char_loc(
  id SERIAL PRIMARY KEY,
  character_id INT,
  location_id INT,
  CONSTRAINT fk_character FOREIGN KEY(character_id) REFERENCES character(id),
  CONSTRAINT fk_location FOREIGN KEY(location_id) REFERENCES location(id)
);

INSERT INTO rel_char_loc (character_id, location_id) VALUES
  (1, 1);
