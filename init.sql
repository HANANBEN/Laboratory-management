CREATE TABLE laboratoire (
    id SERIAL PRIMARY KEY,                 
    nom VARCHAR(255) NOT NULL,             
    logo BYTEA,                            -- Logo stocké en binaire
    nrc VARCHAR(50) NOT NULL,             
    active BOOLEAN DEFAULT true,           
    dateActivation DATE                   
);
