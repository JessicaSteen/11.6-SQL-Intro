-- Create a table called person that records a person’s id, name, age, height (in cm , city, favorite_color. id should be an auto-incrementing id/primary key (use type: SERIAL)
CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name VARCHAR(45),
    age INTEGER,
    height FLOAT,
    city VARCHAR(45),
    favorite_color VARCHAR(45)
);
-- Add 5 different people into the person database. Remember to not include the person_id because it should auto-increment.
INSERT INTO person(name, age, height, city, favorite_color)
VALUES('Jessica', 30, 172.7, 'Denver', 'Pink'),
        ('Brett', 30, 180.3, 'Denver', 'Grey'),
        ('Mom', 60, 167.6, 'Long Beach', 'Green'),
        ('Bernie', 7, 60.96, 'Orange', 'Black'),
        ('Forest', 4, 60.96, 'Long Beach', 'Red');

-- Select all the people in the person table by height from tallest to shortest.
SELECT * FROM person
ORDER BY height DESC;

-- Select all the people in the person table by height from shortest to tallest
SELECT * FROM person
ORDER BY height ASC;

-- Select all the people in the person table by age from oldest to youngest
SELECT * FROM person
ORDER BY age DESC;

-- Select all the people in the person table older than age 20
SELECT * FROM person
WHERE age >20


-- Select all the people in the person table that are exactly 18.
SELECT * FROM person
WHERE age = 18

-- Select all the people in the person table that are less than 20 and older than 30.
SELECT * FROM person
WHERE age <20 OR age >30    --have to put second age identifier

-- Select all the people in the person table that are not 27 (use not equals).
SELECT * FROM person
WHERE age <> 27;

-- Select all the people in the person table where their favorite color is not red.
SELECT * FROM person
WHERE favorite_color <> 'red';

-- Select all the people in the person table where their favorite color is not red and is not blue
SELECT * FROM person
WHERE favorite_color <> 'red' and favorite_color <> 'blue'

-- Select all the people in the person table where their favorite color is orange or green.
SELECT * FROM person
WHERE favorite_color = 'Orange' OR favorite_color = 'Green'

-- Select all the people in the person table where their favorite color is orange, green or blue (use IN).
SELECT * FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');

-- Select all the people in the person table where their favorite color is yellow or purple (use IN).
SELECT * FROM person
WHERE favorite_color
IN ('yellow', 'purple');