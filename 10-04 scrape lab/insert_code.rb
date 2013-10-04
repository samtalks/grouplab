require "sqlite3"

db = SQLite3::Database.new( "flatiron_scrape.db" )

db.execute( 
  "CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    name TEXT);") 

index_hash = {
  : => 
}

db.execute( 
  "CREATE TABLE #{index_hash} (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    name TEXT);")


# CREATE TABLE index (
#   id INTEGER PRIMARY KEY,
#   name TEXT,
#   tagline TEXT,
#   intro TEXT,
#   photo_url TEXT
# );git