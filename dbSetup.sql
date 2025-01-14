-- Active: 1736871713169@@127.0.0.1@3306@rational_mermaid_e918_db
CREATE TABLE IF NOT EXISTS accounts(
  id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) COMMENT 'User Name',
  email varchar(255) UNIQUE COMMENT 'User Email',
  picture varchar(255) COMMENT 'User Picture'
) default charset utf8mb4 COMMENT '';

CREATE TABLE chores(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  chore_name VARCHAR(255) NOT NULL,
  description VARCHAR(255),
  assigned VARCHAR(255),
  priority INTEGER,
  due_date DATE,
  time_estimated INTEGER,
  isComplete BOOLEAN DEFAULT false
  -- ADD YOUR OWN ADDITIONAL PROPERTIES! TRY OUT LOTS OF DIFFERENT DATA TYPES!
);

DROP TABLE chores;


INSERT INTO 
chores(chore_name, description, assigned, priority, due_date, time_estimated, isComplete)
VALUES
("Walk the raccoons", "Don't go to the dog park, we are banned for life.", 'Blake', 2 ,'2025-01-14', 60, false ),
("Wash the dishes", "Clean all dishes and utensils in the kitchen.", "Sarah", 3, "2025-01-15", 30, true),
("Vacuum the living room", "Vacuum the entire living room floor, including under the couch.", "John", 1, "2025-01-16", 45, false),
("Take out the trash", "Collect and dispose of the garbage bags in the kitchen and bathroom.", "Emily", 2, "2025-01-14", 15, true),
("Water the plants", "Water all indoor and outdoor plants.", "Mia", 4, "2025-01-17", 25, false),
("Mop the kitchen floor", "Mop the entire kitchen floor to remove stains and dirt.", "Lena", 3, "2025-01-18", 40, false),
("Clean the windows", "Wipe down all windows in the house inside and out.", "Addison", 5, "2025-01-19", 50, true),
("Organize the garage", "Sort items in the garage, clean the shelves, and dispose of unnecessary items.", "Kate", 4, "2025-01-20", 120, false),
("Fold laundry", "Fold all laundry and organize by clothing type.", "Damon", 2, "2025-01-21", 35, false),
("Clean the bathroom", "Scrub the bathtub, sink, and toilet. Wipe down all surfaces.", "Drew", 1, "2025-01-22", 60, true);


DELETE FROM chores;
DELETE FROM chores WHERE id = 1;
SELECT * FROM chores;
SELECT * FROM chores WHERE id = 10;
