💡 **Problem Statement 1 - OCD Severity Analysis**

Can Lifestyle and Family History Predict OCD Severity?

🧠 Project Overview
This project analyzes how education level, marital status, and family history impact OCD severity (measured using Y-BOCS scores). The goal is to identify high-risk patient groups and uncover behavioral patterns using SQL + Tableau.

📌 Metric Tracked
Y-BOCS Total Score
Sum of Obsession + Compulsion scores used to quantify OCD severity.

🧭 Key Dimensions
Marital Status: Single, Married, Divorced
Education Level: High School, Some College, College Degree, Graduate Degree
Family History of OCD: Yes / No
Depression / Anxiety: Comorbid diagnosis
Medications: Usage indicator

<img width="1470" alt="image" src="https://github.com/user-attachments/assets/5c77a51c-dfa0-4070-8d08-76ad683879af" />

📊 Insights
📈 Single patients with some college education had the highest average OCD severity (42.62).
💬 Married individuals with graduate degrees showed the lowest severity (36.52), suggesting social or emotional support benefits.
🧩 Lifestyle factors can significantly influence OCD outcomes, indicating potential for more tailored interventions.

📈 Visual Highlights
Bar charts grouped by Marital Status + Education Level
Dynamic color scales for Y-BOCS severity
Interactive filters for comorbidities and family history 
_________________________________________________________________________________________________________________________________________________________________________________________

**💡 Problem Statement 2 – OCD Comorbidities by Compulsion Patterns**

Are Certain Compulsions More Tied to Depression or Anxiety?

🧠 Project Overview
This analysis explores the relationship between OCD compulsion types and the presence of comorbid depression or anxiety. By using SQL + Tableau, the project uncovers which compulsions are most psychologically intense and identifies high-impact subgroups.

📌 Metrics Tracked
Patient Count by Compulsion Type
Comorbidity Count: Number of patients with Depression Diagnosis & Number of patients with Anxiety Diagnosis

🧭 Key Dimensions
Compulsion Type: Checking, Counting, Washing, Ordering, Praying
Depression Diagnosis: Yes / No
Anxiety Diagnosis: Yes / No
Optional Filters: Gender, Family History of OCD, Duration

<img width="1257" alt="image" src="https://github.com/user-attachments/assets/c92a1163-9fc5-44fe-b22a-8fa40b699c50" />


📊 Insights
🧠 Washing and Counting compulsions show the strongest overlap with both depression and anxiety.
😟 Praying and Ordering have lower overall patient counts but still reflect substantial comorbid rates.
💡 High-risk patterns suggest certain compulsions may emotionally exhaust patients faster, calling for targeted mental health support.

📈 Visual Highlights
Side-by-side bar chart grouped by Compulsion Type
Color-coded comparison of: Total patients | With Depression | With Anxiety

Interactive filters to slice by demographics and comorbid indicators

✅ Use Case: Supports early screening strategies by surfacing which compulsions require more holistic mental health evaluation (beyond just OCD symptoms).

________________________________________________________________________________________________________________________________________________________________________________________

**💡 Problem 3 – Obsession Loops: Do Certain Obsessions Always Lead to Certain Compulsions?**

Can we identify patterns where specific obsessions are strongly linked to certain compulsions?

🧠 Project Overview
This analysis investigates whether particular OCD obsessions consistently lead to specific compulsions. By joining and aggregating the data, it uncovers behavioral loops — repeated patterns that define how patients respond to intrusive thoughts.

📌 Metrics Tracked
Frequency of Obsession–Compulsion pairs
Co-occurrence counts per combination

🧭 Key Dimensions
Obsession Type
Compulsion Type

<img width="700" alt="image" src="https://github.com/user-attachments/assets/c47e3a82-d6bb-460f-80fe-eff385a2206d" />

📊 Insights
🔁 Certain obsessions (e.g., Contamination) are consistently tied to specific compulsions (e.g., Washing).
🧠 These loops reflect core behavioral pathways, helping therapists design tailored interventions.
📉 Loops with the highest frequency may signal automatic behavioral responses.

________________________________________________________________________________________________________________________________________________________________________________________

**💡 Problem 4 – Time vs. Trauma: Does Duration Always Equal Severity?**
Do patients with longer OCD symptoms always have higher severity, or do some suffer heavily in a short time?

🧠 Project Overview
This project compares duration of OCD symptoms with Y-BOCS scores to understand if time directly reflects trauma. The goal is to uncover outliers — short-duration patients with severe symptoms and long-duration patients with lower scores.

📌 Metric Tracked
Y-BOCS Total Score
Duration of Symptoms (months)

🧭 Key Dimensions
Depression Diagnosis (color coded)
Medication Use
Y-BOCS Subscores

📊 Insights
📉 Many patients with short symptom durations still report high OCD severity, especially if untreated.
💬 Duration isn’t always a predictor of mental burden — early interventions matter.
🎯 Spotting short-term, high-severity cases helps address trauma quickly.


________________________________________________________________________________________________________________________________________________________________________________________
**💡 Problem 4 – Who Are the Silent Sufferers?**
Can we identify patients with low Y-BOCS scores but hidden psychological strain?

🧠 Project Overview
This analysis identifies patients whose OCD severity seems low, but who still experience high mental health impacts via comorbid depression/anxiety or intense compulsions. These are potential “missed” cases — patients who may fall through the cracks.

📌 Metric Tracked
Y-BOCS Total < 30 (filtered)

Comorbid conditions: Depression or Anxiety Diagnosis

🧭 Key Dimensions
Depression / Anxiety Diagnosis

Compulsion Intensity (proxy)

Family History of OCD

📊 Insights
🚩 Several patients with low Y-BOCS scores still show significant psychological burden.
🧩 These patients could be overlooked if only severity is used for diagnosis.
💡 Insight supports holistic care models beyond traditional scoring.






