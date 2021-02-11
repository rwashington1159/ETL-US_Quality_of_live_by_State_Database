-- Create schemas for the unemployment and hospital tables

CREATE TABLE hospitals
(id SERIAL PRIMARY KEY,
stateid INT,
city VARCHAR,
name VARCHAR UNIQUE,
address VARCHAR,
zip INT,
owner VARCHAR,
beds INT,
rating FLOAT,
website VARCHAR
FOREIGN KEY stateid REFERENCES state(state_id)
);


CREATE TABLE unemployment
(state_id INT,
regioncode INT,
regionname VARCHAR,
year int,
FOREIGN KEY stateid REFERENCES state(state_id),
PRIMARY KEY (state_id, regioncode, year)
);
