-- Active: 1730444673961@@127.0.0.1@5432@postgres@interviews
-- Creating a table with an array column
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    skills TEXT[]
);

-- Inserting data into the table
INSERT INTO employees (name, skills)
VALUES ('John Doe', ARRAY['SQL', 'Python', 'Java']),
       ('Jane Smith', ARRAY['HTML', 'CSS', 'JavaScript']);

-- Selecting data from the table
SELECT * FROM employees;

-- Adding a new skill to an employee's skill array
UPDATE employees
SET skills = array_append(skills, 'C++') -- or skills || '{C++}' -- or skills || ARRAY['C++'] -- or skills || ARRAY['C++']::TEXT[]
WHERE name = 'John Doe';

-- Removing a skill from an employee's skill array
UPDATE employees
SET skills = array_remove(skills, 'Java')
WHERE name = 'John Doe';

-- Searching for employees with a specific skill
SELECT * FROM employees
WHERE 'Python' = ANY(skills);

-- Using array functions
-- Get the length of the skills array for each employee
SELECT name, array_length(skills, 1) AS skill_count
FROM employees;

-- Unnesting arrays to get each skill in a separate row
SELECT name, unnest(skills) AS skill
FROM employees;

