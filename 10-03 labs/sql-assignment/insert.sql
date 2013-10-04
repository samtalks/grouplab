INSERT INTO users (name) VALUES
  ("Sam"), ("James"), ("Jeanne");

INSERT INTO quizzes (name) VALUES
  ("Ruby #1"), ("Ruby #2");

INSERT INTO questions (quiz_id, question_text) VALUES
  (1, "In the following Ruby version string, what's the patch level?  ruby-1.9.3-p0"),
  (1, "What is the standard Ruby interpreter called?"),
  (1, "What does MRI stand for?"),
  (1, "Who invented Ruby?"),
  (1, "What kind of programming language is Ruby?"),
  (2, "What is the process of figuring out the how the real world is represented in your object oriented program?"),
  (2, "What character denotes an instance variable?"),
  (2, "Which of these statements outputs the statement 'a is 2'? Assume the following code is set:  a = 2"),
  (2, "What is the determining factor on where variables can be accessed?"),
  (2, "Which of these is not a type of variable?");


INSERT INTO choices (question_id, choice_text, correct) VALUES
  (1, ".3", "FALSE"),
  (1, "p0", "TRUE"),
  (1, "1.9.3", "FALSE"),
  (1, "1.9", "FALSE"),
  (2, "Rubinius", "FALSE"),
  (2, "JRuby", "FALSE"),
  (2, "MRI", "TRUE"),
  (2, "RISC", "FALSE"),
  (3, "Mighty Ruby Instance", "FALSE"),
  (3, "Many Ruby Instance", "FALSE"),
  (3, "More Ruby Interactive", "FALSE"),
  (3, "Matz's Ruby Interpreter", "TRUE"),
  (4, "Yukihiro Matsumoto", "TRUE"),
  (4, "James Gosling", "FALSE"),
  (4, "Ruby Billingsworth", "FALSE"),
  (4, "Edgar Codd", "FALSE"),
  (5, "Markup", "FALSE"),
  (5, "Static", "FALSE"),
  (5, "Compiled", "FALSE"),
  (5, "Dynamic", "TRUE"),
  (6, "Matrixing", "FALSE"),
  (6, "Domain modeling", "TRUE"),
  (6, "Object orienting", "FALSE"),
  (6, "Program making", "FALSE"),
  (7, "!", "FALSE"),
  (7, "$", "FALSE"),
  (7, "#", "FALSE"),
  (7, "@", "TRUE"),
  (8, "if a == 1 puts 'a is 2' end", "FALSE"),
  (8, "if a != 2 puts 'a is 2' end", "FALSE"),
  (8, "if a == 2 puts 'a is 2' end", "TRUE"),
  (8, "if a =21 puts 'a is 2' end", "FALSE"),
  (9, "Line of Sight", "FALSE"),
  (9, "Scope", "TRUE"),
  (9, "Distance", "FALSE"),
  (9, "Blocks", "FALSE"),
  (10, "Instance", "FALSE"),
  (10, "Local", "FALSE"),
  (10, "Distancle", "TRUE"),
  (10, "Global", "FALSE");

