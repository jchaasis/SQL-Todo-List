CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(500) NULL,
  priority INTEGER NOT NULL DEFAULT 1,
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP NULL
  );

insert into todos (title, details, priority, created_at) VALUES ('Drop off dry-cleaning', 'Drop off 5 shirts and 3 pairs of pants', 3, CURRENT_TIMESTAMP),
('feed pet dragon', 'He is currently on a diet so limit him to 3 goats.', 1, CURRENT_TIMESTAMP),
('Conquer World', 'Fairly self explanatory.', 2, CURRENT_TIMESTAMP),
('Make Tacos', 'make tacos for 4 people', 4, CURRENT_TIMESTAMP),
('Eat Tacos', 'Eat tacos we just made', 5, CURRENT_TIMESTAMP);

SELECT title FROM todos WHERE completed_at IS NULL;
SELECT title, priority FROM todos WHERE priority > 1;
UPDATE todos SET completed_at = CURRENT_TIMESTAMP WHERE id = 3;
DELETE FROM todos WHERE completed_at IS NOT NULL;
