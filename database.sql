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
    ('images/unicorn.png', 'Photo of a unicorn.', 2),
    ('images/WDA.jpeg', 'All in attendance at wedding.', 1),
    ('images/WDC001.jpeg', 'Ryan & Julia', 1),
    ('images/WDC002.jpeg', 'Ryan & Julia', 1),
    ('images/WDC003.jpeg', 'Ryan & Julia', 1),
    ('images/WDC004.jpeg', 'Ryan & Julia', 1),
    ('images/WDC005.jpeg', 'Ryan & Julia', 1),
    ('images/WDF001.jpeg', 'Ryan, Julia, Emily, Ian & Kellen', 1),
    ('images/WDF002.jpeg', 'Ryan, Julia, Ian & Kellen', 1),
    ('images/WDF003.jpeg', 'Emily', 1),
    ('images/WDF004.jpeg', 'Ian', 1),
    ('images/WDF005.jpeg', 'Kellen', 1),
    ('images/WDF006.jpeg', 'Ryan, Ian & Kellen', 1),
    ('images/WDF007.jpeg', 'Julia & Emily', 1),
    ('images/WDFa001.jpeg', 'Family: Uncle Steve', 1),
    ('images/WDFa002.jpeg', 'Family: Ryan, Julia, Jenna, Lucy, Sarah & Terry', 1),
    ('images/WDFa003.jpeg', 'Family: Judy & Aunt Barb', 1),
    ('images/WDFa004.jpeg', 'Family: Pets, Betty & Malayah', 1),
    ('images/WDFa005.jpeg', 'Family: Uncle Mark & Aunt Mary', 1),
    ('images/WDFa006.jpeg', 'Family: Ryan & Uncle Roy', 1),
    ('images/WDFa007.jpeg', 'Family: Judy & Pap', 1),
    ('images/WDFa008.jpeg', 'Family: Julia & Uncle Steve', 1),
    ('images/WDFa009.jpeg', 'Family: Julia & Penny', 1),
    ('images/WDFa010.jpeg', 'Family: Julia, Nate, Lucas, Ashley & Tom?????', 1),
    ('images/WDFa011.jpeg', 'Family: Julia, Nate, Tori & Livy', 1),
    ('images/WDFa012.jpeg', 'Family: The Hess Clan', 1),
    ('images/WDFr001.jpeg', 'Friends: Joshua & Jess Hase', 1),
    ('images/WDFr002.jpeg', 'Friends: Scotty & Mary Erickson', 1),
    ('images/WDFr003.jpeg', 'Friends: Lauren & ????? ??????', 1),
    ('images/WDFr004.jpeg', 'Friends: Kyle & Katie Dille', 1),
    ('images/WDFr005.jpeg', 'Friends: Matt, Tristan, Laura, Duncan, Jason, Megan, Ryan, Kyle, Katie, Jess & Joshua', 1),
    ('images/WDFr006.jpeg', 'Friends: Jason, Megan & Ryan', 1),
    ('images/WDFr007.jpeg', 'Friends: Vance & Laura Rades', 1),
    ('images/WDFr008.jpeg', 'Friends: Trista, Laura & Duncan Hase', 1),
    ('images/WDFr009.jpeg', 'Friends: Jason & Megan Rice', 1),
    ('images/WDFr010.jpeg', 'Friends: Julia & Mindy', 1);