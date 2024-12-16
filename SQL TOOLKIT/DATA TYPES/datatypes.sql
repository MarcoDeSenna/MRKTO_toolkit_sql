CREATE TABLE data_types_example (
    -- Numeric Types
    id SERIAL PRIMARY KEY, -- auto-incrementing integer
    small_int SMALLINT, -- small integer
    integer_num INTEGER, -- integer
    big_int BIGINT, -- big integer
    decimal_num DECIMAL(10,2), -- 
    numeric_num NUMERIC(10,2), --
    real_num REAL, -- 
    double_num DOUBLE PRECISION, -- 
    
    -- Character Types
    char_fixed CHAR(10), -- size is fixed
    varchar_var VARCHAR(255), -- size is variable
    text_unlimited TEXT, -- unlimited size
    
    -- Boolean Type
    bool_val BOOLEAN,
    
    -- Temporal Types
    date_val DATE,
    time_val TIME,
    timestamp_val TIMESTAMP,
    timestamptz_val TIMESTAMPTZ,
    interval_val INTERVAL,
    
    
    -- JSON Types
    json_val JSON,
    jsonb_val JSONB,
    
    -- Arrays
    int_array INTEGER[],
    text_array TEXT[],

    -- Money
    money_val MONEY,
    
    -- Enum (first create enum type)
    status_val status_enum
);

-- Example of creating an enum type
CREATE TYPE status_enum AS ENUM ('active', 'inactive', 'pending');