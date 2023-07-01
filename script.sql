-- Question 1
SELECT id, name, 
    CASE
        WHEN grade = 'A+' then 4.5
        WHEN grade = 'A' then 4.0
        WHEN grade = 'B+' then 3.5
        WHEN grade = 'B' then 3.0
        WHEN grade = 'C+' then 2.5
        WHEN grade = 'C' then 2.0
        WHEN grade = 'D+' then 1.5
        WHEN grade = 'D' then 1.0
        WHEN grade = 'F' then 0
    END AS grade_point,
    SUM(grade_point * credits)/SUM(max_grade * credits) AS GPA
FROM student;

-- Question 2
SELECT 
    CASE
        WHEN GPA > 3.75 and GPA < 4.5 then 'A'
        WHEN GPA > 3.0 and GPA < 3.75 then 'B'
        WHEN GPA > 2.0 and GPA < 3.0 then 'C'
        WHEN GPA > 1.5 and GPA < 2.0 then 'D'
        WHEN GPA < 1.5 then 'F'
    END AS category,
    COUNT(id)
FROM student
    GROUP BY category;