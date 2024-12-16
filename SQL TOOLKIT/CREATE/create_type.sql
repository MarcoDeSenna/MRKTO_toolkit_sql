CREATE TYPE status_enum AS ENUM ('active', 'inactive', 'pending');

create table if not exists data_types (
    id serial primary key,
    status status_enum,
);

