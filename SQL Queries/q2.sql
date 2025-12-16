-- List faculties with the number of professors in them

SELECT 
	f.facultyName AS `Faculty Name`,
	COUNT(p.profID) AS `No. of Professors`
FROM Professor p
JOIN Faculty f ON p.facultyID = f.facultyID
GROUP BY p.facultyID;

SELECT * FROM Faculty;
SELECT * FROM Professor;