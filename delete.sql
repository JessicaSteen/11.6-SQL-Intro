-- Create a table called animals that has 4 columns: id - serialized integer that’s the primary key, name - can be any data type 
-- that holds strings, type - also for strings, and age which will be a whole number.
CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name TEXT,
    type TEXT,
    age INTEGER
)

-- Next, run the commented code provided in delete.sql to insert some data into your table.
INSERT INTO animals ( name, type, age ) 
VALUES ('Leo', 'lion', 12),
('Jerry', 'mouse', 4),
('Marty', 'zebra', 10),
('Gloria', 'hippo', 8),
('Alex', 'lion', 9),
('Melman', 'giraffe', 15),
('Nala', 'lion', 2),
('Marie', 'cat', 1),
('Flounder', 'fish', 8);

-- Try selecting from animals to confirm that everything worked.
SELECT * FROM animals; 

-- Delete all ‘lion’ entries from the table.
DELETE
FROM animals
WHERE type = 'lion';

-- Delete all animals whose names start with “M”.
DELETE
FROM animals
WHERE name LIKE 'M%';

-- Delete all entries whose age is less than 9.
DELETE
FROM animals
WHERE age <9;