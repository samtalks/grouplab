require "sqlite3"

db = SQLite3::Database.new( "flatiron_scrape.db" )

###########  CREATE TABLE START


db.execute( 
  "CREATE TABLE index1 (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    tagline TEXT,
    blurb TEXT,
    photo_url TEXT);" ) 

db.execute( 
  "CREATE TABLE student_profile (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    name_id INTEGER,
    thumbnail_url TEXT,
    background_url TEXT,
    quote TEXT,
    bio TEXT,
    education TEXT,
    work TEXT,
    github TEXT,
    treehouse TEXT,
    codeschool TEXT,
    coderwall TEXT);" ) 























###########  CREATE TABLE END
###########  INSERT START
=begin


index_ = {
  
}


profiles = {

}


db.execute( 
  "CREATE INSERT #{index_hash} (
    #{key_int_primary} PRIMARY KEY, 
    #{key_int} INTEGER,
    #{key_text} TEXT);")

# CREATE TABLE index (
#   id INTEGER PRIMARY KEY,
#   name TEXT,
#   tagline TEXT,
#   intro TEXT,
#   photo_url TEXT
# );git

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

=end
###########  INSERT END
