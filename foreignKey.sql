-- Active: 1747480580900@@localhost@5432@test_db
CREATE Table "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
);
CREATE Table post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE SET DEFAULT DEFAULT 2
);
ALTER Table post 
ALTER COLUMN user_id set NOT NULL;

DROP Table post ;

DROP Table "user" ;

INSERT INTO "user" (username) VALUES ('akash'),('batash'),('sagor'),('nodi') ;

UPDATE "user"
SET username = 'batash'
WHERE username = 'vatash' ;

INSERT INTO post (title, user_id)
 VALUES
 ('Enjoy with sunny day with akash' , 2),
 ('Batash just shared an amazing recipe ' ,1) ,
 ('Exploring adventures with sagor' , 4) ,
 ('Nodi''s wisdom always inspired' , 4) ;


SELECT * FROM "user";

SELECT * FROM post ;

INSERT INTO post(title,user_id) VALUES ('test',NULL) ;

DELETE FROM post
WHERE user_id IS NULL AND title = 'test';

DELETE  FROM "user"
WHERE id = 4 ;
