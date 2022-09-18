--DROP TABLE gallery;

--Create Table
CREATE TABLE gallery (
    id SERIAL PRIMARY KEY,
    path VARCHAR(500) NOT NULL,
    description VARCHAR(500) NOT NULL,
    huzzahs INTEGER DEFAULT 1
    );

    --Insert Initial Data
    INSERT INTO gallery
    (path, description, huzzahs)
    VALUES
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
    ('images/WDFa001.jpeg', 'Uncle Steve', 1),
    ('images/WDFa002.jpeg', 'Lucy, Jenna, Julia, Ryan, Sarah & Terry', 1),
    ('images/WDFa003.jpeg', 'Judy & Aunt Barb', 1),
    ('images/WDFa004.jpeg', 'Pets, Betty & Malayah', 1),
    ('images/WDFa005.jpeg', 'Uncle Mark & Aunt Mary', 1),
    ('images/WDFa006.jpeg', 'Ryan & Uncle Roy', 1),
    ('images/WDFa007.jpeg', 'Judy & Pap', 1),
    ('images/WDFa008.jpeg', 'Julia & Uncle Steve', 1),
    ('images/WDFa009.jpeg', 'Julia & Penny', 1),
    ('images/WDFa010.jpeg', 'Nate, Lucas, Julia, Ashley & Anthony', 1),
    ('images/WDFa011.jpeg', 'Julia, Nate, Tori & Livy', 1),
    ('images/WDFa012.jpeg', 'The Hess Clan', 1),
    ('images/WDFr001.jpeg', 'Joshua & Jess Hase', 1),
    ('images/WDFr002.jpeg', 'Scotty & Mary Erickson', 1),
    ('images/WDFr003.jpeg', 'Lauren & Jon Adsem', 1),
    ('images/WDFr004.jpeg', 'Katie & Kyle Dille', 1),
    ('images/WDFr005.jpeg', 'Matt, Tristan, Laura, Duncan, Jason, Megan, Ryan, Kyle, Katie, Jess & Joshua', 1),
    ('images/WDFr006.jpeg', 'Jason, Megan & Ryan', 1),
    ('images/WDFr007.jpeg', 'Laura & Vance Rades', 1),
    ('images/WDFr008.jpeg', 'Trista, Laura & Duncan Hase', 1),
    ('images/WDFr009.jpeg', 'Jason & Megan Rice', 1),
    ('images/WDFr010.jpeg', 'Mindy & Julia', 1);