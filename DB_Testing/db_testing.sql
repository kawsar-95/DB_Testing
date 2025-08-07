-- Query 1: Find students with blood groups O+ and A- (Marks: 5)
SELECT firstname, lastname, phonenumber, fulladdress
FROM studentpersonal
WHERE bloodgroup IN ('O+', 'A-');

-- Query 2: Find department info for subject code "EE201" (Marks: 5)
SELECT d.departmentName, d.departmentCode, s.subjectTitle
FROM departments d
JOIN subjects s ON d.departmentCode = s.departmentCode
WHERE s.subjectCode = 'EE201';

-- Query 3: Count of students for each blood group with at least 2 students (Marks: 8)
SELECT bloodgroup, COUNT(*) as student_count
FROM studentpersonal
GROUP BY bloodgroup
HAVING COUNT(*) >= 2;

-- Query 4: Students enrolled in CS101 department with subject titles (Marks: 8)
SELECT DISTINCT sp.firstname, sp.lastname, sub.subjectTitle
FROM studentpersonal sp
JOIN studentacademic sa ON sp.studentId = sa.studentId
JOIN courses c ON sp.studentId = c.studentId
JOIN subjects sub ON c.subjectCode = sub.subjectCode
WHERE sa.departmentCode = 'CS101';

-- Query 5: Total semester fee collected for Computer Science department (Marks: 8)
SELECT SUM(totalSemesterFees) as total_fees_collected
FROM studentacademic
WHERE departmentCode = 'CS101';

-- Query 6: Update semester fee by 10% for CS101 students (Marks: 7)
UPDATE studentacademic
SET totalSemesterFees = totalSemesterFees * 1.10
WHERE departmentCode = 'CS101';

-- Query 7: Students and teachers in CS101 department
SELECT sp.firstname as student_firstname, sp.lastname as student_lastname,
       tp.firstname as teacher_firstname, ta.Designation as teacher_designation
FROM studentpersonal sp
JOIN studentacademic sa ON sp.studentId = sa.studentId
JOIN teacherpersonal tp ON 1=1  -- Cross join since no direct relationship
JOIN teacheracademic ta ON tp.teacherId = ta.teacherId
WHERE sa.departmentCode = 'CS101' AND ta.departmentCode = 'CS101';

-- Query 8: Students and teachers from the same city
SELECT sp.firstname as student_firstname, tp.lastname as teacher_lastname
FROM studentpersonal sp
JOIN teacherpersonal tp ON sp.city = tp.city;

-- Query 9: Students enrolled in "Algorithms" subject
SELECT sp.firstname, sp.lastname, sp.email, sub.subjectCode, sub.subjectTitle
FROM studentpersonal sp
JOIN courses c ON sp.studentId = c.studentId
JOIN subjects sub ON c.subjectCode = sub.subjectCode
WHERE sub.subjectTitle = 'Algorithms';

-- Query 10: Promote teachers (Lecturers to Sr. Lecturers, Sr. Lecturers to Associate Professors)
UPDATE teacheracademic
SET Designation = CASE
    WHEN Designation = 'Lecturer' THEN 'Sr. Lecturer'
    WHEN Designation = 'Sr. Lecturer' THEN 'Associate Professor'
    ELSE Designation
END
WHERE Designation IN ('Lecturer', 'Sr. Lecturer');

-- Query 11: Teacher with second highest salary
SELECT tp.firstname, tp.lastname
FROM teacherpersonal tp
JOIN teacheracademic ta ON tp.teacherId = ta.teacherId
WHERE ta.salary = (
    SELECT DISTINCT salary
    FROM teacheracademic
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1
);

-- Query 12: Teacher with second highest salary and their students
SELECT tp.firstname as teacher_firstname, tp.lastname as teacher_lastname,
       sp.firstname as student_firstname, sp.lastname as student_lastname,
       sp.city as student_city, sa.departmentCode as student_department
FROM teacherpersonal tp
JOIN teacheracademic ta ON tp.teacherId = ta.teacherId
JOIN studentacademic sa ON ta.departmentCode = sa.departmentCode
JOIN studentpersonal sp ON sa.studentId = sp.studentId
WHERE ta.salary = (
    SELECT DISTINCT salary
    FROM teacheracademic
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1
);