DROP TABLE IF EXISTS exhibits;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS artists;

CREATE TABLE artists (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  born VARCHAR(255),
  biography TEXT,
  image TEXT
);

CREATE TABLE categories (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE exhibits (
  id SERIAL4 PRIMARY KEY,
  title VARCHAR(255),
  subtitle VARCHAR(255),
  opening VARCHAR(255),
  closing VARCHAR(255),
  description TEXT,
  artist_id INT4 REFERENCES artists(id) ON DELETE CASCADE,
  category_id INT4 REFERENCES categories(id) ON DELETE CASCADE,
  image TEXT
);
