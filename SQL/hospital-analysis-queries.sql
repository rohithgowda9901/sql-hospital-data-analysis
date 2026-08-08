SELECT * FROM hospital_data;


--1.Total Number of Patients 
--Write an SQL query to find the total number of patients across all hospitals.

SELECT SUM(patients_count) AS total_patients 
FROM hospital_data;
  

--2.Average Number of Doctors per Hospital	
--Retrieve the average count of doctors available in each hospital. 

SELECT hospital_name, AVG(doctors_count) AS Average_of_doctors
FROM hospital_data
GROUP BY hospital_name;


--3.Top 3 Departments with the Highest Number of Patients	
--Find the top 3 hospital departments that have the highest number of patients. 

SELECT * FROM hospital_data;

SELECT hospital_name, department, patients_count
FROM hospital_data
ORDER BY patients_count DESC LIMIT 3;


--4.Hospital with the Maximum Medical Expenses  	
--Identify the hospital that recorded the highest medical expenses. 

SELECT hospital_name, MAX(medical_expenses) AS maximumn_expenses
FROM hospital_data
GROUP BY hospital_name
ORDER BY maximumn_expenses DESC LIMIT 1;


--5.Daily Average Medical Expenses 
--Calculate the average medical expenses per day for each hospital. 

SELECT * FROM hospital_data;

SELECT Hospital_Name,
    AVG(Medical_Expenses / NULLIF((Discharge_Date - Admission_Date),0)) AS Avg_Expense_Per_Day
FROM Hospital_Data
GROUP BY Hospital_Name;


--6.Longest Hospital Stay 
--Find the patient with the longest stay by calculating the difference between Discharge Date and Admission Date. 

SELECT Hospital_Name,Location,Department,Patients_Count,Admission_Date,Discharge_Date,
	(Discharge_Date - Admission_Date) AS Stay_Days
FROM Hospital_Data
ORDER BY Stay_Days DESC
LIMIT 1;


--7.Total Patients Treated Per City	
--Count the total number of patients treated in each city. 

SELECT location, SUM(patients_count) AS total_patients
FROM Hospital_Data
GROUP BY location
ORDER BY total_patients DESC;


--8.Average Length of Stay Per Department 
--Calculate the average number of days patients spend in each department.

SELECT Department,
    AVG(Discharge_Date - Admission_Date) AS Avg_Stay_Days
FROM Hospital_Data
GROUP BY Department;


--9.Identify the Department with the Lowest Number of Patients	
--Find the department with the least number of patients. 

SELECT 
    Department,
    SUM(Patients_Count) AS Total_Patients
FROM Hospital_Data
GROUP BY Department
ORDER BY Total_Patients ASC
LIMIT 1;



--10.Monthly Medical Expenses Report 
--Group the data by month and calculate the total medical expenses for each month. 

SELECT 
    DATE_TRUNC('month', Admission_Date) AS Month,
    SUM(Medical_Expenses) AS Total_Medical_Expenses
FROM Hospital_Data
GROUP BY Month
ORDER BY Month;