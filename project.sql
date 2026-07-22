CREATE DATABASE  IF NOT EXISTS school;
use school;
SET foreign_key_checks = 0;

DROP TABLE employee;
CREATE TABLE employee(
fname  varchar(30) not null,
lname  varchar(30) not null,
essn char(9) not null,
eemplid char(9) not null,
officelocation varchar(6),
title varchar(30),
dateofhire date,
erole varchar(15),
erank varchar(15),
salary  decimal(10,2),
streetname varchar(30),
apt varchar(3),
state varchar(20),
zipcode varchar(6),
primary key (essn)
);

INSERT INTO employee
values("Steven","Fulakeza","123987811","224567117",
"GI 232","Computer Science Professor","2016-10-01","Professor","Insturctor",
"60000","123 Morris Ave","37","New York","10459"),
("Geoffrey","Kelly","145698093","234587117","GI 123","Computer Science Professor","2017-10-18","Professor","Insturctor",
"80000","123 Webster Ave","39","New York","10459")
,("Renato","Bettiol","149123567","234587117","GI 234","Mathematics Professor","2017-11-18","Professor","Insturctor",
"90000","145 Grant Ave","39","New York","10459"),
("Mingxian","Zhong","135901987","23667117","GI 123","Computer Science Professor","2017-10-20","Professor","Insturctor",
"90000","155 Third Ave","50","New York","10459"),
("Robert","Schneiderman","149123675","239567117","GI 125","Mathematics Professor","2017-10-19","Professor","Insturctor",
"90000","151 Grant Ave","50","New York","10459"),
("Alexandra","Idso","135901235","234567119","DH 418","Science Professor","2017-10-19","Professor","Insturctor",
"90000","145 Grant Ave","50","New York","10459"),
("Gabriel","Pastor","135892091","234587117","GI 321","Science Professor","2017-10-19","Professor","Insturctor",
"100000","145 Fordham Road","10","New York","10458"),
("Vanesa","Caban","136091234","231567117","GI 321","Science Professor","2017-10-19","Professor","Insturctor",
"10800","145 Webster Ave","10","New York","10459"),
("Nathaniel","Finkelstein","136095691","234067117","CH 321","English Professor","2017-10-19","Professor","Insturctor",
"5000","145 Grand Concourse Ave","10","New York","10459"),
("Eva","Sofianos","136564321","234967117","GI 324","Computer Science Professor","2019-10-19","Professor","Insturctor",
"1000","145 Webster Ave","11","New York","10459"),
("Andrew","Jones","136091897","231567117","GI 123","Computer Science Professor","2017-10-19","Professor","Insturctor",
"1009","145 Molersoe Ave","10","New York","10459"),
("Micheal","Jones","136876235","234567417","GI 123","Computer Science Professor","2017-10-19","Professor","Insturctor",
"100000","145 Molersoe Ave","10","New York","10459"),
("Steve","Johnson","136876238","234967917","GI 123","Computer Science Professor","2017-10-19","Professor","Insturctor",
"40000","145 Molersoe Ave","12","New York","10459"),
("Mark","Johnson","136876287","234507117","GI 123","Computer Science Professor","2017-10-19","Professor","Insturctor",
"50000","145 Molersoe Ave","15","New York","10459"),
("Mo","Blackson","136896209","234567617","GI 137","Computer Science Professor","2017-10-19","Professor","Insturctor",
"100000","145 Molersoe Ave","19","New York","10459");

DROP TABLE student;
CREATE TABLE student(
fname  varchar(30) not null,
lname  varchar(30) not null,
ssn char(9) not null,
emplid char(9) not null,
email varchar(30),
streetname varchar(30),
apt varchar(3),
state varchar(15),
phone char(10),
dateofbirth date,
primary key(ssn))
;

INSERT INTO student
values("Mohamad","Dukureh","679812345","23456711","mojordan235@gmail.com"
,"123 Mount Hope","12","New York","347898111","2004-01-10"),
("Matthew","Johnson","679812349","234568111","mojohnson@gmail.com"
,"123 Burnside Ave","12","New York","3478981117","2004-01-11"),
("James","Monroe","679812891","234565111","jamesm@gmail.com"
,"123 Webster Ave","12","New York","3478981127","2004-01-12"),
("Kobe","Bryant","679812898","234597111","kobebryant12@gmail.com"
,"1231 Third Ave","12","New York","3478981127","2004-01-15"),
("James","Oakley","679812887","234567117","jamesm@gmail.com"
,"123 Webster Ave","12","New York","3478981289","2004-02-12"),
("James","Hill","679812890", "234560117","jameshill@gmail.com"
,"123 Washingtion Ave","12","New York","3478981127","2004-01-15"),
("James","Monroe","679812899","235567117","jamesmon@gmail.com"
,"123 Webster Ave","12","New York","3478981127","2004-01-17"),
("Stephen","Curry","679812892","234547117","jamesmal@gmail.com"
,"123 Webster Ave","12","New York","3478981176","2004-01-15"),
("James","Harden","679812878","234867117","jameshar@gmail.com"
,"123 Webster Ave","15","New York","3478981289","2004-01-17"),
("Klay","Thommpson","679812821","264567117","klayt@gmail.com"
,"123 Webster Ave","20","New York","3478981127","2004-01-18"),
("Shaq","Jones","679812853","234567115","jamesm@gmail.com"
,"123 Webster Ave","12","New York","3478981227","2004-01-19"),
("John","Wall","679812812","234667117","johnw@gmail.com"
,"123 Webster Ave","15","New York","3478981187","2004-01-15"),
("Anthony","Edwards","679812781","239567117","antm@gmail.com"
,"123 Webster Ave","22","New York","3478981190","2004-01-19"),
("Ian","Bill","679812819","234067117","ianm@gmail.com"
,"123 Webster Ave","12","New York","3478981127","2004-01-25"),
("Pan","Parker","679812870","234867117","panparker@gmail.com"
,"123 Webster Ave","19","New York","3478981127","2004-01-15");


 DROP TABLE course;
 CREATE TABLE course(
  courseid char(6) not null,
  coursename char(150) not null,
  description char(100) not null,
  coursecredits int not null,
  courseprequistes char(6),
  primary key(courseid),

  foreign key(courseprequistes) references course(courseid));
  
INSERT INTO course
values("CMP420","DatabaseSystems","Learning how Database works","4","CMP338"),
("CMP426","OperatingSystems","Learning how Operating works","4","CMP334"),
("CMP167","Comptuer Prommaging I","Learning the basis of coding on java","4","null"),
("CMP168","Comptuer Prommaging II","Learning the advanced of coding on java","4","CMP167"),
("CMP232","Disercte Mathematics","calculus,Boolean algebras, andcombinatorial circuits","4","CMP167"),
("CMP338","Data Strucutres","binary trees,array and nodes coding,hash tables","4","CMP232"),
("CMP334","Computer Organization","learning how computers work and operate","4","CMP232"),
("CMP405","Intro into Networks","how computer operates networks","4","CMP338"),
("MAT175","Calculus I","learning the basics of calculus","4","MAT172"),
("ENG121","English Compisition II","advanced of english","4","ENG111"),
("ENG111","English Compisition","foundation of english","4","null"),
("MAT313","Linear Algebra","foudation of linear algebra","4","MAT176"),
("ANT171","Introduction of Human Evolution","learning how the human body works","4","null"),
("MAT172","Precalculus","focus on trigonmetry functions","4","null"),
("HIS243","Foundations of the United States","learning how americans was establsihed","4",'null');
	

DROP TABLE coursesection;
CREATE TABLE coursesection(
 courseid char(6)not null,
 essn char(9) not null,
 schedule varchar(300),
 semesteryear varchar(15),
 roomNumber varchar(10),
 foreign key (courseid) references course(courseid),
 foreign key(essn) references employee(essn),
 primary key(semesteryear,courseid,essn,schedule));
    
 
 INSERT INTO coursesection
 values("CMP420","123987811","Monday 12:00AM-1:40PM","Spring 2025","GI 333"),
        ("CMP426","123987811","Tuesday 12:00AM-1:40PM","Spring 2025","GI 333"),
        ("CMP168","136564321","Monday 12:00AM-1:40PM","Spring 2025","GI 231"),
        ("CMP420","136091897","Wednesday 12:00AM-1:40PM","Spring 2024","GI 333"),
         ("CMP338","136091897","Thursday 12:00AM-1:40PM","Spring 2024","GI 343"),
         ("CMP334","145698093","Thursday 12:00AM-1:40PM","Spring 2025","GI 317"),
         ("MAT175","149123675","Friday 2:00PM-3:40PM","Spring 2025","GI 321"),
         ("MAT176","135892091","Friday 2:00PM-3:40PM","Spring 2025","GI 321"),
         ("MAT313","149123675","Friday 2:00PM-3:40PM","Spring 2025","GI 341"),
         ("MAT172","135892091","Tuesday 2:00PM-3:40PM","Spring 2025","GI 321"),
          ("ENG121","136095691","Tuesday 3:00PM-4:30PM","Spring 2025","CH 329"),
         ("ANT172","136091234","Tuesday 2:00PM-3:40PM","Spring 2025","CH 325"),
         ("CMP334","123987811","Friday 2:30PM-3:45PM","Fall 2025","GI 232"),
		("CMP167","136091897","Friday 2:30PM-3:45PM","Fall 2025","GI 232"),
	    ("CMP168","136091897","Monday 12:00AM-1:40PM","Spring 2025","GI 241");
        
         
 DROP TABLE enrollment;
 CREATE TABLE enrollment(
 status varchar(9),
 essn char(9) not null,
 ssn char(9) not null,
 schedule varchar(30),
 semesteryear varchar(15),
 courseid char(6),
 grade char(5),
 dateoftime varchar(15),
 primary key (ssn,essn,courseID,semesteryear,dateoftime,schedule),
 foreign key(semesteryear,courseid,essn,schedule) 
 references coursesection(semesteryear,courseid,essn,schedule));
 
 INSERT INTO enrollment
 values("Completed","123987811","679812345","Monday 12:00AM-1:40PM","Spring 2025","CMP420","A","2024-08-01"),
 ("Completed","149123675","679812345","Monday 12:00AM-1:40PM","Spring 2025","CMP420","A","2024-12-01"),
  ("Dropped","123987811","679812345","Tuesday 12:00AM-1:40PM","Spring 2025","CMP426","null","2024-12-01"),
  ("Active","149123675","679812898","Tuesday 12:00AM-1:40PM","Spring 2025","CMP426","null","2024-12-01"),
  ("Completed","136091897","679812898","Thursday 12:00AM-1:40PM","Spring 2024","CMP338","B","2023-12-01"),
  ("Completed","135892091","679812898","Friday 2:00PM-3:40PM","Spring 2025","CMP338","B","2024-12-01"),
 ("Completed","135892091","679812887","Friday 2:00PM-3:40PM","Spring 2025","CMP338","A","2024-12-01"),
  ("Dropped","136091897","679812887","Monday 12:00AM-1:40PM","Spring 2025","CMP168","null","2024-12-01"),
  ("Completed","136091897","679812345","Monday 12:00AM-1:40PM","Spring 2025","CMP168","null","2024-12-01"),
("Completed","136091897","679812821","Monday 12:00AM-1:40PM","Spring 2025","CMP168","null","2024-12-01"),
("Dropped","136091897","679812819","Monday 12:00AM-1:40PM","Spring 2025","CMP168","null","2024-12-01"),
("Active","136091897","679812781","Monday 12:00AM-1:40PM","Spring 2025","CMP168","null","2024-12-01"),
("Active","135892091","679812870","Friday 2:00PM-3:40PM","Spring 2025","MAT176","null","2024-12-01"),
("Active","135892091","679812892","Friday 2:00PM-3:40PM","Spring 2025","MAT176","null","2024-12-01"),
("Active","135892091","679812878","Friday 2:00PM-3:40PM","Spring 2025","MAT176","null","2024-12-01");

 drop table cheat;
 CREATE TABLE cheat(
 cheat varchar(10),
 ssn varchar(11) not null,
 essn varchar(9) not null,
 courseID varchar(10) not null,
 semesteryear varchar(15) not null,
 dateoftime varchar(50),
 schedule varchar(30),
 primary key(cheat,ssn,essn,courseID,semesteryear,dateoftime),
 foreign key (ssn,essn,courseID,semesteryear,dateoftime,schedule) references enrollment(
ssn,essn,courseID,semesteryear,dateoftime,schedule));
insert into cheat
values("yes","679812819","136091897","CMP168","Spring 2025","2024-12-11","Monday 12:00AM-1:40PM"),
       ("no","679812887","136091897","CMP338","Spring 2025","2024-12-21","Friday 2:00PM-3:40PM"),
        ("yes","679812878","135892091","MAT176","Spring 2025","2024-12-11","Friday 2:00PM-3:40PM"),
        ("yes","679812892","135892091","MAT176","Spring 2025","2024-12-31","Friday 2:00PM-3:40PM"),
         ("yes","679812878","135892091","MAT176","Spring 2025","2024-12-31","Friday 2:00PM-3:40PM"),
         ("yes","679812898","149123675","CMP426","Spring 2025",2025-2-31,"Monday 12:00AM-1:40PM"),
         ("NO","679812345","149123675","CMP420","Spring 2025","2024-12-01","Monday 12:00AM-1:40PM"),
         ("no","679812887","136091897","CMP168","Spring 2025","2024-12-21","Monday 12:00AM-1:40PM"),
		("no","679812345","136091897","CMP168","Spring 2025","2024-12-01","Monday 12:00AM-1:40PM"),
        ("yes","679812345","135892091","CMP168","Spring 2025","2025-2-31","Monday 12:00AM-1:40PM"),
         ("yes","679812887","135892091","CMP168","Spring 2025","2024-12-21","Monday 12:00AM-1:40PM"),
		("yes","679812887","136091897","CMP168","Spring 2025","2024-12-21","Monday 12:00AM-1:40PM"),
         ("no","679812887","679812345","CMP168","Spring 2025","2024-12-21","Monday 12:00AM-1:40PM"),
         ("yes","679812878","136091897","MAT176","Spring 2025","2024-12-11","Friday 2:00PM-3:40PM"),
		("NO","679812345","679812887","CMP420","Spring 2025","2024-12-01","Monday 12:00AM-1:40PM");
        
        
 DROP TABLE MAJOR;
 CREATE TABLE major(
 major varchar(40),
 degree varchar(40),
 ssn varchar(9),
 primary key(major,ssn),
 foreign key(ssn) references student(ssn));
 
 INSERT INTO MAJOR
 VALUES("Computer Science","Bachleor","679812345"),
       ("Computer Science","Bachleor","679812349"),
	("Computer Information Systems","Bachleor","679812891"),
     ("Computer Information Systems","Bachleor","679812898"),
     ("Mathematics","Bachleor","679812887"),
      ("Computer Science","Bachleor","679812892"),
      ("Computer Science","Bachleor","679812899"),
      ("Computer Science","Bachleor","679812812"),
      ("Computer Science","Bachleor","679812819"),
       ("Computer Science","Bachleor","679812890"),
       ("Computer Science","Bachleor","679812853"),
       ("Computer Science","Bachleor","679812870"),
        ("Computer Science","Bachleor","679812821"),
        ("Computer Science","Bachleor","679812878"),
        ("Computer Science","Bachleor","679812887");
       
       
     /*1.Write simple select statements that retrieve records from the tables without any condition. 
     (1 Select statement per table)*/

        SELECT *
        FROM EMPLOYEE;
        
        SELECT *
        FROM STUDENT;
        
        SELECT *
        FROM COURSESECTION;
        
        SELECT*
        FROM COURSE;
        
		SELECT *
        FROM ENROLLMENT;

        
        SELECT *
        FROM MAJOR;
        
        SELECT *
        FROM CHEAT;
        
       /* Write 1 simple select statement that retrieves records
        from all the tables using some simple condition. (1 Select statement per table) */     
        
		SELECT fname,lname
        FROM employee
        WHERE(salary>5000);
        
        SELECT fname
        FROM student
        WHERE fname like 'a%';
        
        SELECT essn
        FROM coursesection
        WHERE(courseid="CMP420");
        
        SELECT courseid
        FROM course
        WHERE(courseid="CMP338");
        
        SELECT status
        FROM enrollment
        WHERE(courseID="CMP420");
        
		SELECT major
        FROM major
        WHERE(major="Computer Science");
        
        
        SELECT cheat
        FROM  cheat
        WHERE(cheat="no");
        
        /*Write 3 advanced select statements that select data from two or more of your tables. 
        You can use exists, and, join etc*/
        SELECT distinct fname,lname
        FROM  student join coursesection
        WHERE (student.ssn="679812345" and coursesection.courseid="CMP420");
        
        SELECT distinct fname,lname
        FROM employee join coursesection
        WHERE(employee.essn="123987811" and courseid="CMP420");
        
		SELECT distinct grade
        FROM student join enrollment
        WHERE(student.ssn="679812345");	
        
	
        /* Write a query that retrieves students who have all A letter grades*/
        
        SELECT distinct fname,lname
        From  student join enrollment
        WHERE (student.ssn=enrollment.ssn and enrollment.grade="A");
        
        /*Write a query to retrieve the names of students who have not taken more than 5 courses not done*/
          
          SELECT distinct fname,lname
          FROM student join enrollment
          WHERE(student.ssn=enrollment.ssn and courseid<5);
          
          /*Write 6 update statements that update certain records based on some conditions*/
             UPDATE student
             SET dateofbirth="2024-10-17"
             WHERE ssn="679812345";
             
             UPDATE student
             SET fname="Mo"
             WHERE ssn="679812345"; 
             
             UPDATE employee
             SET salary="30000"
             WHERE essn=123987811;
             
             UPDATE employee
             SET fname="George"
             WHERE essn="145698093";
             
             UPDATE employee
             SET officelocation="GI 245"
             WHERE essn="145698093";
             
             UPDATE student
             SET email="moduks452@gmail.com"
             WHERE ssn="679812345";
             
             /* Write 3 statements that delete a record from a table based on some condition.*/
               DELETE FROM student
               Where ssn="679812349";
               
               DELETE FROM employee
               Where essn="123987811";
               
               DELETE FROM course
               Where courseid="MAT175";
             /*Write a query to retrieve the names of students who were caught cheating in at least one course.*/
             
                 SELECT distinct fname,lname
                 FROM student join cheat 
                 WHERE (student.ssn=cheat.ssn and cheat="yes");
             
             /*Write a query to retrieve the names of instructors who reported most cheating incidents.*/
                    SELECT fname,lname,Max(cheat)
                    FRoM employee,cheat
                    WHERE(employee.essn=cheat.essn and cheat="yes")
                    GROUP By fname,lname,cheat;
                    
             /*Write a query to retrieve the names of instructors who have never reported any cheating incidents.*/
                       SELECT distinct fname,lname
                       FROM employee join cheat
                       WHERE(employee.essn=cheat.essn and cheat="no");
             /*Write a query that returns a count on all students who have never earned any A grade in all the courses they have taken.*/
                   SELECT distinct count(*)
                   From student, enrollment
                   WHERE(student.ssn=enrollment.ssn and enrollment.grade!="A");
             /*Write a query to retrieve the names of an employee who gets paid more than any other not done.*/
             SELECT fname,lname 
             FROM employee
             where(salary=100000);
           
             /*Write a query to retrieve the names of an employees who gets paid the least*/
			 
             SELECT fname,lname 
             FROM employee
             where(salary=1000);
             
            /*Write a query to retrieve employees who make not more than
            5000 than the average salaries of all the employees*/
             SELECT fname,lname
             FROM employee
             WHERE salary<65520.6;
           
            
            
            
 
            
			
             
             
              
             
             
             
             
       
        