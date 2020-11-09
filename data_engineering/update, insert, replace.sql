USE production;

-- [UPDATE]
-- problem: if data doesn't exist, cannot udpate the value
UPDATE artist_genres SET genre = 'pop' WHERE artist_id = '1234';
SELECT * FROM artist_genres;

-- [REPLACE]
ALTER TABLE artist_genres ADD COLUMN country VARCHAR(255);
SELECT * FROM artist_genres;
ALTER TABLE artist_genres ADD COLUMN updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

INSERT INTO artist_genres (artist_id, genre, country) VALUES ('1234', 'pop', 'UK'); -- ERROR 

-- problem: efficiency issue
REPLACE INTO artist_genres (artist_id, genre, country) VALUES ('1234', 'rock', 'UK');
-- problem2: when primary key is auto_increment, if a data is deleted the id is changed

-- [INSERT IGNORE]
INSERT IGNORE INTO artist_genres (artist_id, genre, country) VALUES ('1234', 'rock', 'FR'); -- WARNING

-- [INSERT INTO, UPDATE ON DUPLICATE KEY]
INSERT INTO artist_genres (artist_id, genre, country) VALUES ('1234', 'rock', 'FR') ON DUPLICATE KEY UPDATE artist_id = "1234", genre = 'rock', country = 'FR'; 



