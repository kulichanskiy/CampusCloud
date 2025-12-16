-- GPA Calculator for student

SELECT 
    s.studentID AS `SID`,
    CONCAT(s.fName, " ", s.lName) AS `Student Name`,
    AVG(g.gpaValue) AS GPA
FROM (
    SELECT 
        studentID,
        CASE grade
            WHEN 'A+' THEN 4.33
            WHEN 'A'  THEN 4.00
            WHEN 'A-' THEN 3.67
            WHEN 'B+' THEN 3.33
            WHEN 'B'  THEN 3.00
            WHEN 'B-' THEN 2.67
            WHEN 'C+' THEN 2.33
            WHEN 'C'  THEN 2.00
            WHEN 'C-' THEN 1.67
            WHEN 'D+' THEN 1.33
            WHEN 'D'  THEN 1.00
            WHEN 'D-' THEN 0.67
            WHEN 'F'  THEN 0.00
            ELSE NULL
        END AS gpaValue
    FROM ClassEvaluation
) g
JOIN Student s 
    ON s.studentID = g.studentID
-- WHERE s.studentID = 101;
GROUP BY `SID`;