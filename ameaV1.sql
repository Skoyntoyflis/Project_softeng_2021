CREATE DATABASE AmeaAssistant ;



CREATE TABLE Admin(
adm_id INT(9),
username VARCHAR(25),
password VARCHAR(25),
email VARCHAR(25),
PRIMARY KEY(adm_id)
);



CREATE TABLE User(
user_id INT(9) NOT NULL,
username VARCHAR(25),
password VARCHAR(25),
name CHAR(25),
phone BIGINT(16),
email VARCHAR(25),
birth_date DATE,
PRIMARY KEY(user_id)
);


CREATE TABLE Amea(
amea_id INT(9)
disability ENUM()
message TEXT,
emergency_contacts
doctors
PRIMARY KEY(amea_id),
CONSTRAINT AMEA
FOREIGN KEY(amea_id) REFERENCES User(user_id)
ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Volunteer(
vol_id INT(9)
active ENUM('Y','N'),
itineraries
PRIMARY KEY vol_id),
CONSTRAINT VOL
FOREIGN KEY (vol_id) REFERENCES User(user_id)
ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Location(
loc_id INT(9),
NAME VARCHAR(25),
address VARCHAR(25),
access ENUM('Y','N'),
PRIMARY KEY(loc_id)
);

CREATE TABLE Event(
event_id INT(9),
e_user_id INT(9),
date_and_time DATETIME,
description TEXT,
title VARCHAR(25),
PRIMARY KEY(event_id),
CONSTRAINT EVNT
FOREIGN KEY (e_user_id) REFERENCES User(user_id)
ON DELETE CASCADE ON UPDATE CASCADE
);