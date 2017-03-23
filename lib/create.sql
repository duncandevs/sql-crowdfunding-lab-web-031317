-- creates a projects table with an id as a primary key (FAILED - 1)
--   creates a projects table with a title field (FAILED - 2)
--   creates a projects table with a category field (FAILED - 3)
--   creates a projects table with a funding_goal field (FAILED - 4)
--   creates a projects table with a start_date field (FAILED - 5)
--   creates a projects table with a end_date field (FAILED - 6)
--   creates a users table with an id as a primary key (FAILED - 7)
--   creates a users table with a name field (FAILED - 8)
--   creates a users table with an age field (FAILED - 9)
--   creates a pledge table with an id as a primary key (FAILED - 10)
--   creates a pledge table with an amount field (FAILED - 11)
--   creates a pledge table with a user_id field (FAILED - 12)
--   creates a pledge table with a project_id field (FAILED - 13)

CREATE TABLE projects (
  id INTEGER PRIMARY KEY,
  title text,
  category text,
  funding_goal INTEGER,
  start_date DATE,
  end_date DATE
);

CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  name text,
  age INTEGER
);

CREATE TABLE pledges (
  id INTEGER PRIMARY KEY,
  amount INTEGER,
  user_id INTEGER,
  project_id INTEGER
);
