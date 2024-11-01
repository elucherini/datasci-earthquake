/* Disclaimer: this is mock data. It should not be relied upon to determine any property’s safety or compliance with the soft story program.*/

SET search_path TO public;

CREATE TABLE IF NOT EXISTS combined_risk (
    id SERIAL PRIMARY KEY,
    address VARCHAR(50) NOT NULL UNIQUE,
    soft_story_risk BOOLEAN NOT NULL DEFAULT FALSE,
    seismic_hazard_risk BOOLEAN NOT NULL DEFAULT FALSE,
    landslide_risk BOOLEAN NOT NULL DEFAULT FALSE,
    liquefaction_risk BOOLEAN NOT NULL DEFAULT FALSE
    
);

INSERT INTO combined_risk (address, soft_story_risk, seismic_hazard_risk, landslide_risk, liquefaction_risk) VALUES 
('3560 PIERCE ST, SAN FRANCISCO CA', TRUE, FALSE, FALSE, FALSE),
('3484 18TH ST, SAN FRANCISCO CA', TRUE, TRUE, FALSE, TRUE),
('175 ALHAMBRA ST, SAN FRANCISCO CA', FALSE, FALSE, FALSE, FALSE),
('106 HAIGHT ST, SAN FRANCISCO CA', TRUE, TRUE, TRUE, TRUE),
('3852 CALIFORNIA ST, SAN FRANCISCO CA', FALSE, TRUE, FALSE, TRUE)
;