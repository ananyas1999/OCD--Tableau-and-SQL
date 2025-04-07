# OCD-Power-BI-and-SQL

Problem 1 - OCD Severity Analysis: Can Lifestyle and Family History Predict OCD Severity?

🧠 Project Summary
This project analyzes whether lifestyle factors — such as education level and marital status — and family history have a measurable impact on OCD severity, using real-world patient data and Y-BOCS scores. The insights aim to support more personalized mental health care strategies and identify high-risk patient segments.

📌 North Star Metric
Y-BOCS Total Score: Sum of Obsession and Compulsion scores used to quantify OCD severity.

📐 Key Dimensions
Marital Status: Married, Single, Divorced

Education Level: High School, Some College, College Degree, Graduate Degree

Family History of OCD: Yes / No

Depression / Anxiety Diagnoses: Comorbidity indicators

Medications: Presence or absence of medication use

🔍 Summary of Insights
Marital Status + Education Level
Single patients with only some college education reported the highest average OCD severity.

Married individuals with graduate degrees had the lowest average severity, suggesting possible emotional or social support buffers.

High-risk combinations:
Marital Status	Education Level	Avg. YBOCS Severity
Single	Some College	42.62
Divorced	High School	40.25+
Married	Graduate Degree	36.52
📈 Tableau Dashboard Features
Bar Charts grouped by Marital Status & Education

Color-coded OCD severity scale

Tooltips with dynamic labels

Filters for Family History, Depression, and Medication (coming soon)

Coming Soon: Additional visuals exploring comorbidity with depression and anxiety, and visualized obsession–compulsion patterns.

🛠 Tools Used
Tool	Purpose
MySQL Workbench	Data cleaning & aggregation (YBOCS calculation, groupings)
Tableau Public	Dashboard design and interactive visualization
GitHub	Project hosting and documentation
CSV	For lightweight, portable dataset integration


✅ Recommendations
Explore if emotional support (e.g., marital status) has a protective role in OCD symptom escalation.

Further investigate the impact of early education or awareness programs on long-term OCD severity.

Clinical models may benefit from targeting high-risk lifestyle profiles identified here.
