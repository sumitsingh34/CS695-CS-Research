
insert into bt1ewgierjmj2kljrpcj.Colleges(CollegeABBr,CollgeName )
values('CAS','College of Arts and Sciences');

insert into bt1ewgierjmj2kljrpcj.Colleges(CollegeABBr,CollgeName )
values('COB','College of Business');

insert into bt1ewgierjmj2kljrpcj.Departments(Dept_org_code,Deptt_Name,CollegeABBr )
values('3092','Economics','COB');

insert into bt1ewgierjmj2kljrpcj.Departments(Dept_org_code,Deptt_Name,CollegeABBr )
values('3093','Business','COB');

insert into bt1ewgierjmj2kljrpcj.Departments(Dept_org_code,Deptt_Name,CollegeABBr )
values('3090','Computer Science','CAS');

insert into bt1ewgierjmj2kljrpcj.Departments(Dept_org_code,Deptt_Name,CollegeABBr )
values('3091','Mathematics','CAS');

insert into bt1ewgierjmj2kljrpcj.Instructors(Instructor_ID,Instructor_Name )
values(991111111,'XYZ');

insert into bt1ewgierjmj2kljrpcj.Instructors(Instructor_ID,Instructor_Name )
values(991111112,'ABC');

insert into bt1ewgierjmj2kljrpcj.Courses(Course_ID,SubjectName, Instructor_ID, Dept_org_code, Number_of_students )
values('CS500','Programming Fundamentals', 991111111,3090,20);
insert into bt1ewgierjmj2kljrpcj.Courses(Course_ID,SubjectName, Instructor_ID, Dept_org_code, Number_of_students )
values('CS501','Programming for DataScience', 991111111,3090,20);


insert into bt1ewgierjmj2kljrpcj.Responses(ResponseNumber,Timestamp,Course_ID,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15,Q16,Q17,Q18 )
values(1,'4/20/2023 11:04:20','CS500', 5,5,5,5,5,5,5,5,'Abc','Xyx','good',5,5,5,5,5,'Abc','Xyz');

insert into bt1ewgierjmj2kljrpcj.Responses(ResponseNumber,Timestamp,Course_ID,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15,Q16,Q17,Q18 )
values(2,'4/21/2023 11:30:21','CS500', 4,4,4,4,4,4,4,4,'Abc','Xyx','good',4,4,4,4,4,'Abc','Xyz');

insert into bt1ewgierjmj2kljrpcj.Responses(ResponseNumber,Timestamp,Course_ID,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15,Q16,Q17,Q18 )
values(3,'4/20/2023 00:00:01','CS500', 3,3,3,3,3,3,3,3,'Abc','Xyx','good',3,3,3,3,3,'Abc','Xyz');

