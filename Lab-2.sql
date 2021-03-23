//Activity 1:

SELECT
    employee.lname,
    employee.salary / 4 "Weekly Salary",
    employee.dno
FROM
    employee;

//Activity 2(a):

SELECT
    E.fname,
    E.lname
FROM
    employee E,
    employee S
WHERE
    S.fname = 'Franklin' AND S.lname = 'Wong' AND E.superssn = S.ssn

//Activity 2(b)

SELECT
    employee.lname,
    employee.fname
FROM
    employee, 
    dependent
WHERE
    employee.sex = 'F' AND employee.fname = dependent.dependent_name

//Activity 2(c)

SELECT
    employee.lname,
    department.mgrstartdate,
    dependent.dependent_name
FROM
    employee,
    department, 
    dependent
WHERE
    employee.ssn = department.mgrssn AND dependent.essn = department.mgrssn

//Activity 2(d)

SELECT
    employee.lname,
    employee.fname,
    department.dname,
    project.pname,
    works_on.hours
FROM
    employee,
    department,
    project,
    works_on
WHERE
    employee.dno = department.dnumber AND employee.dno = project.dnum AND employee.ssn = works_on.essn

//Activity 3

SELECT
    emps.Last_Name,
    emps.Job_Id,
    emps.Hire_Date
FROM
    emps
WHERE
    emps.Hire_Date BETWEEN '2008-02-20' AND '2008-05-01'
ORDER BY
    emps.Hire_Date ASC

//Activity 4

SELECT
    emps.Last_Name,
    emps.Department_Id
FROM
    emps
WHERE
    Department_Id IN(20, 50)
ORDER BY
    emps.Last_Name ASC