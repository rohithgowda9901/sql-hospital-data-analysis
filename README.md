# 🏥 Hospital Data Analysis | SQL & PostgreSQL

## 📌 Project Overview

This project presents a SQL-based Hospital Data Analysis case study developed using PostgreSQL.

The analysis uses hospital data to answer 10 business questions related to patient volume, doctor availability, hospital expenses, length of stay, departmental performance, geographic patient distribution, and monthly medical expenses.

The objective is to transform hospital data into meaningful business insights that can support healthcare resource planning, staffing, capacity management, and financial decision-making.

---

## 🎯 Business Objectives

The project addresses the following business questions:

1. What is the total number of patients across all hospitals?
2. What is the average number of doctors available at each hospital?
3. Which 3 hospital departments have the highest number of patients?
4. Which hospital has the maximum medical expenses?
5. What are the average medical expenses per day for each hospital?
6. Which hospital record has the longest stay?
7. Which locations have the highest number of patients?
8. What is the average length of stay for each department?
9. Which department has the lowest number of patients?
10. What are the total medical expenses for each month?

---

## 🛠️ Tools & Technologies

- **PostgreSQL**
- **SQL**
- **CSV Dataset**
- **Aggregate Functions**
- **GROUP BY**
- **ORDER BY**
- **LIMIT**
- **Date & Time Functions**
- **Data Analysis**

---

## 📊 SQL Concepts Demonstrated

This project demonstrates practical use of:

- `SUM()`
- `AVG()`
- `MAX()`
- `GROUP BY`
- `ORDER BY`
- `LIMIT`
- `NULLIF()`
- `DATE_TRUNC()`
- Date arithmetic
- Aliases
- Filtering and ranking
- Business-oriented SQL analysis

---

## 🔍 Analysis Performed

### Patient Analysis

- Total patient count across hospitals
- Top hospital departments by patient volume
- Patient distribution by location
- Department with the lowest patient volume

### Hospital & Staff Analysis

- Average number of doctors per hospital
- Hospital with the highest medical expenses

### Expense Analysis

- Daily average medical expenses
- Monthly medical expense trends
- Comparison of medical spending across hospitals

### Hospital Stay Analysis

- Longest hospital stay
- Average length of stay by department

---

## 💡 Key Business Insights

The analysis helps identify:

- Hospitals and departments experiencing higher patient demand.
- Differences in doctor availability across hospitals.
- Hospitals with relatively higher medical expenditure.
- Locations with greater patient volumes.
- Departments with longer or shorter average patient stays.
- Departments with comparatively lower patient demand.
- Monthly patterns in medical expenses.

These insights can support decisions related to **staffing, resource allocation, hospital capacity, patient-care efficiency, and financial planning**.

---

## 🖥️ Query Results

The project includes screenshots of the PostgreSQL query results for all 10 business questions.

| Question | Analysis |
|---|---|
| Q01 | Total Number of Patients |
| Q02 | Average Number of Doctors |
| Q03 | Top 3 Hospital Departments |
| Q04 | Maximum Medical Expenses |
| Q05 | Daily Average Medical Expenses |
| Q06 | Longest Hospital Stay |
| Q07 | Total Patients by Location |
| Q08 | Average Length of Stay by Department |
| Q09 | Department with Lowest Patient Count |
| Q10 | Monthly Medical Expenses |

---

## 📁 Project Structure

```text
sql-hospital-data-analysis/
│
├── README.md
│
├── Database/
│   └── hospital_data_setup.sql
│
├── Dataset/
│   └── hospital-data.csv
│
├── Documentation/
│   └── 30-days-SQL-micro-course-assignment.pdf
│
├── SQL/
│   └── hospital-analysis-queries.sql
│
└── Screenshots/
    ├── Q01-total-patients.png
    ├── Q02-average-number-of-doctors.png
    ├── Q03-top-3-hospital-departments.png
    ├── Q04-maximum-medical-expenses.png
    ├── Q05-daily-average-medical-expenses.png
    ├── Q06-longest-hospital-stay.png
    ├── Q07-total-patients-by-location.png
    ├── Q08-average-length-of-stay-by-department.png
    ├── Q09-department-lowest-patient-count.png
    └── Q10-monthly-medical-expenses.png
