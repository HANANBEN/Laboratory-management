CREATE TABLE laboratoire (
    id SERIAL PRIMARY KEY,                 
    nom VARCHAR(255) NOT NULL,             
    logo BYTEA,                            -- Logo stocké en binaire
    nrc VARCHAR(50) NOT NULL,             
    active BOOLEAN DEFAULT true,           
    dateActivation DATE                   
);
CREATE TABLE utilisateur (
    id SERIAL PRIMARY KEY,                             -- Identifiant unique de l'utilisateur
    email VARCHAR(255) NOT NULL UNIQUE,                -- Adresse email unique pour chaque utilisateur
    fkIdLaboratoire INT REFERENCES laboratoire(id),    -- Clé étrangère vers la table laboratoire
    nomComplet VARCHAR(255) NOT NULL,                  -- Nom complet de l'utilisateur
    profession VARCHAR(100),                           -- Profession ou rôle de l'utilisateur dans le laboratoire
    numTel VARCHAR(20),                                -- Numéro de téléphone de l'utilisateur
    signature BYTEA,                                   -- Signature numérique ou image
    role VARCHAR(50) NOT NULL                          -- Rôle de l'utilisateur (administrateur, technicien, etc.)
);

