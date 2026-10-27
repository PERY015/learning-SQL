CREATE TABLE if not exists aircrafts (
    aircraft_id SERIAL PRIMARY KEY,
    registration_number VARCHAR(20) UNIQUE NOT NULL,
    airline VARCHAR(100) NOT NULL,
    aircraft_model VARCHAR(100) NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    capacity INTEGER NOT NULL CHECK (capacity > 0),
    manufacturing_year INTEGER CHECK (manufacturing_year BETWEEN 1950 AND 2100),
    status VARCHAR(30) NOT NULL DEFAULT 'Active'
        CHECK (status IN ('Active', 'Maintenance', 'Retired'))
);

INSERT INTO aircrafts
(registration_number, airline, aircraft_model, manufacturer,
 capacity, manufacturing_year, status)
VALUES
('A6-EEA', 'Emirates', 'Airbus A380-800', 'Airbus', 517, 2019, 'Active'),
('A6-EEB', 'Emirates', 'Boeing 777-300ER', 'Boeing', 354, 2020, 'Active'),
('A6-FEA', 'flydubai', 'Boeing 737 MAX 8', 'Boeing', 189, 2021, 'Active'),
('A6-FEB', 'flydubai', 'Boeing 737-800', 'Boeing', 189, 2018, 'Maintenance'),
('A6-ARA', 'Air Arabia', 'Airbus A320-200', 'Airbus', 174, 2019, 'Active'),
('A6-ARB', 'Air Arabia', 'Airbus A321neo', 'Airbus', 215, 2023, 'Active'),
('A6-DEA', 'Emirates Executive', 'Airbus ACJ319', 'Airbus', 19, 2017, 'Active'),
('A6-BBA', 'Dubai Air Wing', 'Boeing 737', 'Boeing', 100, 2015, 'Active');

select * from aircrafts;