CREATE DATABASE hospital;

CREATE TABLE hospital_data(
	Hospital_Name VARCHAR(50),
    Location VARCHAR(50),
	Department VARCHAR(50),
	Doctors_Count	INT,
	Patients_Count	INT,
	Admission_Date	DATE,
	Discharge_Date	DATE,
	Medical_Expenses DECIMAL(10,2)
);

COPY hospital_data (hospital_name, location, department, doctors_count, patients_count, admission_date, 
		discharge_date, medical_expenses)
FROM 'D:\Data Analyst\SQL\Certificate Assignment\30 Days SQL Course Assignment\Hospital_Data.csv'
CSV HEADER;


SELECT * FROM hospital_data;