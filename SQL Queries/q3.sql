-- Select all classes the student is taking

SELECT 
	ce.studentID AS `SID`,
	CONCAT(s.fName, " ", s.lName) AS `Student Full Name`,
	c.classID, c.scheduleDay, c.scheduleTime, ce.grade
FROM Class c
JOIN ClassEvaluation ce ON c.classID = ce.classID
JOIN Student s ON ce.studentID = s.studentID
WHERE ce.studentID = 101;


SELECT * FROM ClassEvaluation;