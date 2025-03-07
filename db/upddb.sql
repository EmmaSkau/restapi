-- Opretter kursus-tabellen
CREATE TABLE IF NOT EXISTS course (
    course VARCHAR(64) UNIQUE NOT NULL
);

-- Opretter eksamenstabellen med krypterede karakterer
CREATE TABLE IF NOT EXISTS exam (
    email VARCHAR(64) NOT NULL,
    course VARCHAR(64) NOT NULL,
    grade BLOB NOT NULL,
    juncture DATETIME NOT NULL,
    PRIMARY KEY (email, course, juncture),
    FOREIGN KEY (email) REFERENCES user(email),
    FOREIGN KEY (course) REFERENCES course(course)
);

-- Tilføj nogle kurser til test
INSERT INTO course (course) VALUES
('Data Security'),
('Data Integration'),
('Integrated Development Environments'),
('Web Programming I'),
('Web Programming II');
