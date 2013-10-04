require "sqlite3"
# require_relative "./schema.sql"


db = SQLite3::Database.new( "flatiron_scrape.db" )


sql = <<SQL
  CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    name TEXT
  ); 

  CREATE TABLE quizzes(
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    name TEXT
  );

  CREATE TABLE questions (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    quiz_id INTEGER REFERENCES quizzes,
    question_text TEXT
  );

  CREATE TABLE choices (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    question_id INTEGER REFERENCES questions,
    choice_text TEXT, 
    correct TEXT
SQL


# db.execute( "insert into table values ( ?, ? )", *bind_vars )
