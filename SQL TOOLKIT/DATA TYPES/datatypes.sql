CREATE TABLE data_types_example (
    -- Numeric Types
    id SERIAL PRIMARY KEY,
    small_int SMALLINT,
    integer_num INTEGER,
    big_int BIGINT,
    decimal_num DECIMAL(10,2),
    numeric_num NUMERIC(10,2),
    real_num REAL,
    double_num DOUBLE PRECISION, -- 
    
    -- Character Types
    char_fixed CHAR(10),
    varchar_var VARCHAR(255),
    text_unlimited TEXT,
    
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