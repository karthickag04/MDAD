-- Example of an Inner Join to fetch the list of students with their enrolled courses
SELECT students.first_name, students.last_name, courses.course_name
FROM students
INNER JOIN enrollments ON students.student_id = enrollments.student_id
INNER JOIN courses ON enrollments.course_id = courses.course_id;

-- Example of a Left Join to fetch the list of all students and their courses (if any)
SELECT students.first_name, students.last_name, courses.course_name
FROM students
LEFT JOIN enrollments ON students.student_id = enrollments.student_id
LEFT JOIN courses ON enrollments.course_id = courses.course_id;

-- Example of a Right Join to fetch the list of all courses and the students enrolled in them (if any)
SELECT students.first_name, students.last_name, courses.course_name
FROM students
RIGHT JOIN enrollments ON students.student_id = enrollments.student_id
RIGHT JOIN courses ON enrollments.course_id = courses.course_id;

-- Example of a Full Outer Join to fetch the list of all students and courses, regardless of whether there's a match
SELECT students.first_name, students.last_name, courses.course_name
FROM students
LEFT JOIN enrollments ON students.student_id = enrollments.student_id
LEFT JOIN courses ON enrollments.course_id = courses.course_id
UNION
SELECT students.first_name, students.last_name, courses.course_name
FROM students
RIGHT JOIN enrollments ON students.student_id = enrollments.student_id
RIGHT JOIN courses ON enrollments.course_id = courses.course_id;

-- Example of a Cross Join to fetch a Cartesian product of students and courses
SELECT students.first_name, students.last_name, courses.course_name
FROM students
CROSS JOIN courses;
