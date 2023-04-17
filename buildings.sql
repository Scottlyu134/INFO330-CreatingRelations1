CREATE TABLE buildings (
id INTEGER PRIMARY KEY,
name VARCHAR(80) NOT NULL,
shortname VARCHAR(10) UNIQUE NOT NULL
);

CREATE TABLE rooms (
number INTEGER,
buildingid INTEGER,
seating INTEGER,
PRIMARY KEY (number, buildingid),
FOREIGN KEY (buildingid) REFERENCES buildings(id)
);

INSERT INTO buildings (name, shortname, id) VALUES
('Miller Hall', 'MLR', 1),
('Kane Hall', 'KNE', 2),
('Mary Gates Hall', 'MGH', 3);

INSERT INTO rooms VALUES (400, (SELECT id FROM buildings WHERE name="Mary Gates Hall"), 30);