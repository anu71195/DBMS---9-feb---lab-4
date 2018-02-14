create database 09feb2018;
use 09feb2018;
CREATE TABLE Course(
	course_id VARCHAR(10),
	division VARCHAR(3)
);

CREATE TABLE Department(
	department_id VARCHAR(10),
	name VARCHAR(50)
);
CREATE TABLE Slot(
	letter VARCHAR(2),
	day VARCHAR(10),
	start_time TIME,
	end_time TIME
);
CREATE TABLE Room(
	room_number VARCHAR(5),
	location VARCHAR(10)
);
CREATE TABLE ScheduledIn(

);


-- INSERT INTO Course (course_id , division) VALUES ();
-- INSERT INTO Department(department_id , name) VALUES ();
-- INSERT INTO Slot(letter, day, start_time, end_time) VALUES();
-- INSERT INTO Room(room_number, location) VALUES();

INSERT INTO Course (course_id , division) VALUES ('BT101',);
INSERT INTO Course (course_id , division) VALUES ('BT202',);
INSERT INTO Course (course_id , division) VALUES ('BT205',);
INSERT INTO Course (course_id , division) VALUES ('BT208',);
INSERT INTO Course (course_id , division) VALUES ('CL205',);
INSERT INTO Course (course_id , division) VALUES ('BT290',);
INSERT INTO Course (course_id , division) VALUES ('BT302',);
INSERT INTO Course (course_id , division) VALUES ('BT305',);
INSERT INTO Course (course_id , division) VALUES ('BT306',);
INSERT INTO Course (course_id , division) VALUES ('BT308',);
INSERT INTO Course (course_id , division) VALUES ('BT330',);
INSERT INTO Course (course_id , division) VALUES ('BT401',);
INSERT INTO Course (course_id , division) VALUES ('BT502',);
INSERT INTO Course (course_id , division) VALUES ('BT504',);
INSERT INTO Course (course_id , division) VALUES ('BT520',);
INSERT INTO Course (course_id , division) VALUES ('BT632',);
INSERT INTO Course (course_id , division) VALUES ('BT630',);
INSERT INTO Course (course_id , division) VALUES ('',);



INSERT INTO Room(room_number, location) VALUES('L1','LH');
INSERT INTO Room(room_number, location) VALUES('L2','LH');
INSERT INTO Room(room_number, location) VALUES('L3','LH');
INSERT INTO Room(room_number, location) VALUES('L4','LH');

INSERT INTO Room(room_number, location) VALUES('1001','Core-I');
INSERT INTO Room(room_number, location) VALUES('1002','Core-I');
INSERT INTO Room(room_number, location) VALUES('1003','Core-I');
INSERT INTO Room(room_number, location) VALUES('1004','Core-I');
INSERT INTO Room(room_number, location) VALUES('1005','Core-I');
INSERT INTO Room(room_number, location) VALUES('1006','Core-I');
INSERT INTO Room(room_number, location) VALUES('1101','Core-I');
INSERT INTO Room(room_number, location) VALUES('1102','Core-I');
INSERT INTO Room(room_number, location) VALUES('1103','Core-I');
INSERT INTO Room(room_number, location) VALUES('1104','Core-I');
INSERT INTO Room(room_number, location) VALUES('1G1','Core-I');
INSERT INTO Room(room_number, location) VALUES('1G2','Core-I');
INSERT INTO Room(room_number, location) VALUES('1201','Core-I');
INSERT INTO Room(room_number, location) VALUES('1202','Core-I');
INSERT INTO Room(room_number, location) VALUES('1203','Core-I');
INSERT INTO Room(room_number, location) VALUES('1204','Core-I');
INSERT INTO Room(room_number, location) VALUES('1205','Core-I');
INSERT INTO Room(room_number, location) VALUES('1206','Core-I');
INSERT INTO Room(room_number, location) VALUES('1207','Core-I');

INSERT INTO Room(room_number, location) VALUES('2001','Core-II');
INSERT INTO Room(room_number, location) VALUES('2002','Core-II');
INSERT INTO Room(room_number, location) VALUES('2101','Core-II');
INSERT INTO Room(room_number, location) VALUES('2102','Core-II');
INSERT INTO Room(room_number, location) VALUES('2201','Core-II');
INSERT INTO Room(room_number, location) VALUES('2202','Core-II');
INSERT INTO Room(room_number, location) VALUES('2203','Core-II');
INSERT INTO Room(room_number, location) VALUES('2204','Core-II');


INSERT INTO Room(room_number, location) VALUES('3003','Core-III');
INSERT INTO Room(room_number, location) VALUES('3101','Core-III');
INSERT INTO Room(room_number, location) VALUES('3102','Core-III');
INSERT INTO Room(room_number, location) VALUES('3202','Core-III');

INSERT INTO Room(room_number, location) VALUES('4001','Core-IV');
INSERT INTO Room(room_number, location) VALUES('4002','Core-IV');
INSERT INTO Room(room_number, location) VALUES('4003','Core-IV');
INSERT INTO Room(room_number, location) VALUES('4004','Core-IV');
INSERT INTO Room(room_number, location) VALUES('4005','Core-IV');
INSERT INTO Room(room_number, location) VALUES('4006','Core-IV');
INSERT INTO Room(room_number, location) VALUES('4101','Core-IV');
INSERT INTO Room(room_number, location) VALUES('4102','Core-IV');
INSERT INTO Room(room_number, location) VALUES('4103','Core-IV');
INSERT INTO Room(room_number, location) VALUES('4104','Core-IV');
INSERT INTO Room(room_number, location) VALUES('4201','Core-IV');
INSERT INTO Room(room_number, location) VALUES('4202','Core-IV');
INSERT INTO Room(room_number, location) VALUES('4203','Core-IV');
INSERT INTO Room(room_number, location) VALUES('4204','Core-IV');
INSERT INTO Room(room_number, location) VALUES('4205','Core-IV');
INSERT INTO Room(room_number, location) VALUES('4206','Core-IV');
INSERT INTO Room(room_number, location) VALUES('4207','Core-IV');
INSERT INTO Room(room_number, location) VALUES('4208','Core-IV');
INSERT INTO Room(room_number, location) VALUES('4209','Core-IV');
INSERT INTO Room(room_number, location) VALUES('4210','Core-IV');
INSERT INTO Room(room_number, location) VALUES('4211','Core-IV');
INSERT INTO Room(room_number, location) VALUES('4212','Core-IV');
INSERT INTO Room(room_number, location) VALUES('4G3','Core-IV');
INSERT INTO Room(room_number, location) VALUES('4G4','Core-IV');




INSERT INTO Slot(letter, day, start_time, end_time) VALUES('A','Monday','08:00:00','08:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('A','Tuesday','09:00:00','09:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('A','Wednesday','10:00:00','10:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('A','Thursday','11:00:00','11:55:00');

INSERT INTO Slot(letter, day, start_time, end_time) VALUES('B','Monday','09:00:00','09:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('B','Tuesday','10:00:00','10:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('B','Wednesday','11:00:00','11:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('B','Friday','08:00:00','08:55:00');

INSERT INTO Slot(letter, day, start_time, end_time) VALUES('C','Monday','10:00:00','10:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('C','Tuesday','11:00:00','11:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('C','Thursday','08:00:00','08:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('C','Friday','09:00:00','09:55:00');

INSERT INTO Slot(letter, day, start_time, end_time) VALUES('D','Monday','11:00:00','11:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('D','Wednesday','08:00:00','08:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('D','Thursday','09:00:00','09:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('D','Friday','10:00:00','10:55:00');

INSERT INTO Slot(letter, day, start_time, end_time) VALUES('E','Tuesday','08:00:00','08:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('E','Wednesday','09:00:00','09:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('E','Thursday','10:00:00','10:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('E','Friday','11:00:00','11:55:00');

INSERT INTO Slot(letter, day, start_time, end_time) VALUES('F','Monday','12;00:00','12:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('F','Wednesday','12;00:00','12:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('F','Friday','12;00:00','12:55:00');

INSERT INTO Slot(letter, day, start_time, end_time) VALUES('G','Monday','01:00:00','01:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('G','Wednesday','01:00:00','01:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('G','Friday','01:00:00','01:55:00');

INSERT INTO Slot(letter, day, start_time, end_time) VALUES('H','Tuesday','12:00:00','12:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('H','Thursday','12:00:00','12:55:00');

INSERT INTO Slot(letter, day, start_time, end_time) VALUES('I','Tuesday','12:00:00','1:25');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('I','Thursday','12:00:00','1:25');

INSERT INTO Slot(letter, day, start_time, end_time) VALUES('J','Tuesday','01:00:00','01:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('J','Thursday','01:00:00','01:55:00');

INSERT INTO Slot(letter, day, start_time, end_time) VALUES('K','Monday','05:00:00','05:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('K','Wednesday','05:00:00','05:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('K','Friday','05:00:00','05:55:00');

INSERT INTO Slot(letter, day, start_time, end_time) VALUES('L','Tuesday','05:00:00','06:25:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('L','Thursday','05:00:00','06:25:00');

INSERT INTO Slot(letter, day, start_time, end_time) VALUES('A1','Monday','05:00:00','05:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('A1','Tuesday','04:00:00','04:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('A1','Wednesday','03:00:00','03:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('A1','Thursday','02:00:00','02:55:00');

INSERT INTO Slot(letter, day, start_time, end_time) VALUES('B1','Monday','04:00:00','04:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('B1','Tuesday','03:00:00','03:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('B1','Wednesday','02:00:00','02:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('B1','Friday','05:00:00','05:55:00');

INSERT INTO Slot(letter, day, start_time, end_time) VALUES('C1','Monday','03:00:00','03:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('C1','Tuesday','02:00:00','02:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('C1','Thursday','05:00:00','05:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('C1','Friday','04:00:00','04:55:00');

INSERT INTO Slot(letter, day, start_time, end_time) VALUES('D1','Monday','02:00:00','02:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('D1','Wednesday','05:00:00','05:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('D1','Thursday','04:00:00','04:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('D1','Friday','03:00:00','03:55:00');

INSERT INTO Slot(letter, day, start_time, end_time) VALUES('E1','Tuesday','05:00:00','05:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('E1','Wednesday','04:00:00','04:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('E1','Thursday','03:00:00','03:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('E1','Friday','02:00:00','02:55:00');









INSERT INTO Department(department_id , name) VALUES ('CSE','Computer Science and Engineering');
INSERT INTO Department(department_id , name) VALUES ('EEE','Electronics and Electrical Engineering');
INSERT INTO Department(department_id , name) VALUES ('ME','Mechanical Engineering');
INSERT INTO Department(department_id , name) VALUES ('CE','Civil Engineering');
INSERT INTO Department(department_id , name) VALUES ('DD','Design');
INSERT INTO Department(department_id , name) VALUES ('BSBE','Biosciences and Bioengineering');
INSERT INTO Department(department_id , name) VALUES ('CL','Chemical Engineering');
INSERT INTO Department(department_id , name) VALUES ('PH','Physics');
INSERT INTO Department(department_id , name) VALUES ('CH','Chemistry');
INSERT INTO Department(department_id , name) VALUES ('MA','Mathematics');
INSERT INTO Department(department_id , name) VALUES ('HSS','Humanities and Social Sciences');





