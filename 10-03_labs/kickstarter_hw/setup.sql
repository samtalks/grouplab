CREATE TABLE projects (
  id INTEGER PRIMARY KEY,
  title TEXT,
  category TEXT,
  funding_goal INTEGER,
  start_date TEXT,
  end_date TEXT
);
 
CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  name TEXT,
  age INTEGER
);
 
CREATE TABLE pledges (
  id INTEGER PRIMARY KEY,
  user_id INTEGER,
  project_id INTEGER,
  amount INTEGER
);
 
INSERT INTO users (name, age) VALUES 
  ("Bob Boberts", 26),
  ("John Johnson", 27),
  ("Mike Michaelson", 28),
  ("Rob Robertson", 29),
  ("Jason Janssen", 23),
  ("Pete Peterson", 40),
  ("Sam Samuelsson", 19),
  ("Nick Nicholson", 31),
  ("Danny Danielsson", 40),
  ("Jenny Jenniferson", 27),
  ("Tom Thompson", 32),
  ("Nicky Nicolas", 35),
  ("Susie Susanson", 37),
  ("Randy Randallson", 41),
  ("David Davidson", 23),
  ("John Boberts", 25),
  ("Tom Robertson", 28),
  ("Molly Mollson", 25),
  ("Tina Tinason", 28),
  ("Pam Pammerson", 25)
;
 
 
INSERT INTO projects (title, category, funding_goal, start_date, end_date) VALUES
("Scott's Great Project","music", 10000, "2013-08-12", "2013-09-12"),
("Steve's Great Project","books", 25000, "2013-08-09", "2013-09-12"),
("Sam's Great Project","charity", 30000, "2013-08-11", "2013-09-12" ),
("Nick's Great Project","music", 15000, "2013-09-12", "2013-10-12" ),
("Molly's Great Project","books", 50600, "2013-09-04", "2013-10-04" ),
("Justin's Great Project","charity", 63000, "2013-08-12", "2013-09-12" ),
("Tom's Great Project","music", 27000, "2013-09-02", "2013-10-02" ),
("Pam's Great Project","books", 34000, "2013-08-06", "2013-09-04" ),
("Tina's Great Project","music", 38000, "2013-09-01", "2013-10-01" ),
("Susie's Great Project","charity", 17600, "2013-08-12", "2013-26-12" )
;
 
INSERT INTO pledges (user_id, project_id, amount) VALUES
(1,1,50),
(2,2,20),
(3,3,30),
(4,4,20),
(5,5,15),
(6,6,100),
(7,7,250),
(8,8,60),
(9,9,23),
(10,10,500),
(11,1,5),
(12,2,450),
(13,3,300),
(14,4,60),
(15,5,30),
(16,6,20),
(17,7,150),
(18,8,200),
(19,9,1000),
(20,10,17),
(19,1,14),
(18,2,13),
(1,3,25),
(17,4,29),
(2,5,27),
(16,6,38),
(3,7,41),
(15,8,42),
(4,9,56),
(14,10,55)
;