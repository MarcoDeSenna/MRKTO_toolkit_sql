-- ALTER
-- ALTER [object] [object_name] [command];


ALTER TABLE employees ADD COLUMN age INT;
ALTER TABLE employees DROP COLUMN age;
ALTER TABLE employees ADD COLUMN age INT;
ALTER TABLE employees ALTER COLUMN age TYPE INT;
ALTER TABLE employees ALTER COLUMN age SET NOT NULL;
