
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
);

CREATE TABLE answers (
  id INTEGER PRIMARY KEY AUTOINCREMENT, 
  user_id INTEGER REFERENCES users,
  question_id INTEGER REFERENCES questions, 
  choice_id INTEGER REFERENCES choices
);