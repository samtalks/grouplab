require "sqlite3"

db = SQLite3::Database.new( "flatiron_scrape.db" )

###########  CREATE TABLE START


db.execute( 
  "CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    name TEXT);") 

# index_hash = {
#   : => 
# }

# index_hash.each do |key

db.execute( 
  "CREATE INSERT #{index_hash} (
    #{key_int_primary} PRIMARY KEY, 
    #{key_int} INTEGER,
    #{key_text} TEXT);")


###########  CREATE TABLE END
###########  INSERT START




# CREATE TABLE index (
#   id INTEGER PRIMARY KEY,
#   name TEXT,
#   tagline TEXT,
#   intro TEXT,
#   photo_url TEXT
# );git


###########  INSERT END
