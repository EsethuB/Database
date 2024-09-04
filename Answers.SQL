-- Part 1
CREATE DATABASE Hospital;

USE hospital;

-- Part 2
CREATE TABLE patients(
patient_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR (50) NOT NULL,
last_name VARCHAR (50) NOT NULL,
date_of_birth DATE NOT NULL,
gender VARCHAR (50),
language VARCHAR (20) NOT NULL
);

CREATE TABLE Providers(
provide_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR (60) NOT NULL,
last_name VARCHAR (50) NOT NULL,
Provider_speciality VARCHAR (255) NOT NULL,
email_adress VARCHAR (225),
phone_number VARCHAR (225),
date_joined DATE NOT NULL
);

CREATE TABLE Visit(
visit_id INT PRIMARY KEY auto_increment,
patient_id INT FOREIGN KEY REFERENCES patient(patient_id),
provider_id INT FOREIGN KEY REFERENCES provider(provider_id),
date_of_visit DATE NOT NULL,
date_scheduled DATE NOT NULL,
visit_department_id INT NOT,
visit_type VARCHAR(225),
Blood_pressure_sytollic INT,
blood_pressure_systollic DECIMAL,
Pulse DECIMAL,
visit_status VARCHAR NOT NULL

);

CREATE TABLE Ed_Visit(
Ed_visit_id INT PRIMARY KEY AUTO_INCREMENT,
Visit_id INT FOREIGN KEY REFERENCES vistit (visit_id),
patient_id INT FOREIGN KEY REFERENCES patient(patient_id),
acuity INT NOT NULL,
reason_for_visit VARCHAR(225) NOT FULL
disposition VARCHA NOT NULL
);

CREATE TABLE Discharge (
discharge_id INT PRIMARY KEY AUTO_INCREMENT,
Admission_id INT FOREIGN KEY REFERENCE admission(admission_id),
patient_id INT FOREIGN KEY REFERENCE patients(patients_id),
Discharge_date DATE NOT NULL,
Discharge_disposition DATE NOT NULL
);-- 

CREATE TABLE  Admission(
Admission_Id INT PRIMARY KEY AUTO_INCREMENT,
patient_id INT FOREIGN KEY REFERENCES patient(patient_id)
admission_date DATE NOT NULL,
discharge_date DATE NOT NULL,
discharge_disposition VARCHAR (225) NOT NULL,
service_date VARCHAR (225) NOT NULL,
Primary_diagnosis VARCHAR (225) NOT NULL
);


















