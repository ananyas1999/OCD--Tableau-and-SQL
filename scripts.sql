USE project_db1;
SELECT * FROM dataset LIMIT 10;
DESCRIBE dataset;
SELECT * FROM dataset LIMIT 10; #preview data

SELECT                            #handle nulls
  COUNT(*) AS total_rows,
  SUM(CASE WHEN `Education Level` IS NULL THEN 1 ELSE 0 END) AS missing_education,
  SUM(CASE WHEN `Marital Status` IS NULL THEN 1 ELSE 0 END) AS missing_marital_status,
  SUM(CASE WHEN `Family History of OCD` IS NULL THEN 1 ELSE 0 END) AS missing_family_history
FROM dataset;

CREATE VIEW ocd_severity_view AS    #create views 
SELECT 
    `Patient ID`,
    `Education Level`,
    `Marital Status`,
    `Family History of OCD`,
    `Previous Diagnoses`,
    `Y-BOCS Score (Obsessions)` + `Y-BOCS Score (Compulsions)` AS YBOCS_Total
FROM dataset
WHERE `Y-BOCS Score (Obsessions)` IS NOT NULL 
  AND `Y-BOCS Score (Compulsions)` IS NOT NULL;

SELECT `Education Level`, #YBOCS Avg by Education Level
       ROUND(AVG(YBOCS_Total), 2) AS avg_ybocs
FROM ocd_severity_view
GROUP BY `Education Level`
ORDER BY avg_ybocs DESC;

SELECT `Marital Status`,  #by martial status
       ROUND(AVG(YBOCS_Total), 2) AS avg_ybocs
FROM ocd_severity_view
GROUP BY `Marital Status`
ORDER BY avg_ybocs DESC;

SELECT `Family History of OCD`,   #family_history
       ROUND(AVG(YBOCS_Total), 2) AS avg_ybocs
FROM ocd_severity_view
GROUP BY `Family History of OCD`
ORDER BY avg_ybocs DESC;

SELECT 
  `Patient ID`,
  `Education Level`,
  `Marital Status`,
  `Family History of OCD`,
  `Previous Diagnoses`,
  (`Y-BOCS Score (Obsessions)` + `Y-BOCS Score (Compulsions)`) AS YBOCS_Total
FROM dataset
WHERE `Y-BOCS Score (Obsessions)` IS NOT NULL 
  AND `Y-BOCS Score (Compulsions)` IS NOT NULL;

SELECT 
  `Compulsion Type`,
  COUNT(*) AS total_patients,
  SUM(CASE WHEN `Depression Diagnosis` = 'Yes' THEN 1 ELSE 0 END) AS with_depression,
  SUM(CASE WHEN `Anxiety Diagnosis` = 'Yes' THEN 1 ELSE 0 END) AS with_anxiety
FROM dataset
GROUP BY `Compulsion Type`;

SELECT 
  `Obsession Type`,
  `Compulsion Type`,
  COUNT(*) AS pair_count
FROM dataset
GROUP BY `Obsession Type`, `Compulsion Type`
ORDER BY pair_count DESC;


SELECT 
  `Patient ID`,
  `Duration of Symptoms (months)` AS Duration,
  (`Y-BOCS Score (Obsessions)` + `Y-BOCS Score (Compulsions)`) AS YBOCS_Total,
  `Depression Diagnosis`
FROM dataset
WHERE 
  `Duration of Symptoms (months)` IS NOT NULL 
  AND `Y-BOCS Score (Obsessions)` IS NOT NULL 
  AND `Y-BOCS Score (Compulsions)` IS NOT NULL;


