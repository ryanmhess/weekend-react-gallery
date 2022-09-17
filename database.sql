--DROP TABLE gallery;

--Create Table
CREATE TABLE gallery (
    id SERIAL PRIMARY KEY,
    path VARCHAR(500) NOT NULL,
    description VARCHAR(500) NOT NULL,
    smiles INTEGER
    );

    --Insert Initial Data
    INSERT INTO gallery
    (path, description, smiles)
    VALUES
    ('images/butterfly.jpeg', 'Photo of a butterfly.', 0),
    ('images/dino.jpeg', 'Photo of a dinosaur.', 4),
    ('images/fox.jpeg', 'Photo of a fox.', 0),
    ('images/goat_small.jpg', 'Photo of a goat taken at Glacier National Park.', 0),
    ('images/rose.jpeg', 'Photo of a rose.', 3),
    ('images/school.jpeg', 'Photo of a school.', 0),
    ('images/unicorn.png', 'Photo of a unicorn.', 1);