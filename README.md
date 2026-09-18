# HR Employee Attrition Analysis

## 📌 Project Overview

An end-to-end HR analytics project focused on understanding employee attrition patterns and identifying the key workforce, career, compensation, and employee-experience factors associated with employee turnover.

The analysis combines **Python, SQL, and Power BI** to transform raw HR data into actionable business insights through data cleaning, exploratory analysis, SQL-based investigation, and an interactive executive dashboard.

---

## 🎯 Business Objective

The objective of this project is to answer key HR business questions such as:

- What is the overall employee attrition rate?
- Which departments and job roles experience higher attrition?
- Which employee groups are more likely to leave?
- How do income, job satisfaction, work-life balance, and relationship satisfaction relate to attrition?
- Does overtime or business travel show differences in attrition?
- How do tenure, years at company, and career progression relate to employee turnover?
- Which areas should HR investigate further to improve employee retention?

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| Python | Data cleaning, EDA and analytical exploration |
| Pandas | Data manipulation and transformation |
| NumPy | Numerical analysis |
| Matplotlib | Data visualization |
| SQL | Business-focused analysis and employee segmentation |
| Power BI | Interactive dashboard and executive reporting |
| Excel | Initial data inspection and validation |

---

## 🔄 Project Workflow

**Raw HR Data**  
↓  
**Data Cleaning & Preparation**  
↓  
**Exploratory Data Analysis — Python**  
↓  
**Business Analysis — SQL**  
↓  
**KPI & Attrition Analysis**  
↓  
**Power BI Dashboard**  
↓  
**Business Insights**

---

# 📊 Key Analysis Areas

### 1. Executive Overview

The first dashboard page provides a high-level view of the workforce and overall attrition situation.

Key metrics include:

- Total Employees
- Employees Stayed
- Employees Left
- Overall Attrition Rate

The page also examines attrition across:

- Department
- Age Group
- Tenure
- Overtime

Interactive filters allow HR users to explore the results by employee segment.

---

### 2. Employee Demographics & Attrition Drivers

This analysis investigates employee-level characteristics and experience factors associated with attrition.

Key areas include:

- Gender
- Marital Status
- Income Group
- Relationship Satisfaction
- Job Satisfaction
- Work-Life Balance

These dimensions help identify employee segments where attrition rates differ substantially.

---

### 3. Workforce & Career Drivers

The third dashboard page focuses on career progression, job structure, tenure and work-related factors.

Analysis includes:

- Job Role
- Job Level
- Years in Current Role
- Years at Company
- Promotion Gap
- Business Travel

This provides a workforce and career-oriented perspective of employee turnover.

---

# 🔎 Key Findings

The analysis identified several notable attrition patterns:

- Overall employee attrition is **16.12%**, with 237 employees having left.
- Attrition varies significantly across job roles, with **Sales Representative** showing the highest rate among the displayed roles.
- The **18–25 age group** shows substantially higher attrition than the other age groups.
- Employees in the **lowest income group** show a considerably higher attrition rate than higher-income groups.
- Employees reporting **low job satisfaction** show higher attrition than employees with higher satisfaction levels.
- **Low work-life balance** is associated with a substantially higher attrition rate.
- Employees with shorter tenure show higher attrition compared with several longer-tenured groups.
- Attrition differs considerably across job levels, with **Entry Level** employees showing a higher rate than several seniority levels.
- Employees who travel frequently show higher attrition than employees who do not travel.
- Promotion timing also shows differences in attrition across employee groups.

> These findings describe patterns in the dataset and should not be interpreted as proof that any single factor directly causes employee attrition.

---

# 🐍 Python Analysis

Python was used as the analytical foundation of the project.

### Main activities

- Loaded and inspected the HR dataset
- Checked dataset structure and data types
- Examined missing values
- Identified duplicate records
- Investigated constant and low-variation columns
- Generated descriptive statistics
- Performed categorical and numerical analysis
- Created exploratory visualizations
- Calculated attrition rates across employee segments
- Identified major attrition patterns for further business analysis

The analysis was performed using **Pandas, NumPy and Matplotlib**.

---

# 🗄️ SQL Analysis

SQL was used to approach the dataset from a business-analysis perspective.

Key analysis included:

- Overall employee and attrition metrics
- Attrition by department
- Attrition by job role
- Attrition by job level
- Income-based employee segmentation
- Tenure analysis
- Overtime analysis
- Business travel analysis
- Satisfaction-based analysis
- Employee segmentation for identifying higher-risk groups

SQL helped convert the raw employee data into structured business questions and measurable results.

---

# 📈 Power BI Dashboard

The Power BI report contains three analytical pages:

### Page 1 — HR Attrition Executive Overview
Executive-level workforce KPIs and major demographic/tenure patterns.

### Page 2 — Employee Demographics & Attrition Drivers
Employee characteristics and experience-related attrition patterns.

### Page 3 — Workforce & Career Drivers
Job structure, career progression, tenure and work-related attrition patterns.

The dashboard uses interactive filters to allow users to explore employee segments and compare attrition rates.

---

# 💡 Business Perspective

The analysis can help HR teams investigate areas such as:

- Early-career employee retention
- High-attrition job roles
- Compensation-related workforce patterns
- Employee satisfaction
- Work-life balance
- Overtime exposure
- Career progression
- Promotion timing
- Business travel requirements

The dashboard is intended as a **decision-support and exploratory analytics tool**, rather than a predictive employee-risk model.

---

## 📁 Project Structure

```text
HR-Employee-Attrition-Analysis/
│
├── Python/
│   └── HR_Attrition_Analysis.ipynb
│
├── SQL/
│   └── HR_Attrition_Analysis.sql
│
├── PowerBI/
│   └── HR_Attrition_Dashboard.pbix
│
├── Dashboard/
│   ├── Executive_Overview.png
│   ├── Demographics_Attrition_Drivers.png
│   └── Workforce_Career_Drivers.png
│
├── Documentation/
│   └── HR_Attrition_Project_Report.pdf
│
└── README.md
