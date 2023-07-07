--CREATE DATABASE db2game;
--extra database optional

DROP TABLE if exists hardware;
DROP TABLE if exists lobby;
DROP TABLE if exists employe ;
DROP TABLE if exists security;
-- Table SECURITY

CREATE TABLE security  (
    badge_number CHAR(5) NOT NULL,
    sign_out_date DATE,
    sign_out_time TIME ,
    sign_in_time TIME ,
   PRIMARY KEY(badge_number)
    );

-- Table EMPLOYE

CREATE TABLE employe (
    employee_id CHAR(6) NOT NULL,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    location CHAR(6),
    manager_id CHAR(6),
    extension CHAR(4),
    gender CHAR(1),
    hair_colour CHAR(6),
    badge_number CHAR(5),
    restricted_access CHAR(1),
    PRIMARY KEY (employee_id)
    );

-- Table LOBBY

CREATE TABLE lobby (
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    badge_number CHAR(5) NOT NULL
    );

ALTER TABLE lobby
    FOREIGN KEY (badge_number)
	REFERENCES security (badge_number)
       ;


-- Table HARDWARE

CREATE TABLE hardware (
    employee_id CHAR(6),
    location CHAR(6),
    hardware_tn CHAR(8),
    hardware_sn CHAR(8) NOT NULL,
    PRIMARY KEY (hardware_sn)
    );


ALTER TABLE hardware
    FOREIGN KEY (employee_id)
	REFERENCES employe (employee_id);
