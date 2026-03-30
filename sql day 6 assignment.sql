#What is Normalization? Explain the concept
/*Normalization is a database design technique used to minimize redundancy and avoid anomalies during insert, update, and delete operations.

Key Points
Purpose: Reduce duplication, improve efficiency, and maintain consistency.

Process: Large tables are decomposed into smaller, related tables.

Normal Forms:

1NF (First Normal Form): No repeating groups; each cell contains atomic values.

2NF (Second Normal Form): Must be in 1NF and all non-key attributes depend on the entire primary key.

3NF (Third Normal Form): Must be in 2NF and all attributes depend only on the primary key (no transitive dependency).

BCNF (Boyce-Codd Normal Form): Stronger version of 3NF; every determinant must be a candidate key.*/

#2 Explain about different joins available in SQL with its Syntax


use students;
show tables;
desc std_records;

#INNER JOIN
#Definition: Returns rows with matching values in both tables.

SELECT Students.Name, Marks.Score
FROM Students
INNER JOIN Marks
ON Students.StudentID = Marks.StudentID;

#LEFT JOIN (LEFT OUTER JOIN)
#Definition: Returns all rows from the left table and matched rows from the right table; unmatched rows show NULL.

SELECT Students.Name, Marks.Score
FROM Students
LEFT JOIN Marks
ON Students.StudentID = Marks.StudentID;


#3.RIGHT JOIN (RIGHT OUTER JOIN)
#Definition: Returns all rows from the right table and matched rows from the left table.

SELECT Students.Name, Marks.Score
FROM Students
RIGHT JOIN Marks
ON Students.StudentID = Marks.StudentID;


#4 full join there is no sql full join but we can combine both left and right with the hlep of union
#Definition: Returns all rows when there is a match in either left or right table.

SELECT Students.Name, Marks.Score
FROM Students
LEFT JOIN Marks
ON Students.StudentID = Marks.StudentID
union
select Students.Name, Marks.Score
FROM Students
RIGHT JOIN Marks
ON Students.StudentID = Marks.StudentID;

#5.CROSS JOIN
#Definition: Returns Cartesian product (all possible combinations).


SELECT Students.Name, Courses.CourseName
FROM Students
CROSS JOIN Courses;

#6. SELF JOIN
#Definition: Joins a table with itself to compare rows.

SELECT S1.StudentName AS Student,
       S1.Marks AS StudentMarks,
       S2.StudentName AS Mentor,
       S2.Marks AS MentorMarks
FROM Students S1
INNER JOIN Students S2
ON S1.MentorID = S2.StudentID;

