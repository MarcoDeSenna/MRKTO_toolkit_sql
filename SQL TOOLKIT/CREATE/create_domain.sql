
-- Create a new domain called new_type that is based on the INTEGER data type and has a check constraint that restricts the values to the range 1 to 10
CREATE DOMAIN new_domain AS INTEGER CHECK (VALUE BETWEEN 1 AND 10);


-- Create a table called data_types that uses the new domain new_domain
CREATE TABLE data_types (
    id SERIAL PRIMARY KEY,
    new_type new_domain
);