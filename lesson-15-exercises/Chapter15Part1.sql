CREATE TABLE plant (
	plant_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    plant_name VARCHAR(100),
    zone INTEGER,
    season VARCHAR(50)
);

CREATE TABLE seeds (
	seed_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    expiration_date DATE,
    quanity INTEGER,
    reorder BOOL,
    plant_id INTEGER,
    FOREIGN KEY (plant_id) REFERENCES plant(plant_id)
);

CREATE TABLE garden_bed (
	space_number INTEGER PRIMARY KEY AUTO_INCREMENT,
    date_planted DATE,
    doing_well BOOL,
    plant_id INTEGER,
    FOREIGN KEY (plant_id) REFERENCES plant(plant_id)
);

SELECT *
FROM seeds
INNER JOIN garden_bed
ON seeds.plant_id = garden_bed.plant_id;

SELECT *
FROM seeds 
LEFT JOIN garden_bed
ON seeds.plant_id = garden_bed.plant_id;

SELECT * 
FROM seeds
RIGHT JOIN garden_bed
ON seeds.plant_id = garden_bed.plant_id;

SELECT * 
FROM seeds
LEFT JOIN garden_bed
ON seeds.plant_id = garden_bed.plant_id
UNION 
SELECT * 
FROM seeds
RIGHT JOIN garden_bed
ON seeds.plant_id = garden_bed.plant_id;