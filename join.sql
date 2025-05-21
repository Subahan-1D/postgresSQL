CREATE Table "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
);

CREATE Table post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user" (id)
);

INSERT INTO "user" (username) VALUES ('akash'),('batash'),('sagor'),('nodi') ;

INSERT INTO post (title, user_id)
 VALUES
 ('Enjoy with sunny day with akash' , 2),
 ('Batash just shared an amazing recipe ' ,1) ,
 ('Exploring adventures with sagor' , 4) ,
 ('Nodi''s wisdom always inspired' , 4) ;

INSERT INTO post(id,title,user_id) values(5,'this is is a test value',NULL) ;
SELECT * FROM "user"

SELECT * FROM post

DROP TABLE post 

SELECT * FROM post as p
JOIN "user" as u on p.user_id = u.id

SELECT * FROM post 
LEFT JOIN "user" on post.user_id = "user".id

SELECT * FROM post 
RIGHT JOIN "user" on post.user_id = "user".id

SELECT * FROM post 
FULL OUTER JOIN "user" on post.user_id = "user".id