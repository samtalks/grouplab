CREATE TABLE index (
  id INTEGER PRIMARY KEY,
  tagline TEXT,
  intro TEXT,
  photo_url TEXT
);

CREATE TABLE student_profile (
  id INTEGER PRIMARY KEY,
  name_id INTEGER REFERENCES index,
  thumbnail_url TEXT,
  background_url TEXT,
  biography TEXT,
  education TEXT,
  work TEXT,
  github TEXT,
  treehouse TEXT,
  codeschool TEXT,
  coderwall TEXT,
);
