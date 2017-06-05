DROP TABLE IF EXISTS Quotes,Authors;

CREATE TABLE IF NOT EXISTS Authors(Id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(25)) ENGINE=InnoDB;
CREATE TABLE IF NOT EXISTS Quotes(Id INT PRIMARY KEY AUTO_INCREMENT,
    AUTHORId INT, Quote VARCHAR(100),
    FOREIGN KEY(AuthorId) REFERENCES Authors(Id) ON DELETE CASCADE)
    ENGINE=InnoDB;
    
    INSERT INTO Authors(Id, Name) VALUES(1, 'Bruce Lee');
    INSERT INTO Authors(Id, Name) VALUES(2, 'Mr Miyagi');
    INSERT INTO Authors(Id, Name) VALUES(3, 'Rocky Balboa');
    INSERT INTO Authors(Id, Name) VALUES(4, 'Christie Brinkley');
    INSERT INTO Authors(Id, Name) VALUES(5, 'Peter Griffen');
    
    INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(1, 1, 'I am Babs');
    INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(2, 1, 'I am Lingoji');
    INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(3, 2, 'I am DBA');
    INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(4, 2, 'I am Engineer');
    INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(5, 3, 'I am Doctor');
    INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(6, 4, 'I am Nurse');
    INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(7, 4, 'I am Teacher');
    INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(8, 5, 'I am Banker');
    INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(9, 5, 'I am Actor');
    