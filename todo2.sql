CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(500) NULL,
  priority INTEGER NOT NULL DEFAULT 1,
  created_at DATE NOT NULL,
  completed_at DATE NULL
  );


  insert into todos (title, details, priority, created_at) VALUES ('Drop off dry-cleaning', 'Drop off 5 shirts and 3 pairs of pants', 3,'2017-08-28'),
  ('feed pet dragon', 'He is currently on a diet so limit him to 5 pigs.', 1, '2017-08-15'),
  ('Conquer World', 'Fairly self explanatory.', 2,'2017-08-28'),
  ('Make Tacos', 'make tacos for 4 people', 4, '2017-08-20'),
  ('Eat Tacos', 'Eat tacos we just made', 5,'2017-08-28'),
  ('Get birthday present for mother', 'order pizza peel from amazon', 1,'2017-08-20'),
  ('Update LinkedIn', 'Complete the last few updates from Michelle', 2, '2017-08-10'),
  ('Learn to play the harmonica', 'learn to play two songs', 5, '2017-08-20'),
  ('Call Dad', 'need to talk about Moms bday dinner', 3,'2017-08-28'),
  ('Purchase Udemy classes', 'find 3 good ones', 4,'2017-08-10'),
  ('Another random activity to complete', 'Do this soon', 1,'2017-08-29'),
  ('Get that stuff', 'Dont forget', 2, '2017-08-10');

  insert into todos (title, details, priority, created_at, completed_at) VALUES
  ('Order that thing for that person', 'get that right size ', 5,'2017-08-28', '2017-08-29'),
  ('Go to that place', 'It might be cold there so where layers', 4, '2017-08-10', '2017-08-29'),
  ('Cancel those plans', 'you will regret not doing it', 1,   '2017-08-28', '2017-08-29'),
  ('Place a subscription for it', 'it should start next month', 3, '2017-08-10', '2017-08-29'),
  ('This and that', 'how bout dat', 5, '2016-08-20', '2017-08-29'),
  ('Chitty Chitty', 'Bang Bang', 4, '2009-08-10', '2017-08-29'),
  ('Two more to go', 'what do you know', 3, '2017-08-20', '2017-08-29'),
  ('Last thing todo', 'saved the best for last', 5, '2017-08-29', '2017-08-29');


SELECT * FROM todos WHERE completed_at IS NULL AND priority = 3;
SELECT priority, COUNT(completed_at IS NULL) FROM todos WHERE completed_at IS NULL GROUP BY priority ORDER BY priority ASC;
SELECT priority, COUNT(created_at) FROM todos where created_at > current_date - 30 GROUP BY priority ORDER BY priority ASC;
SELECT * FROM todos WHERE priority = 1 AND completed_at IS NULL ORDER BY created_at ASC LIMIT 1;
