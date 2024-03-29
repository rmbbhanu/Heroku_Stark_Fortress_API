CREATE DATABASE if not exists yymbkf9o5hd97aw8;
use yymbkf9o5hd97aw8;

create table departments(
     d_id int(11) NOT NULL ,
     department varchar(100) NOT NULL PRIMARY KEY,
     hod varchar(100) NOT NULL);
     
insert into departments VALUES
(1,"BSH","Harsha Mishra"),
(2,"COMP","Sarita Ambadekar"),
(3,"IT","Radhika Kotecha"),
(4,"EXTC","Jashree Kanpuri"),
(5,"ETRX","Milind Namade");


-- semestertable

-- create table semester(
-- 	sem_id int(11) auto_increment,
--     semester varchar(100) PRIMARY KEY,
--     department varchar(100) NOT NULL,
-- 	FOREIGN KEY (department) REFERENCES departments(department)
-- );
-- insert into semester VALUES
-- (1,"sem-1","BSH"),
-- (2,"sem-2","BSH"),
-- (3,"sem-3","BSH"),
-- (4,"sem-4"),
-- (5,"sem-5"),
-- (6,"sem-6"),
-- (7,"sem-7"),
-- (8,"sem-8"),



create table class(
	class_id int(10) primary key AUTO_INCREMENT,
    class varchar(100) NOT NULL ,
    room_no varchar(50) NOT null,
    department varchar(100) NOT NULL,
	FOREIGN KEY (department) REFERENCES departments(department)
);

insert into class(class_id,class,room_no,department) VALUES
(1,"FE","CR1","BSH"),(2,"FE","CR2","BSH"),
(3,"SE","CR3","COMP"),(4,"SE","CR4","IT"),(5,"SE","CR5","EXTC"),(6,"SE","CR6","ETRX"),
(7,"TE","CR7","COMP"),(8,"TE","CR8","IT"),(9,"TE","CR9","EXTC"),(10,"TE","CR10","ETRX"),
(11,"BE","CR11","COMP"),(12,"BE","CR12","IT"),(13,"BE","CR13","EXTC"),(14,"BE","CR14","ETRX");




create table students(
     s_id int(11)  PRIMARY KEY AUTO_INCREMENT,
     fname varchar(100) NOT NULL,
	lname varchar(100) NOT NULL,
     roll_no int(11) NOT NULL,
     class_id int(11) ,
     department varchar(100) NOT NULL,
	semester int(2) NOT NULL,
	address varchar(200) ,
     email_id varchar(100) ,
	FOREIGN KEY (class_id) REFERENCES class(class_id),
     FOREIGN KEY (department) REFERENCES departments(department)
     );
insert into students(fname,lname,roll_no,class_id,department,semester,address,email_id) values 
("Rahul", "Bhanushali",1,11,"COMP",8,"Dombivli","rmb1@gmail.com"),
("Khwaja","Lakdawala",2,11,"COMP",8,"Jogeshwari","khwaja@gmail.com"),
("Vrushil", "Gajra",1,12,"IT",8,"Andheri","vrushil@gmail.com"),
("Raj", "Shah",2,12,"IT",8,"Virar","raj@gmail.com"),
("Arun", "Gowda",1,13,"EXTC",8,"Airoli","arun@gmail.com"),
("Sanket", "Jadhav",2,13,"EXTC",8,"Bhiwandi","sanket@gmail.com"),
("Jay", "Chedda",1,7,"COMP",6,"Kandivali","jay@gmail.com"),
("Prithvi","Bhatt",2,7,"COMP",6,"Mulund","prithvi@gmail.com"),
("Pritesh", "Tolar",1,8,"IT",6,"Bhandup","pritesh@gmail.com"),
("Jay", "Ashra",2,8,"IT",6,"Ghatkopar","jaya@gmail.com"),
("Floro","Morzello",1,3,"COMP",4,"Santacruz","floro@gmail.com"),
("Arjun","chauhan",2,3,"COMP",4,"Gowadi","arjun@gmail.com"),
("Siddhesh","Patade",1,1,"BSH",2,"chembur","siddhesh@gmail.com"),
("Parshva","Dhedhia",2,2,"BSH",2,"chunnabhatti","parshva@gmail.com");




create table faculty(
     f_id int(11) NOT NULL,
     faculty_name varchar(100) primary key NOT NULL,
	email_id varchar(320) NOT NULL,
     department varchar(100) NOT NULL,
     FOREIGN KEY (department) REFERENCES departments(department)
     );
insert into faculty(f_id,faculty_name,email_id,department) values(1,"Santosh Kumar","santosh@gmail.com","COMP"),(2,"Radhika Kotecha","radhika@gmail.com","IT"),
(3,"Ram Patil","ram@gmail.com","EXTC"),(4,"Sanjay Yadav","sanjay@gmail.com","IT"),
(5,"Mamta Borle","mamta@gmail.com","COMP"),(6,"Subhada Labhde","shubhada@gmail.com","COMP"),
(7,"Umesh Shinde","Umesh@gmail.com","ETRX"),(8,"Jignasha Dalal","jignasha@gmail.com","EXTC"),
(9,"Priti Patel","priti@gmail.com","IT"),(10,"Jyoti Wadmare","jyoti@gmail.com","COMP"),
(11,"Vivek Mane","vivek@gmail.com","BSH"),(12,"Harsha Mishra","harsha@gmail.com","BSH"),(13,"Sanjiv Badhe","sanjiv@gmail.com","BSH");

create table course(
     c_id varchar(150) NOT NULL,
     course_name varchar(100) primary key NOT NULL,
     faculty_name varchar(100),
     department varchar(100) NOT NULL,
     FOREIGN KEY (faculty_name) REFERENCES faculty(faculty_name),
     FOREIGN KEY (department) REFERENCES departments(department)
     );
     
insert into course(c_id,course_name,faculty_name,department)VALUES
("C01","DWM","Santosh Kumar","COMP"),
("C02","SOFT COMPUTING","Radhika Kotecha","IT"),
("C03","Digital Processing","Ram Patil","EXTC"),
("C04","Machine Learning","Subhada Labhde","COMP"),
("C05","Artificial Intelligence","Priti Patel","IT"),
("C06","Image Processing","Jyoti Wadmare","COMP"),
("C07","AUTOCAD","Vivek Mane","BSH"),
("C08","Chemistry","Harsha Mishra","BSH"),
("C09","Physics","Sanjiv Badhe","BSH"),
("C10","Python","Mamta Borle","COMP");

-- create table timetable(
-- 	t_id int(11) primary key auto_increment,
--     c_id int(11) NOT NULL,
--     department varchar(100) NOT NULL,
--     
-- 	FOREIGN KEY (department) REFERENCES departments(department),
-- 	FOREIGN KEY (c_id) REFERENCES course(c_id)

-- );
CREATE TABLE `notification` (
  `n_id` int(50)  PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL
);
INSERT INTO `notification` (`name`, `class`, `description`) VALUES
('Mamta', 'BE IT', 'Lectures at Classroom 5'),
('Anand', 'BE Comps', 'No Lectures');

create Table `attendance`(
	`a_id` int(50)  PRIMARY KEY AUTO_INCREMENT,
	`class_name` varchar(100) NOT NULL,
    `status` varchar(100) NOT NULL,
    `date` datetime default now(),
    `s_id` int(11) NOT NULL,
    `course_name` varchar(100) NOT NULL,
     FOREIGN KEY (s_id) REFERENCES students(s_id),
     FOREIGN KEY (course_name) REFERENCES course(course_name)
);
insert INTO `attendance` (`class_name`, `status`, `s_id`,`course_name`) VALUES
('BE Comps','present',1,'DWM');