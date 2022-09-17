--DROP TABLE gallery;

--Create Table
CREATE TABLE gallery (
    id SERIAL PRIMARY KEY,
    path VARCHAR(500) NOT NULL,
    description VARCHAR(500) NOT NULL,
    smiles INTEGER DEFAULT 1
    );

    --Insert Initial Data
    INSERT INTO gallery
    (path, description, smiles)
    VALUES
    ('images/butterfly.jpeg', 'Photo of a butterfly.', 1),
    ('images/dino.jpeg', 'Photo of a dinosaur.', 4),
    ('images/fox.jpeg', 'Photo of a fox.', 1),
    ('images/goat_small.jpg', 'Photo of a goat taken at Glacier National Park.', 1),
    ('images/rose.jpeg', 'Photo of a rose.', 3),
    ('images/school.jpeg', 'Photo of a school.', 1),
    ('images/unicorn.png', 'Photo of a unicorn.', 2);