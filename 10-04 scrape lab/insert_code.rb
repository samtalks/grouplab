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


index_hash = {
  "name" => ["Sam", "Jeanne"],
  "tagline" => ["I'm Sam", "I'm Jeanne"],
  "blurb" => ["stuff about me I'm Sam", "I'm Jeanna and I like coding"],
  "photo_url" => ["www.photo.com", "www.photo.com"]
}

index.each do |key, value|
  index[key].each do |item|
    db.execute( 
      "INSERT INTO index(name, tagline, blurb, photo_url) VALUES(#{item})"
  end
end

# CREATE TABLE index (
#   id INTEGER PRIMARY KEY,
#   name TEXT,
#   tagline TEXT,
#   blurb TEXT,
#   photo_url TEXT
# );

# CREATE TABLE student_profile (
#   id INTEGER PRIMARY KEY,
#   name_id INTEGER REFERENCES index,
#   thumbnail_url TEXT,
#   background_url TEXT,
#   biography TEXT,
#   education TEXT,
#   work TEXT,
#   github TEXT,
#   treehouse TEXT,
#   codeschool TEXT,
#   coderwall TEXT,
# );

# db.execute( "SELECT...." ) do |row|
#   p row
# end



###########  INSERT END
