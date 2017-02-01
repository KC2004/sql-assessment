
-- Insert a Brand
cars=# INSERT INTO brands (brand_id, name, founded, headquarters) VALUES
('sub', 'Subaru', 1953,'Tokyo, Japan');
INSERT 0 1



-- Insert Models
cars=# INSERT INTO models (year, brand_id, name) VALUES
(2015, 'che', 'Malibu');
INSERT 0 1
cars=# INSERT INTO models (year, brand_id, name) VALUES
(2015, 'sub', 'Outback');
INSERT 0 1
cars=#



-- Create an Awards Table

cars=# CREATE TABLE awards (
id SERIAL PRIMARY KEY,
name VARCHAR(20) NOT NULL,
year INTEGER NOT NULL,
winner_id INTEGER REFERENCES models);


-- Insert Awards

cars=# INSERT INTO awards (name, year, winner_id)
cars-# VALUES ('IIHS Safety Award', 2015, 47);
INSERT 0 1
cars=# INSERT INTO awards (name, year, winner_id)
VALUES ('IIHS Safety Award', 2015, 48);
INSERT 0 1
cars=# INSERT INTO awards (name, year, winner_id)
VALUES ('Best in Class', 2015, NULL);
INSERT 0 1
cars=#
cars=# SELECT * FROM awards;
 id |       name        | year | winner_id
----+-------------------+------+-----------
  1 | IIHS Safety Award | 2015 |        47
  2 | IIHS Safety Award | 2015 |        48
  3 | Best in Class     | 2015 |
(3 rows)
