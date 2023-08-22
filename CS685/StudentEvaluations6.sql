
USE bt1ewgierjmj2kljrpcj;

drop table if exists Responses;
drop table if exists Courses;
drop table if exists Instructors;
drop table if exists Departments;
drop table if exists Colleges;
CREATE TABLE Colleges( CollegeABBr char(6) not null,
 CollgeName char(40),
 primary key(CollegeABBr)
);


CREATE TABLE Departments( Dept_org_code char(10) not null,
 Deptt_Name char(40),
 CollegeABBr char(6),
 primary key(Dept_org_code),
 foreign key(CollegeABBr) references Colleges( CollegeABBr)
);


CREATE TABLE Instructors( Instructor_ID double not null,
 Instructor_Name char(40),
 primary key(Instructor_ID)
);


CREATE TABLE Courses( Course_ID varchar(200) not null,
SubjectName text,
 Instructor_ID double,
 Dept_org_code char(10),
 Number_of_students int,
 primary key(Course_ID),
 foreign key(Instructor_ID) references Instructors(Instructor_ID),
 foreign key(Dept_org_code) references Departments(Dept_org_code)
);

SET TIME_ZONE = '+00:00';
CREATE TABLE Responses( ResponseNumber integer not null auto_increment,
 Timestamp text,
 Course_ID varchar(200),
 Q1 bigint,
 Q2 bigint,
 Q3 bigint,
 Q4 bigint,
 Q5 bigint,
 Q6 bigint,
 Q7 bigint,
 Q8 bigint,
 Q9 text,
 Q10 text,
 Q11 text,
 Q12 bigint,
 Q13 bigint,
 Q14 bigint,
 Q15 bigint,
 Q16 bigint,
 Q17 text,
 Q18 text,
 primary key(ResponseNumber),
 foreign key(Course_ID) references Courses(Course_ID)
)

