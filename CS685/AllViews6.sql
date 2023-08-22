use bt1ewgierjmj2kljrpcj;


drop view if exists course_metrics;
create view course_metrics as
select responsesTBL.Course_ID, responsesTBL.question, count(responsesTBL.response) as count, count(responsesTBL.response)/Courses.Number_of_students as response_rate,sum(responsesTBL.response) as sum,  round(avg(responsesTBL.response),2) as mean
from Courses INNER JOIN responsesTBL ON Courses.Course_ID =responsesTBL.Course_ID
group by responsesTBL.Course_ID, responsesTBL.question;

drop view if exists course_std1;
create view course_std1 as
select responsesTBL.Course_ID, responsesTBL.question, power((responsesTBL.response - course_metrics.mean),2) as dif
from responsesTBL, course_metrics
where responsesTBL.Course_ID = course_metrics.Course_ID and responsesTBL.question=course_metrics.question;

drop view if exists course_std2;
create view course_std2 as
select course_std1.Course_ID, course_std1.question, sqrt(sum(course_std1.dif)/count(course_std1.dif))
from course_std1
group by course_std1.Course_ID, course_std1.question;


drop view if exists dept_students;
create view dept_students as
SELECT Courses.Dept_org_code, sum(Courses.Number_of_students) as total
FROM Courses
group by Courses.Dept_org_code;

drop view if exists dept_metrics;
create view dept_metrics as
SELECT Courses.Dept_org_code, responsesTBL.question,  count(responsesTBL.response) as count,sum(responsesTBL.response) as sum, count(responsesTBL.response)/dept_students.total as response_rate, round(avg(responsesTBL.response),2) as mean
FROM Courses,responsesTBL, dept_students
Where Courses.Course_ID =responsesTBL.Course_ID and Courses.Dept_org_code = dept_students.Dept_org_code
group by Courses.Dept_org_code, responsesTBL.question;

drop view if exists coll_students;
create view coll_students as
SELECT Departments.CollegeABBr, sum(dept_students.total) as total1
FROM Departments INNER JOIN dept_students ON Departments.Dept_org_code = dept_students.Dept_org_code
group by Departments.CollegeABBr;

drop view if exists college_metrics;
create view college_metrics as
SELECT coll_students.CollegeABBr, dept_metrics.question, sum(dept_metrics.count) as count, round(sum(dept_metrics.count)/coll_students.total1,3) as response_rate,sum(dept_metrics.sum) as sum,round(avg(dept_metrics.mean),2) as mean
FROM coll_students INNER JOIN (Departments INNER JOIN dept_metrics ON Departments.Dept_org_code = dept_metrics.Dept_org_code) ON coll_students.CollegeABBr = Departments.CollegeABBr
group by coll_students.CollegeABBr, dept_metrics.question;

drop view if exists total_students;
create view total_students as
SELECT sum(coll_students.total1) as total2
FROM coll_students;

drop view if exists overall_metrics;
create view overall_metrics as
SELECT college_metrics.question, round(sum(college_metrics.sum)/sum(college_metrics.count),3) as mean, round(sum(college_metrics.count)/ sum(coll_students.total1),3) as response_rate
from college_metrics, coll_students
group by college_metrics.question;
