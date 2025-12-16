-- Top five students in class 401

SELECT
	s.studentID AS `SID`,
    s.fName AS `First Name`,
    s.lName AS `Last Name`,
    ce.grade AS `Grade`
FROM ClassEvaluation ce
JOIN Student s
    ON ce.studentID = s.studentID
WHERE ce.classID = 401
ORDER BY 
    CASE ce.grade
        WHEN 'A+' THEN 12
        WHEN 'A'  THEN 11
        WHEN 'A-' THEN 10
        WHEN 'B+' THEN 9
        WHEN 'B'  THEN 8
        WHEN 'B-' THEN 7
        WHEN 'C+' THEN 6
        WHEN 'C'  THEN 5
        WHEN 'C-' THEN 4
        WHEN 'D+' THEN 3
        WHEN 'D'  THEN 2
        WHEN 'D-' THEN 1
        WHEN 'F'  THEN 0
        ELSE -1
    END DESC
LIMIT 5;