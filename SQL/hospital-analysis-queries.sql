--Hospital Data Analysis
-- PostgreSQL
-- 10 Business Questions



--1.Total Number of Patients 
--Write an SQL query to find the total number of patients across all hospitals.

SELECT
	SUM(PATIENTS_COUNT) AS TOTAL_PATIENTS
FROM
	HOSPITAL_DATA;
  
  
  --2.Average Number of Doctors per Hospital	
--Retrieve the average count of doctors available in each hospital. 

SELECT
	HOSPITAL_NAME,
	AVG(DOCTORS_COUNT) AS AVERAGE_OF_DOCTORS
FROM
	HOSPITAL_DATA
GROUP BY
	HOSPITAL_NAME;


--3.Top 3 Departments with the Highest Number of Patients	
--Find the top 3 hospital departments that have the highest number of patients. 

SELECT
	HOSPITAL_NAME,
	DEPARTMENT,
	PATIENTS_COUNT
FROM
	HOSPITAL_DATA
ORDER BY
	PATIENTS_COUNT DESC
LIMIT
	3;


--4.Hospital with the Maximum Medical Expenses  	
--Identify the hospital that recorded the highest medical expenses. 

SELECT
	HOSPITAL_NAME,
	MAX(MEDICAL_EXPENSES) AS MAXIMUM_EXPENSES
FROM
	HOSPITAL_DATA
GROUP BY
	HOSPITAL_NAME
ORDER BY
	MAXIMUM_EXPENSES DESC
LIMIT
	1;


--5.Daily Average Medical Expenses 
--Calculate the average medical expenses per day for each hospital. 

SELECT
	HOSPITAL_NAME,
	AVG(
		MEDICAL_EXPENSES / NULLIF((DISCHARGE_DATE - ADMISSION_DATE), 0)
	) AS AVG_EXPENSE_PER_DAY
FROM
	HOSPITAL_DATA
GROUP BY
	HOSPITAL_NAME;


--6.Longest Hospital Stay 
--Find the patient with the longest stay by calculating the difference between Discharge Date and Admission Date. 

SELECT
	HOSPITAL_NAME,
	LOCATION,
	DEPARTMENT,
	PATIENTS_COUNT,
	ADMISSION_DATE,
	DISCHARGE_DATE,
	(DISCHARGE_DATE - ADMISSION_DATE) AS STAY_DAYS
FROM
	HOSPITAL_DATA
ORDER BY
	STAY_DAYS DESC
LIMIT
	1;


--7.Total Patients Treated Per City	
--Count the total number of patients treated in each city. 

SELECT
	LOCATION,
	SUM(PATIENTS_COUNT) AS TOTAL_PATIENTS
FROM
	HOSPITAL_DATA
GROUP BY
	LOCATION
ORDER BY
	TOTAL_PATIENTS DESC;


--8.Average Length of Stay Per Department 
--Calculate the average number of days patients spend in each department.

SELECT
	DEPARTMENT,
	AVG(DISCHARGE_DATE - ADMISSION_DATE) AS AVG_STAY_DAYS
FROM
	HOSPITAL_DATA
GROUP BY
	DEPARTMENT;


--9.Identify the Department with the Lowest Number of Patients	
--Find the department with the least number of patients. 

SELECT
	DEPARTMENT,
	SUM(PATIENTS_COUNT) AS TOTAL_PATIENTS
FROM
	HOSPITAL_DATA
GROUP BY
	DEPARTMENT
ORDER BY
	TOTAL_PATIENTS ASC
LIMIT
	1;


--10.Monthly Medical Expenses Report 
--Group the data by month and calculate the total medical expenses for each month. 

SELECT
	DATE_TRUNC('month', ADMISSION_DATE) AS MONTH,
	SUM(MEDICAL_EXPENSES) AS TOTAL_MEDICAL_EXPENSES
FROM
	HOSPITAL_DATA
GROUP BY
	MONTH
ORDER BY
	MONTH;





