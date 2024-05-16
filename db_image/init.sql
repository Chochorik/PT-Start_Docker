CREATE USER repl_user WITH REPLICATION ENCRYPTED PASSWORD 'repl_user';
SELECT pg_create_physical_replication_slot('replication_slot');

CREATE TABLE emails ( 
    id SERIAL PRIMARY KEY, 
    emailAddress VARCHAR(255) NOT NULL 
); 
 
CREATE TABLE phoneNumbers ( 
    id SERIAL PRIMARY KEY, 
    phoneNumber VARCHAR(20) NOT NULL 
);


