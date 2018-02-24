drop database 09feb2018;
create database 09feb2018;
use 09feb2018;
CREATE TABLE Course(
	course_id VARCHAR(10) COMMENT 'course_id will be of maximum length and can contian both characters and number so puttin a bound on it 10 is safe',
	division VARCHAR(3) COMMENT 'division will be either I , II, III, IV',
	PRIMARY KEY (COURSE_ID, division) COMMENT 'because their pair will always be unique'
);

CREATE TABLE Department(
	department_id VARCHAR(10) COMMENT 'department_id will range 2 to 4 so keep an upper bound 10 is used',
	name VARCHAR(50) COMMENT 'The name of the department can be as long as it can be so keeping the upper bound to be 50',
	PRIMARY KEY (department_id) COMMENT 'Every department will be have unique id and name'

);
CREATE TABLE Slot(
	letter VARCHAR(2) COMMENT 'slot can be 1 character or 2 maximum',
	day VARCHAR(10) COMMENT 'day can be at most 8 characters',
	start_time TIME COMMENT 'its time',
	end_time TIME COMMENT 'its time',
	PRIMARY KEY(letter,day) COMMENT 'letter and day both will form a unique key because a specific letter can come only once in a particular day'
);
CREATE TABLE Room(
	room_number VARCHAR(10) COMMENT 'ROOM NUMBER CAN BE AT MOST 4 CHARACTERS SO 10 is kept as upper bound ',
	location VARCHAR(10) COMMENT 'LOCATION IS AT MOST 10 CHARACTERS',
	PRIMARY KEY (room_number) COMMENT 'EVERY ROOM NUMBER WILL HAVE UNIQUE LOCATION'
);
CREATE TABLE ScheduledIn(
	course_id VARCHAR(10) NOT NULL COMMENT 'course_id will be of maximum length and can contian both characters and number so puttin a bound on it 10 is safe',
	division VARCHAR(3) NOT NULL default 'NA' COMMENT 'division will be either I , II, III, IV',
	letter VARCHAR(2) NOT NULL COMMENT 'slot can be 1 character or 2 maximum',
	day VARCHAR(10) NOT NULL COMMENT 'day can be at most 8 characters',
	department_id VARCHAR(10) NOT NULL COMMENT 'department_id will range 2 to 4 so keep an upper bound 10 is used',
	room_number VARCHAR(10) NOT NULL COMMENT 'ROOM NUMBER CAN BE AT MOST 4 CHARACTERS SO 10 is kept as upper bound ',
	CONSTRAINT si_pk PRIMARY KEY(course_id,letter,day,room_number) COMMENT 'COURSE_ID LETTER DAY room_number WILL TOGETHER FORM A UNIQUE KEY',
	CONSTRAINT slot_fk FOREIGN KEY(letter,day) REFERENCES Slot(letter,day) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT course_fk FOREIGN KEY(course_id,division) REFERENCES Course(course_id,division) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT dep_fk FOREIGN KEY(department_id) REFERENCES Department(department_id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT room_fk FOREIGN KEY(room_number) REFERENCES Room(room_number) ON DELETE CASCADE ON UPDATE CASCADE
);

-- CREATE TABLE ScheduledIn(
-- 	course_id VARCHAR(6) NOT NULL COMMENT 'course_id will be of length at most 6 (in case of minor courses), no default vaue being given since a course id will always be for a record',
-- 	division VARCHAR(3) NOT NULL DEFAULT 'NA' COMMENT 'division will be at most of length 3 (in case of III), default value of NA being given',
-- 	letter VARCHAR(2) NOT NULL COMMENT 'Letter can be of the form A, A1, hence varchar of length 2, no default value being assigned since it is to be used in primary key', 
-- 	day VARCHAR(9) NOT NULL COMMENT 'Day will have maximum length 9 (Wednesday), no default value assigned since it is to be used in primary key',
-- 	department_id VARCHAR(4) NOT NULL COMMENT 'department id will take at most 4 letters (BT), no default value provided since every course has a department id',
-- 	room_number VARCHAR(4) NOT NULL COMMENT 'room_number will take at most 4 characters, no default value being given since every class will be held in a room',
-- 	CONSTRAINT si_pk PRIMARY KEY(letter,day,room_number),
-- 	CONSTRAINT slot_fk FOREIGN KEY(letter,day) REFERENCES slot(letter,day) ON DELETE CASCADE ON UPDATE CASCADE,
-- 	CONSTRAINT course_fk FOREIGN KEY(course_id,division) REFERENCES course(course_id,division) ON DELETE CASCADE ON UPDATE CASCADE,
-- 	CONSTRAINT dep_fk FOREIGN KEY(department_id) REFERENCES department(department_id) ON DELETE CASCADE ON UPDATE CASCADE,
-- 	CONSTRAINT room_fk FOREIGN KEY(room_number) REFERENCES room(room_number) ON DELETE CASCADE ON UPDATE CASCADE
-- 	);

-- INSERT INTO Course (course_id , division) VALUES ();
-- INSERT INTO Department(department_id , name) VALUES ();
-- INSERT INTO Slot(letter, day, start_time, end_time) VALUES();
-- INSERT INTO Room(room_number, location) VALUES();
-- INSERT INTO ScheduledIn(course_id,division,letter,day,department_id,room_number) VALUES ();


INSERT INTO Course (course_id , division) VALUES ('BT101', 'I');
INSERT INTO Course (course_id , division) VALUES ('BT101','II');
INSERT INTO Course (course_id , division) VALUES ('BT101','III');
INSERT INTO Course (course_id , division) VALUES ('BT101','IV');
INSERT INTO Course (course_id , division) VALUES ('BT101','NA');
INSERT INTO Course (course_id , division) VALUES ('BT202','NA');
INSERT INTO Course (course_id , division) VALUES ('BT205','NA');
INSERT INTO Course (course_id , division) VALUES ('BT208','NA');
INSERT INTO Course (course_id , division) VALUES ('BT302','NA');
INSERT INTO Course (course_id , division) VALUES ('BT305','NA');
INSERT INTO Course (course_id , division) VALUES ('BT306','NA');
INSERT INTO Course (course_id , division) VALUES ('BT308','NA');
INSERT INTO Course (course_id , division) VALUES ('BT401','NA');
INSERT INTO Course (course_id , division) VALUES ('BT502','NA');
INSERT INTO Course (course_id , division) VALUES ('BT504','NA');
INSERT INTO Course (course_id , division) VALUES ('BT601','NA');
INSERT INTO Course (course_id , division) VALUES ('BT604','NA');
INSERT INTO Course (course_id , division) VALUES ('BT607','NA');
INSERT INTO Course (course_id , division) VALUES ('BT609','NA');
INSERT INTO Course (course_id , division) VALUES ('BT613','NA');
INSERT INTO Course (course_id , division) VALUES ('BT616','NA');
INSERT INTO Course (course_id , division) VALUES ('BT618','NA');
INSERT INTO Course (course_id , division) VALUES ('BT629','NA');
INSERT INTO Course (course_id , division) VALUES ('BT630','NA');
INSERT INTO Course (course_id , division) VALUES ('BT632','NA');
INSERT INTO Course (course_id , division) VALUES ('BT637','NA');
INSERT INTO Course (course_id , division) VALUES ('CE201','NA');
INSERT INTO Course (course_id , division) VALUES ('CE205','NA');
INSERT INTO Course (course_id , division) VALUES ('CE206','NA');
INSERT INTO Course (course_id , division) VALUES ('CE220','NA');
INSERT INTO Course (course_id , division) VALUES ('CE222','NA');
INSERT INTO Course (course_id , division) VALUES ('CE304','NA');
INSERT INTO Course (course_id , division) VALUES ('CE307','NA');
INSERT INTO Course (course_id , division) VALUES ('CE308','NA');
INSERT INTO Course (course_id , division) VALUES ('CE309','NA');
INSERT INTO Course (course_id , division) VALUES ('CE311','NA');
INSERT INTO Course (course_id , division) VALUES ('CE402','NA');
INSERT INTO Course (course_id , division) VALUES ('CE504','NA');
INSERT INTO Course (course_id , division) VALUES ('CE505','NA');
INSERT INTO Course (course_id , division) VALUES ('CE510','NA');
INSERT INTO Course (course_id , division) VALUES ('CE514','NA');
INSERT INTO Course (course_id , division) VALUES ('CE524','NA');
INSERT INTO Course (course_id , division) VALUES ('CE525','NA');
INSERT INTO Course (course_id , division) VALUES ('CE533','NA');
INSERT INTO Course (course_id , division) VALUES ('CE552','NA');
INSERT INTO Course (course_id , division) VALUES ('CE555','NA');
INSERT INTO Course (course_id , division) VALUES ('CE556','NA');
INSERT INTO Course (course_id , division) VALUES ('CE564','NA');
INSERT INTO Course (course_id , division) VALUES ('CE570','NA');
INSERT INTO Course (course_id , division) VALUES ('CE583','NA');
INSERT INTO Course (course_id , division) VALUES ('CE584','NA');
INSERT INTO Course (course_id , division) VALUES ('CE594','NA');
INSERT INTO Course (course_id , division) VALUES ('CE595','NA');
INSERT INTO Course (course_id , division) VALUES ('CE606','NA');
INSERT INTO Course (course_id , division) VALUES ('CE607','NA');
INSERT INTO Course (course_id , division) VALUES ('CE608','NA');
INSERT INTO Course (course_id , division) VALUES ('CE612','NA');
INSERT INTO Course (course_id , division) VALUES ('CE614','NA');
INSERT INTO Course (course_id , division) VALUES ('CE615','NA');
INSERT INTO Course (course_id , division) VALUES ('CE616','NA');
INSERT INTO Course (course_id , division) VALUES ('CE623','NA');
INSERT INTO Course (course_id , division) VALUES ('CE628','NA');
INSERT INTO Course (course_id , division) VALUES ('CE643','NA');
INSERT INTO Course (course_id , division) VALUES ('CE646','NA');
INSERT INTO Course (course_id , division) VALUES ('CE648','NA');
INSERT INTO Course (course_id , division) VALUES ('CE649','NA');
INSERT INTO Course (course_id , division) VALUES ('CE652','NA');
INSERT INTO Course (course_id , division) VALUES ('CE661','NA');
INSERT INTO Course (course_id , division) VALUES ('CE664','NA');
INSERT INTO Course (course_id , division) VALUES ('CH212','NA');
INSERT INTO Course (course_id , division) VALUES ('CH222','NA');
INSERT INTO Course (course_id , division) VALUES ('CH232','NA');
INSERT INTO Course (course_id , division) VALUES ('CH233','NA');
INSERT INTO Course (course_id , division) VALUES ('CH322','NA');
INSERT INTO Course (course_id , division) VALUES ('CH323','NA');
INSERT INTO Course (course_id , division) VALUES ('CH333','NA');
INSERT INTO Course (course_id , division) VALUES ('CH411','NA');
INSERT INTO Course (course_id , division) VALUES ('CH417','NA');
INSERT INTO Course (course_id , division) VALUES ('CH418','NA');
INSERT INTO Course (course_id , division) VALUES ('CH419','NA');
INSERT INTO Course (course_id , division) VALUES ('CH421','NA');
INSERT INTO Course (course_id , division) VALUES ('CH428','NA');
INSERT INTO Course (course_id , division) VALUES ('CH432','NA');
INSERT INTO Course (course_id , division) VALUES ('CH433','NA');
INSERT INTO Course (course_id , division) VALUES ('CH438','NA');
INSERT INTO Course (course_id , division) VALUES ('CH501','NA');
INSERT INTO Course (course_id , division) VALUES ('CH603','NA');
INSERT INTO Course (course_id , division) VALUES ('CH611','NA');
INSERT INTO Course (course_id , division) VALUES ('CH615','NA');
INSERT INTO Course (course_id , division) VALUES ('CH617','NA');
INSERT INTO Course (course_id , division) VALUES ('CH621','NA');
INSERT INTO Course (course_id , division) VALUES ('CH623','NA');
INSERT INTO Course (course_id , division) VALUES ('CH625','NA');
INSERT INTO Course (course_id , division) VALUES ('CH630','NA');
INSERT INTO Course (course_id , division) VALUES ('CH637','NA');
INSERT INTO Course (course_id , division) VALUES ('CH640','NA');
INSERT INTO Course (course_id , division) VALUES ('CH643','NA');
INSERT INTO Course (course_id , division) VALUES ('CL204','NA');
INSERT INTO Course (course_id , division) VALUES ('CL205','NA');
INSERT INTO Course (course_id , division) VALUES ('CL207','NA');
INSERT INTO Course (course_id , division) VALUES ('CL252M','NA');
INSERT INTO Course (course_id , division) VALUES ('CL307','NA');
INSERT INTO Course (course_id , division) VALUES ('CL308','NA');
INSERT INTO Course (course_id , division) VALUES ('CL309','NA');
INSERT INTO Course (course_id , division) VALUES ('CL314','NA');
INSERT INTO Course (course_id , division) VALUES ('CL352M','NA');
INSERT INTO Course (course_id , division) VALUES ('CL401','NA');
INSERT INTO Course (course_id , division) VALUES ('CL404','NA');
INSERT INTO Course (course_id , division) VALUES ('CL503','NA');
INSERT INTO Course (course_id , division) VALUES ('CL504','NA');
INSERT INTO Course (course_id , division) VALUES ('CL612','NA');
INSERT INTO Course (course_id , division) VALUES ('CL614','NA');
INSERT INTO Course (course_id , division) VALUES ('CL617','NA');
INSERT INTO Course (course_id , division) VALUES ('CL618','NA');
INSERT INTO Course (course_id , division) VALUES ('CL619','NA');
INSERT INTO Course (course_id , division) VALUES ('CL622','NA');
INSERT INTO Course (course_id , division) VALUES ('CL623','NA');
INSERT INTO Course (course_id , division) VALUES ('CL625','NA');
INSERT INTO Course (course_id , division) VALUES ('CL630','NA');
INSERT INTO Course (course_id , division) VALUES ('CL634','NA');
INSERT INTO Course (course_id , division) VALUES ('CL635','NA');
INSERT INTO Course (course_id , division) VALUES ('CL638','NA');
INSERT INTO Course (course_id , division) VALUES ('CL639','NA');
INSERT INTO Course (course_id , division) VALUES ('CL642','NA');
INSERT INTO Course (course_id , division) VALUES ('CS101','I');
INSERT INTO Course (course_id , division) VALUES ('CS101','II');
INSERT INTO Course (course_id , division) VALUES ('CS101','III');
INSERT INTO Course (course_id , division) VALUES ('CS101','IV');
INSERT INTO Course (course_id , division) VALUES ('CS203','NA');
INSERT INTO Course (course_id , division) VALUES ('CS204','NA');
INSERT INTO Course (course_id , division) VALUES ('CS206M','NA');
INSERT INTO Course (course_id , division) VALUES ('CS222','NA');
INSERT INTO Course (course_id , division) VALUES ('CS242','NA');
INSERT INTO Course (course_id , division) VALUES ('CS344','NA');
INSERT INTO Course (course_id , division) VALUES ('CS346','NA');
INSERT INTO Course (course_id , division) VALUES ('CS348','NA');
INSERT INTO Course (course_id , division) VALUES ('CS350M','NA');
INSERT INTO Course (course_id , division) VALUES ('CS501','NA');
INSERT INTO Course (course_id , division) VALUES ('CS503','NA');
INSERT INTO Course (course_id , division) VALUES ('CS525','NA');
INSERT INTO Course (course_id , division) VALUES ('CS526','NA');
INSERT INTO Course (course_id , division) VALUES ('CS549','NA');
INSERT INTO Course (course_id , division) VALUES ('CS561','NA');
INSERT INTO Course (course_id , division) VALUES ('CS666','NA');
INSERT INTO Course (course_id , division) VALUES ('DD220','NA');
INSERT INTO Course (course_id , division) VALUES ('DD320','NA');
INSERT INTO Course (course_id , division) VALUES ('DD220M','NA');
INSERT INTO Course (course_id , division) VALUES ('DD320M','NA');
INSERT INTO Course (course_id , division) VALUES ('EE203','NA');
INSERT INTO Course (course_id , division) VALUES ('EE213M','NA');
INSERT INTO Course (course_id , division) VALUES ('EE221','NA');
INSERT INTO Course (course_id , division) VALUES ('EE230','NA');
INSERT INTO Course (course_id , division) VALUES ('EE270','NA');
INSERT INTO Course (course_id , division) VALUES ('EE322M','NA');
INSERT INTO Course (course_id , division) VALUES ('EE333','NA');
INSERT INTO Course (course_id , division) VALUES ('EE337','NA');
INSERT INTO Course (course_id , division) VALUES ('EE340','NA');
INSERT INTO Course (course_id , division) VALUES ('EE351','NA');
INSERT INTO Course (course_id , division) VALUES ('EE360','NA');
INSERT INTO Course (course_id , division) VALUES ('EE385','NA');
INSERT INTO Course (course_id , division) VALUES ('EE503','NA');
INSERT INTO Course (course_id , division) VALUES ('EE525','NA');
INSERT INTO Course (course_id , division) VALUES ('EE533','NA');
INSERT INTO Course (course_id , division) VALUES ('EE534','NA');
INSERT INTO Course (course_id , division) VALUES ('EE551','NA');
INSERT INTO Course (course_id , division) VALUES ('EE561','NA');
INSERT INTO Course (course_id , division) VALUES ('EE580','NA');
INSERT INTO Course (course_id , division) VALUES ('EE621','NA');
INSERT INTO Course (course_id , division) VALUES ('EE625','NA');
INSERT INTO Course (course_id , division) VALUES ('EE626','NA');
INSERT INTO Course (course_id , division) VALUES ('EE631','NA');
INSERT INTO Course (course_id , division) VALUES ('EE632','NA');
INSERT INTO Course (course_id , division) VALUES ('EE634','NA');
INSERT INTO Course (course_id , division) VALUES ('EE636','NA');
INSERT INTO Course (course_id , division) VALUES ('EE642','NA');
INSERT INTO Course (course_id , division) VALUES ('EE645','NA');
INSERT INTO Course (course_id , division) VALUES ('EE646','NA');
INSERT INTO Course (course_id , division) VALUES ('EE647','NA');
INSERT INTO Course (course_id , division) VALUES ('EE648','NA');
INSERT INTO Course (course_id , division) VALUES ('EE652','NA');
INSERT INTO Course (course_id , division) VALUES ('EE653','NA');
INSERT INTO Course (course_id , division) VALUES ('EE657','NA');
INSERT INTO Course (course_id , division) VALUES ('EE663','NA');
INSERT INTO Course (course_id , division) VALUES ('EE664','NA');
INSERT INTO Course (course_id , division) VALUES ('EE667','NA');
INSERT INTO Course (course_id , division) VALUES ('EE668','NA');
INSERT INTO Course (course_id , division) VALUES ('EE671','NA');
INSERT INTO Course (course_id , division) VALUES ('EE673','NA');
INSERT INTO Course (course_id , division) VALUES ('EN671','NA');
INSERT INTO Course (course_id , division) VALUES ('HS203','NA');
INSERT INTO Course (course_id , division) VALUES ('HS212','NA');
INSERT INTO Course (course_id , division) VALUES ('HS213','NA');
INSERT INTO Course (course_id , division) VALUES ('HS220','NA');
INSERT INTO Course (course_id , division) VALUES ('HS224','NA');
INSERT INTO Course (course_id , division) VALUES ('HS226','NA');
INSERT INTO Course (course_id , division) VALUES ('HS234','NA');
INSERT INTO Course (course_id , division) VALUES ('HS237','NA');
INSERT INTO Course (course_id , division) VALUES ('HS238','NA');
INSERT INTO Course (course_id , division) VALUES ('HS239','NA');
INSERT INTO Course (course_id , division) VALUES ('HS242','NA');
INSERT INTO Course (course_id , division) VALUES ('HS243','NA');
INSERT INTO Course (course_id , division) VALUES ('HS406','NA');
INSERT INTO Course (course_id , division) VALUES ('HS409','NA');
INSERT INTO Course (course_id , division) VALUES ('HS413','NA');
INSERT INTO Course (course_id , division) VALUES ('HS414','NA');
INSERT INTO Course (course_id , division) VALUES ('HS415','NA');
INSERT INTO Course (course_id , division) VALUES ('HS420','NA');
INSERT INTO Course (course_id , division) VALUES ('HS421','NA');
INSERT INTO Course (course_id , division) VALUES ('HS422','NA');
INSERT INTO Course (course_id , division) VALUES ('HS424','NA');
INSERT INTO Course (course_id , division) VALUES ('HS425','NA');
INSERT INTO Course (course_id , division) VALUES ('HS502','NA');
INSERT INTO Course (course_id , division) VALUES ('HS503','NA');
INSERT INTO Course (course_id , division) VALUES ('HS505','NA');
INSERT INTO Course (course_id , division) VALUES ('HS512','NA');
INSERT INTO Course (course_id , division) VALUES ('HS517','NA');
INSERT INTO Course (course_id , division) VALUES ('HS521','NA');
INSERT INTO Course (course_id , division) VALUES ('HS604','NA');
INSERT INTO Course (course_id , division) VALUES ('HS621','NA');
INSERT INTO Course (course_id , division) VALUES ('HS622','NA');
INSERT INTO Course (course_id , division) VALUES ('HS623','NA');
INSERT INTO Course (course_id , division) VALUES ('LS621','NA');
INSERT INTO Course (course_id , division) VALUES ('MA102','I');
INSERT INTO Course (course_id , division) VALUES ('MA102','II');
INSERT INTO Course (course_id , division) VALUES ('MA102','III');
INSERT INTO Course (course_id , division) VALUES ('MA102','IV');
INSERT INTO Course (course_id , division) VALUES ('MA212M','NA');
INSERT INTO Course (course_id , division) VALUES ('MA224','NA');
INSERT INTO Course (course_id , division) VALUES ('MA252','NA');
INSERT INTO Course (course_id , division) VALUES ('MA271','NA');
INSERT INTO Course (course_id , division) VALUES ('MA312M','NA');
INSERT INTO Course (course_id , division) VALUES ('MA321','NA');
INSERT INTO Course (course_id , division) VALUES ('MA351','NA');
INSERT INTO Course (course_id , division) VALUES ('MA373','NA');
INSERT INTO Course (course_id , division) VALUES ('MA473','NA');
INSERT INTO Course (course_id , division) VALUES ('MA477','NA');
INSERT INTO Course (course_id , division) VALUES ('MA502','NA');
INSERT INTO Course (course_id , division) VALUES ('MA505','NA');
INSERT INTO Course (course_id , division) VALUES ('MA512','NA');
INSERT INTO Course (course_id , division) VALUES ('MA513','NA');
INSERT INTO Course (course_id , division) VALUES ('MA519','NA');
INSERT INTO Course (course_id , division) VALUES ('MA542','NA');
INSERT INTO Course (course_id , division) VALUES ('MA547','NA');
INSERT INTO Course (course_id , division) VALUES ('MA561','NA');
INSERT INTO Course (course_id , division) VALUES ('MA571','NA');
INSERT INTO Course (course_id , division) VALUES ('MA573','NA');
INSERT INTO Course (course_id , division) VALUES ('MA590','NA');
INSERT INTO Course (course_id , division) VALUES ('MA591','NA');
INSERT INTO Course (course_id , division) VALUES ('MA616','NA');
INSERT INTO Course (course_id , division) VALUES ('MA622','NA');
INSERT INTO Course (course_id , division) VALUES ('MA625','NA');
INSERT INTO Course (course_id , division) VALUES ('MA641','NA');
INSERT INTO Course (course_id , division) VALUES ('MA642','NA');
INSERT INTO Course (course_id , division) VALUES ('MA643','NA');
INSERT INTO Course (course_id , division) VALUES ('MA644','NA');
INSERT INTO Course (course_id , division) VALUES ('MA662','NA');
INSERT INTO Course (course_id , division) VALUES ('MA671','NA');
INSERT INTO Course (course_id , division) VALUES ('MA685','NA');
INSERT INTO Course (course_id , division) VALUES ('MA691','NA');
INSERT INTO Course (course_id , division) VALUES ('MA746','NA');
INSERT INTO Course (course_id , division) VALUES ('MA762','NA');
INSERT INTO Course (course_id , division) VALUES ('ME101','I');
INSERT INTO Course (course_id , division) VALUES ('ME101','II');
INSERT INTO Course (course_id , division) VALUES ('ME101','III');
INSERT INTO Course (course_id , division) VALUES ('ME101','IV');
INSERT INTO Course (course_id , division) VALUES ('ME221','NA');
INSERT INTO Course (course_id , division) VALUES ('ME222','NA');
INSERT INTO Course (course_id , division) VALUES ('ME223','NA');
INSERT INTO Course (course_id , division) VALUES ('ME224','NA');
INSERT INTO Course (course_id , division) VALUES ('ME321','NA');
INSERT INTO Course (course_id , division) VALUES ('ME322','NA');
INSERT INTO Course (course_id , division) VALUES ('ME323','NA');
INSERT INTO Course (course_id , division) VALUES ('ME324','NA');
INSERT INTO Course (course_id , division) VALUES ('ME325','NA');
INSERT INTO Course (course_id , division) VALUES ('ME421','NA');
INSERT INTO Course (course_id , division) VALUES ('ME513','NA');
INSERT INTO Course (course_id , division) VALUES ('ME514','NA');
INSERT INTO Course (course_id , division) VALUES ('ME522','NA');
INSERT INTO Course (course_id , division) VALUES ('ME532','NA');
INSERT INTO Course (course_id , division) VALUES ('ME553','NA');
INSERT INTO Course (course_id , division) VALUES ('ME554','NA');
INSERT INTO Course (course_id , division) VALUES ('ME605','NA');
INSERT INTO Course (course_id , division) VALUES ('ME607','NA');
INSERT INTO Course (course_id , division) VALUES ('ME609','NA');
INSERT INTO Course (course_id , division) VALUES ('ME613','NA');
INSERT INTO Course (course_id , division) VALUES ('ME615','NA');
INSERT INTO Course (course_id , division) VALUES ('ME616','NA');
INSERT INTO Course (course_id , division) VALUES ('ME618','NA');
INSERT INTO Course (course_id , division) VALUES ('ME619','NA');
INSERT INTO Course (course_id , division) VALUES ('ME662','NA');
INSERT INTO Course (course_id , division) VALUES ('ME665','NA');
INSERT INTO Course (course_id , division) VALUES ('ME670','NA');
INSERT INTO Course (course_id , division) VALUES ('ME672','NA');
INSERT INTO Course (course_id , division) VALUES ('ME680','NA');
INSERT INTO Course (course_id , division) VALUES ('ME686','NA');
INSERT INTO Course (course_id , division) VALUES ('ME688','NA');
INSERT INTO Course (course_id , division) VALUES ('ME691','NA');
INSERT INTO Course (course_id , division) VALUES ('PH102','I');
INSERT INTO Course (course_id , division) VALUES ('PH102','II');
INSERT INTO Course (course_id , division) VALUES ('PH102','III');
INSERT INTO Course (course_id , division) VALUES ('PH102','IV');
INSERT INTO Course (course_id , division) VALUES ('PH202','NA');
INSERT INTO Course (course_id , division) VALUES ('PH204','NA');
INSERT INTO Course (course_id , division) VALUES ('PH206','NA');
INSERT INTO Course (course_id , division) VALUES ('PH302','NA');
INSERT INTO Course (course_id , division) VALUES ('PH304','NA');
INSERT INTO Course (course_id , division) VALUES ('PH306','NA');
INSERT INTO Course (course_id , division) VALUES ('PH308','NA');
INSERT INTO Course (course_id , division) VALUES ('PH382M','NA');
INSERT INTO Course (course_id , division) VALUES ('PH402','NA');
INSERT INTO Course (course_id , division) VALUES ('PH404','NA');
INSERT INTO Course (course_id , division) VALUES ('PH406','NA');
INSERT INTO Course (course_id , division) VALUES ('PH408','NA');
INSERT INTO Course (course_id , division) VALUES ('PH410','NA');
INSERT INTO Course (course_id , division) VALUES ('PH414','NA');
INSERT INTO Course (course_id , division) VALUES ('PH443','NA');
INSERT INTO Course (course_id , division) VALUES ('PH446','NA');
INSERT INTO Course (course_id , division) VALUES ('PH462','NA');
INSERT INTO Course (course_id , division) VALUES ('PH521','NA');
INSERT INTO Course (course_id , division) VALUES ('PH523','NA');
INSERT INTO Course (course_id , division) VALUES ('PH524','NA');
INSERT INTO Course (course_id , division) VALUES ('PH527','NA');
INSERT INTO Course (course_id , division) VALUES ('PH531','NA');
INSERT INTO Course (course_id , division) VALUES ('PH532','NA');
INSERT INTO Course (course_id , division) VALUES ('PH543','NA');
INSERT INTO Course (course_id , division) VALUES ('PH544','NA');
INSERT INTO Course (course_id , division) VALUES ('PH545','NA');
INSERT INTO Course (course_id , division) VALUES ('PH702','NA');
INSERT INTO Course (course_id , division) VALUES ('PH703','NA');
INSERT INTO Course (course_id , division) VALUES ('PH704','NA');
INSERT INTO Course (course_id , division) VALUES ('PH706','NA');
INSERT INTO Course (course_id , division) VALUES ('RT514','NA');
INSERT INTO Course (course_id , division) VALUES ('RT515','NA');
INSERT INTO Course (course_id , division) VALUES ('RT517','NA');
INSERT INTO Course (course_id , division) VALUES ('RT520','NA');











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
INSERT INTO Room(room_number, location) VALUES('BD2S','Core-I');
INSERT INTO Room(room_number, location) VALUES('BD3S','Core-I');















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

INSERT INTO Slot(letter, day, start_time, end_time) VALUES('F','Monday','12:00:00','12:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('F','Wednesday','12:00:00','12:55:00');
INSERT INTO Slot(letter, day, start_time, end_time) VALUES('F','Friday','12:00:00','12:55:00');

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
INSERT INTO Department(department_id , name) VALUES ('CRT','Centre for Rural Technology');
INSERT INTO Department(department_id , name) VALUES ('EEE','Electronics and Electrical Engineering');
INSERT INTO Department(department_id , name) VALUES ('ME','Mechanical Engineering');
INSERT INTO Department(department_id , name) VALUES ('CE','Civil Engineering');
INSERT INTO Department(department_id , name) VALUES ('DD','Design');
INSERT INTO Department(department_id , name) VALUES ('BT','Biosciences and Bioengineering');
INSERT INTO Department(department_id , name) VALUES ('CL','Chemical Engineering');
INSERT INTO Department(department_id , name) VALUES ('PH','Physics');
INSERT INTO Department(department_id , name) VALUES ('CH','Chemistry');
INSERT INTO Department(department_id , name) VALUES ('MA','Mathematics');
INSERT INTO Department(department_id , name) VALUES ('HSS','Humanities and Social Sciences');
INSERT INTO Department(department_id , name) VALUES ('EN','English');





INSERT INTO ScheduledIn(course_id,division,letter,day,department_id,room_number) VALUES ('MA512','NA','A','Monday','MA','1002'),
 ('ME615','NA','A','Monday','ME','1003'),
 ('ME686','NA','A','Monday','ME','1004'),
 ('ME688','NA','A','Monday','ME','1005'),
 ('HS621','NA','A','Monday','HSS','1101'),
 ('MA746','NA','A','Monday','MA','1104'),
 ('RT515','NA','A','Monday','CRT','1206'),
 ('EE230','NA','A','Monday','EEE','2002'),
 ('EE230','NA','A','Monday','EEE','2201'),
 ('EE230','NA','A','Monday','EEE','2202'),
 ('MA571','NA','A','Monday','MA','2203'),
 ('EE230','NA','A','Monday','EEE','3101'),
 ('CL642','NA','A','Monday','CL','4002'),
 ('EE230','NA','A','Monday','EEE','4101'),
 ('CL204','NA','A','Monday','CL','4203'),
 ('CL612','NA','A','Monday','CL','4209'),
 ('CS101','III','A','Monday','CSE','L2'),
 ('CS101','IV','A','Monday','CSE','L3'),
 ('MA512','NA','A','Thursday','MA','1002'),
 ('ME221','NA','A','Thursday','ME','1003'),
 ('ME221','NA','A','Thursday','ME','1005'),
 ('HS406','NA','A','Thursday','HSS','1006'),
 ('HS505','NA','A','Thursday','HSS','1101'),
 ('MA746','NA','A','Thursday','MA','1104'),
 ('HS421','NA','A','Thursday','HSS','1207'),
 ('HS409','NA','A','Thursday','HSS','1G1'),
 ('HS413','NA','A','Thursday','HSS','1G2'),
 ('HS415','NA','A','Thursday','HSS','2101'),
 ('HS420','NA','A','Thursday','HSS','2102'),
 ('EE270','NA','A','Thursday','EEE','2201'),
 ('EE652','NA','A','Thursday','EEE','2202'),
 ('MA571','NA','A','Thursday','MA','2203'),
 ('CH603','NA','A','Thursday','CH','3003'),
 ('CE504','NA','A','Thursday','CE','3102'),
 ('HS414','NA','A','Thursday','HSS','3202'),
 ('PH302','NA','A','Thursday','PH','4003'),
 ('PH408','NA','A','Thursday','PH','4004'),
 ('CH411','NA','A','Thursday','CH','4006'),
 ('BT202','NA','A','Thursday','BT','4102'),
 ('CH212','NA','A','Thursday','CH','4103'),
 ('CE201','NA','A','Thursday','CE','4201'),
 ('CL204','NA','A','Thursday','CL','4203'),
 ('CE533','NA','A','Thursday','CE','4205'),
 ('PH202','NA','A','Thursday','PH','4206'),
 ('CE524','NA','A','Thursday','CE','4208'),
 ('CL503','NA','A','Thursday','CL','4209'),
 ('BT504','NA','A','Thursday','BT','4210'),
 ('PH532','NA','A','Thursday','PH','4212'),
 ('HS424','NA','A','Thursday','HSS','4G3'),
 ('HS425','NA','A','Thursday','HSS','4G4'),
 ('HS422','NA','A','Thursday','HSS','L1'),
 ('CS101','III','A','Thursday','CSE','L2'),
 ('CS101','IV','A','Thursday','CSE','L3'),
 ('CS222','NA','A','Thursday','CSE','L4'),
 ('MA512','NA','A','Tuesday','MA','1002'),
 ('ME221','NA','A','Tuesday','ME','1003'),
 ('ME513','NA','A','Tuesday','ME','1004'),
 ('ME221','NA','A','Tuesday','ME','1005'),
 ('HS406','NA','A','Tuesday','HSS','1006'),
 ('HS505','NA','A','Tuesday','HSS','1101'),
 ('MA746','NA','A','Tuesday','MA','1104'),
 ('HS421','NA','A','Tuesday','HSS','1207'),
 ('HS409','NA','A','Tuesday','HSS','1G1'),
 ('HS413','NA','A','Tuesday','HSS','1G2'),
 ('EE525','NA','A','Tuesday','EEE','2002'),
 ('HS415','NA','A','Tuesday','HSS','2101'),
 ('HS420','NA','A','Tuesday','HSS','2102'),
 ('EE270','NA','A','Tuesday','EEE','2201'),
 ('EE534','NA','A','Tuesday','EEE','2202'),
 ('MA571','NA','A','Tuesday','MA','2203'),
 ('CH603','NA','A','Tuesday','CH','3003'),
 ('EE503','NA','A','Tuesday','EEE','3101'),
 ('CE504','NA','A','Tuesday','CE','3102'),
 ('HS414','NA','A','Tuesday','HSS','3202'),
 ('PH308','NA','A','Tuesday','PH','4003'),
 ('PH408','NA','A','Tuesday','PH','4004'),
 ('CH411','NA','A','Tuesday','CH','4006'),
 ('EE551','NA','A','Tuesday','EEE','4101'),
 ('BT202','NA','A','Tuesday','BT','4102'),
 ('CH212','NA','A','Tuesday','CH','4103'),
 ('CE201','NA','A','Tuesday','CE','4201'),
 ('CL204','NA','A','Tuesday','CL','4203'),
 ('CE533','NA','A','Tuesday','CE','4205'),
 ('PH206','NA','A','Tuesday','PH','4206'),
 ('CE524','NA','A','Tuesday','CE','4208'),
 ('CL503','NA','A','Tuesday','CL','4209'),
 ('BT504','NA','A','Tuesday','BT','4210'),
 ('PH527','NA','A','Tuesday','PH','4212'),
 ('HS424','NA','A','Tuesday','HSS','4G3'),
 ('HS425','NA','A','Tuesday','HSS','4G4'),
 ('HS422','NA','A','Tuesday','HSS','L1'),
 ('CS101','III','A','Tuesday','CSE','L2'),
 ('CS101','IV','A','Tuesday','CSE','L3'),
 ('CS222','NA','A','Tuesday','CSE','L4'),
 ('MA512','NA','A','Wednesday','MA','1002'),
 ('ME221','NA','A','Wednesday','ME','1003'),
 ('ME221','NA','A','Wednesday','ME','1005'),
 ('HS406','NA','A','Wednesday','HSS','1006'),
 ('HS505','NA','A','Wednesday','HSS','1101'),
 ('MA746','NA','A','Wednesday','MA','1104'),
 ('ME662','NA','A','Wednesday','ME','1203'),
 ('HS421','NA','A','Wednesday','HSS','1207'),
 ('HS409','NA','A','Wednesday','HSS','1G1'),
 ('HS413','NA','A','Wednesday','HSS','1G2'),
 ('HS415','NA','A','Wednesday','HSS','2101'),
 ('HS420','NA','A','Wednesday','HSS','2102'),
 ('EE203','NA','A','Wednesday','EEE','2201'),
 ('MA571','NA','A','Wednesday','MA','2203'),
 ('CH603','NA','A','Wednesday','CH','3003'),
 ('CE504','NA','A','Wednesday','CE','3102'),
 ('HS414','NA','A','Wednesday','HSS','3202'),
 ('PH306','NA','A','Wednesday','PH','4003'),
 ('PH402','NA','A','Wednesday','PH','4004'),
 ('CH411','NA','A','Wednesday','CH','4006'),
 ('BT202','NA','A','Wednesday','BT','4102'),
 ('CH212','NA','A','Wednesday','CH','4103'),
 ('CE201','NA','A','Wednesday','CE','4201'),
 ('CL204','NA','A','Wednesday','CL','4203'),
 ('CE533','NA','A','Wednesday','CE','4205'),
 ('PH204','NA','A','Wednesday','PH','4206'),
 ('CE524','NA','A','Wednesday','CE','4208'),
 ('CL503','NA','A','Wednesday','CL','4209'),
 ('BT504','NA','A','Wednesday','BT','4210'),
 ('CE584','NA','A','Wednesday','CE','4211'),
 ('PH527','NA','A','Wednesday','PH','4212'),
 ('HS424','NA','A','Wednesday','HSS','4G3'),
 ('HS425','NA','A','Wednesday','HSS','4G4'),
 ('HS422','NA','A','Wednesday','HSS','L1'),
 ('CS101','III','A','Wednesday','CSE','L2'),
 ('CS101','IV','A','Wednesday','CSE','L3'),
 ('CS222','NA','A','Wednesday','CSE','L4'),
 ('MA625','NA','A1','Monday','MA','1002'),
 ('ME321','NA','A1','Monday','ME','1003'),
 ('ME321','NA','A1','Monday','ME','1005'),
 ('RT520','NA','A1','Monday','CRT','1206'),
 ('ME522','NA','A1','Monday','ME','1G1'),
 ('ME522','NA','A1','Monday','ME','1G2'),
 ('MA321','NA','A1','Monday','MA','2203'),
 ('CE652','NA','A1','Monday','CE','3102'),
 ('CH637','NA','A1','Monday','CH','4006'),
 ('CE311','NA','A1','Monday','CE','4201'),
 ('BT302','NA','A1','Monday','BT','4207'),
 ('CS101','I','A1','Monday','CSE','L2'),
 ('CS101','II','A1','Monday','CSE','L3'),
 ('MA625','NA','A1','Thursday','MA','1002'),
 ('ME321','NA','A1','Thursday','ME','1003'),
 ('ME321','NA','A1','Thursday','ME','1005'),
 ('HS623','NA','A1','Thursday','HSS','1102'),
 ('CS503','NA','A1','Thursday','CSE','2001'),
 ('EE337','NA','A1','Thursday','EEE','2201'),
 ('EE385','NA','A1','Thursday','EEE','2202'),
 ('MA321','NA','A1','Thursday','MA','2203'),
 ('EE625','NA','A1','Thursday','EEE','3101'),
 ('CE514','NA','A1','Thursday','CE','3102'),
 ('CL634','NA','A1','Thursday','CL','4002'),
 ('CH637','NA','A1','Thursday','CH','4006'),
 ('EE631','NA','A1','Thursday','EEE','4101'),
 ('CH323','NA','A1','Thursday','CH','4103'),
 ('CE304','NA','A1','Thursday','CE','4201'),
 ('CL307','NA','A1','Thursday','CL','4203'),
 ('BT302','NA','A1','Thursday','BT','4207'),
 ('CE556','NA','A1','Thursday','CE','4208'),
 ('CL619','NA','A1','Thursday','CL','4209'),
 ('CE594','NA','A1','Thursday','CE','4211'),
 ('PH531','NA','A1','Thursday','PH','4212'),
 ('CS101','I','A1','Thursday','CSE','L2'),
 ('CS101','II','A1','Thursday','CSE','L3'),
 ('MA625','NA','A1','Tuesday','MA','1002'),
 ('ME321','NA','A1','Tuesday','ME','1003'),
 ('ME321','NA','A1','Tuesday','ME','1005'),
 ('ME672','NA','A1','Tuesday','ME','1203'),
 ('CS503','NA','A1','Tuesday','CSE','2001'),
 ('EE337','NA','A1','Tuesday','EEE','2201'),
 ('EE385','NA','A1','Tuesday','EEE','2202'),
 ('MA321','NA','A1','Tuesday','MA','2203'),
 ('EE625','NA','A1','Tuesday','EEE','3101'),
 ('CE514','NA','A1','Tuesday','CE','3102'),
 ('CL634','NA','A1','Tuesday','CL','4002'),
 ('PH703','NA','A1','Tuesday','PH','4004'),
 ('CH637','NA','A1','Tuesday','CH','4006'),
 ('EE673','NA','A1','Tuesday','EEE','4101'),
 ('CH323','NA','A1','Tuesday','CH','4103'),
 ('CE304','NA','A1','Tuesday','CE','4201'),
 ('CL307','NA','A1','Tuesday','CL','4203'),
 ('BT302','NA','A1','Tuesday','BT','4207'),
 ('CE556','NA','A1','Tuesday','CE','4208'),
 ('CL619','NA','A1','Tuesday','CL','4209'),
 ('CE594','NA','A1','Tuesday','CE','4211'),
 ('PH544','NA','A1','Tuesday','PH','4212'),
 ('CS101','I','A1','Tuesday','CSE','L2'),
 ('CS101','II','A1','Tuesday','CSE','L3'),
 ('MA625','NA','A1','Wednesday','MA','1002'),
 ('ME616','NA','A1','Wednesday','ME','1004'),
 ('ME665','NA','A1','Wednesday','ME','1203'),
 ('RT520','NA','A1','Wednesday','CRT','1206'),
 ('CS503','NA','A1','Wednesday','CSE','2001'),
 ('EE337','NA','A1','Wednesday','EEE','2201'),
 ('EE385','NA','A1','Wednesday','EEE','2202'),
 ('MA321','NA','A1','Wednesday','MA','2203'),
 ('EE625','NA','A1','Wednesday','EEE','3101'),
 ('CE514','NA','A1','Wednesday','CE','3102'),
 ('CL634','NA','A1','Wednesday','CL','4002'),
 ('PH462','NA','A1','Wednesday','PH','4003'),
 ('PH702','NA','A1','Wednesday','PH','4004'),
 ('CH637','NA','A1','Wednesday','CH','4006'),
 ('EE673','NA','A1','Wednesday','EEE','4101'),
 ('CH323','NA','A1','Wednesday','CH','4103'),
 ('CL307','NA','A1','Wednesday','CL','4203'),
 ('BT302','NA','A1','Wednesday','BT','4207'),
 ('CE556','NA','A1','Wednesday','CE','4208'),
 ('CL619','NA','A1','Wednesday','CL','4209'),
 ('CE594','NA','A1','Wednesday','CE','4211'),
 ('CS101','I','A1','Wednesday','CSE','L2'),
 ('CS101','II','A1','Wednesday','CSE','L3'),
 ('MA542','NA','B','Friday','MA','1002'),
 ('HS622','NA','B','Friday','HSS','1102'),
 ('MA252','NA','B','Friday','MA','1103'),
 ('CS203','NA','B','Friday','CSE','1201'),
 ('CS525','NA','B','Friday','CSE','2001'),
 ('EE626','NA','B','Friday','EEE','2201'),
 ('MA573','NA','B','Friday','MA','2203'),
 ('EE333','NA','B','Friday','EEE','3101'),
 ('CL642','NA','B','Friday','CL','4002'),
 ('EE580','NA','B','Friday','EEE','4101'),
 ('CL612','NA','B','Friday','CL','4209'),
 ('ME101','III','B','Friday','ME','L2'),
 ('ME101','IV','B','Friday','ME','L3'),
 ('MA542','NA','B','Monday','MA','1002'),
 ('ME222','NA','B','Monday','ME','1003'),
 ('ME222','NA','B','Monday','ME','1005'),
 ('HS521','NA','B','Monday','HSS','1102'),
 ('MA252','NA','B','Monday','MA','1103'),
 ('CS203','NA','B','Monday','CSE','1201'),
 ('ME662','NA','B','Monday','ME','1203'),
 ('ME421','NA','B','Monday','ME','1G1'),
 ('CS525','NA','B','Monday','CSE','2001'),
 ('EE525','NA','B','Monday','EEE','2002'),
 ('MA473','NA','B','Monday','MA','2101'),
 ('EE221','NA','B','Monday','EEE','2201'),
 ('MA573','NA','B','Monday','MA','2203'),
 ('CH611','NA','B','Monday','CH','3003'),
 ('EE503','NA','B','Monday','EEE','3101'),
 ('CE606','NA','B','Monday','CE','3102'),
 ('PH404','NA','B','Monday','PH','4004'),
 ('CH421','NA','B','Monday','CH','4006'),
 ('CL205','NA','B','Monday','CL','4102'),
 ('CH222','NA','B','Monday','CH','4103'),
 ('CH417','NA','B','Monday','CH','4104'),
 ('CE220','NA','B','Monday','CE','4201'),
 ('CL205','NA','B','Monday','CL','4203'),
 ('CE612','NA','B','Monday','CE','4205'),
 ('PH204','NA','B','Monday','PH','4206'),
 ('BT607','NA','B','Monday','BT','4207'),
 ('CE525','NA','B','Monday','CE','4208'),
 ('CL504','NA','B','Monday','CL','4209'),
 ('BT604','NA','B','Monday','BT','4210'),
 ('CE555','NA','B','Monday','CE','4211'),
 ('ME101','III','B','Monday','ME','L2'),
 ('ME101','IV','B','Monday','ME','L3'),
 ('MA542','NA','B','Tuesday','MA','1002'),
 ('ME222','NA','B','Tuesday','ME','1003'),
 ('ME222','NA','B','Tuesday','ME','1005'),
 ('HS502','NA','B','Tuesday','HSS','1102'),
 ('MA252','NA','B','Tuesday','MA','1103'),
 ('CS203','NA','B','Tuesday','CSE','1201'),
 ('ME662','NA','B','Tuesday','ME','1203'),
 ('ME421','NA','B','Tuesday','ME','1G1'),
 ('CS525','NA','B','Tuesday','CSE','2001'),
 ('MA473','NA','B','Tuesday','MA','2101'),
 ('EE221','NA','B','Tuesday','EEE','2201'),
 ('EE636','NA','B','Tuesday','EEE','2202'),
 ('MA573','NA','B','Tuesday','MA','2203'),
 ('CH611','NA','B','Tuesday','CH','3003'),
 ('EE663','NA','B','Tuesday','EEE','3101'),
 ('CE606','NA','B','Tuesday','CE','3102'),
 ('PH302','NA','B','Tuesday','PH','4003'),
 ('PH404','NA','B','Tuesday','PH','4004'),
 ('CH421','NA','B','Tuesday','CH','4006'),
 ('CL205','NA','B','Tuesday','CL','4102'),
 ('CH222','NA','B','Tuesday','CH','4103'),
 ('CH417','NA','B','Tuesday','CH','4104'),
 ('CE220','NA','B','Tuesday','CE','4201'),
 ('CL205','NA','B','Tuesday','CL','4203'),
 ('CE612','NA','B','Tuesday','CE','4205'),
 ('PH204','NA','B','Tuesday','PH','4206'),
 ('BT607','NA','B','Tuesday','BT','4207'),
 ('CE525','NA','B','Tuesday','CE','4208'),
 ('CL504','NA','B','Tuesday','CL','4209'),
 ('BT604','NA','B','Tuesday','BT','4210'),
 ('CE555','NA','B','Tuesday','CE','4211'),
 ('PH523','NA','B','Tuesday','PH','4212'),
 ('ME101','III','B','Tuesday','ME','L2'),
 ('ME101','IV','B','Tuesday','ME','L3'),
 ('MA542','NA','B','Wednesday','MA','1002'),
 ('ME222','NA','B','Wednesday','ME','1003'),
 ('ME513','NA','B','Wednesday','ME','1004'),
 ('ME222','NA','B','Wednesday','ME','1005'),
 ('HS502','NA','B','Wednesday','HSS','1102'),
 ('MA252','NA','B','Wednesday','MA','1103'),
 ('CS203','NA','B','Wednesday','CSE','1201'),
 ('RT515','NA','B','Wednesday','CRT','1206'),
 ('ME421','NA','B','Wednesday','ME','1G1'),
 ('CS525','NA','B','Wednesday','CSE','2001'),
 ('MA473','NA','B','Wednesday','MA','2101'),
 ('EE221','NA','B','Wednesday','EEE','2201'),
 ('EE533','NA','B','Wednesday','EEE','2202'),
 ('MA573','NA','B','Wednesday','MA','2203'),
 ('CH611','NA','B','Wednesday','CH','3003'),
 ('CE606','NA','B','Wednesday','CE','3102'),
 ('PH308','NA','B','Wednesday','PH','4003'),
 ('PH406','NA','B','Wednesday','PH','4004'),
 ('CH421','NA','B','Wednesday','CH','4006'),
 ('CL205','NA','B','Wednesday','CL','4102'),
 ('CH222','NA','B','Wednesday','CH','4103'),
 ('CH417','NA','B','Wednesday','CH','4104'),
 ('CE220','NA','B','Wednesday','CE','4201'),
 ('CL205','NA','B','Wednesday','CL','4203'),
 ('CE612','NA','B','Wednesday','CE','4205'),
 ('PH206','NA','B','Wednesday','PH','4206'),
 ('BT607','NA','B','Wednesday','BT','4207'),
 ('CE525','NA','B','Wednesday','CE','4208'),
 ('CL504','NA','B','Wednesday','CL','4209'),
 ('BT604','NA','B','Wednesday','BT','4210'),
 ('CE304','NA','B','Wednesday','CE','4211'),
 ('PH521','NA','B','Wednesday','PH','4212'),
 ('ME101','III','B','Wednesday','ME','L2'),
 ('ME101','IV','B','Wednesday','ME','L3'),
 ('MA662','NA','B1','Friday','MA','1002'),
 ('ME522','NA','B1','Friday','ME','1G1'),
 ('ME522','NA','B1','Friday','ME','1G2'),
 ('MA351','NA','B1','Friday','MA','2203'),
 ('CS346','NA','B1','Friday','CSE','2204'),
 ('CH625','NA','B1','Friday','CH','4006'),
 ('ME101','I','B1','Friday','ME','L2'),
 ('ME101','II','B1','Friday','ME','L3'),
 ('MA662','NA','B1','Monday','MA','1002'),
 ('ME322','NA','B1','Monday','ME','1003'),
 ('ME322','NA','B1','Monday','ME','1005'),
 ('RT520','NA','B1','Monday','CRT','1206'),
 ('EE667','NA','B1','Monday','EEE','2002'),
 ('EE360','NA','B1','Monday','EEE','2201'),
 ('MA351','NA','B1','Monday','MA','2203'),
 ('CS346','NA','B1','Monday','CSE','2204'),
 ('EE621','NA','B1','Monday','EEE','3101'),
 ('CE564','NA','B1','Monday','CE','3102'),
 ('CL638','NA','B1','Monday','CL','4002'),
 ('PH414','NA','B1','Monday','PH','4003'),
 ('PH703','NA','B1','Monday','PH','4004'),
 ('CH625','NA','B1','Monday','CH','4006'),
 ('EE653','NA','B1','Monday','EEE','4101'),
 ('CH333','NA','B1','Monday','CH','4103'),
 ('CL308','NA','B1','Monday','CL','4203'),
 ('CE628','NA','B1','Monday','CE','4208'),
 ('CL618','NA','B1','Monday','CL','4209'),
 ('BT601','NA','B1','Monday','BT','4210'),
 ('ME101','I','B1','Monday','ME','L2'),
 ('ME101','II','B1','Monday','ME','L3'),
 ('MA662','NA','B1','Tuesday','MA','1002'),
 ('ME322','NA','B1','Tuesday','ME','1003'),
 ('ME322','NA','B1','Tuesday','ME','1005'),
 ('RT514','NA','B1','Tuesday','CRT','1206'),
 ('EE667','NA','B1','Tuesday','EEE','2002'),
 ('EE360','NA','B1','Tuesday','EEE','2201'),
 ('MA351','NA','B1','Tuesday','MA','2203'),
 ('CS346','NA','B1','Tuesday','CSE','2204'),
 ('EE621','NA','B1','Tuesday','EEE','3101'),
 ('CE564','NA','B1','Tuesday','CE','3102'),
 ('CL638','NA','B1','Tuesday','CL','4002'),
 ('PH462','NA','B1','Tuesday','PH','4003'),
 ('PH704','NA','B1','Tuesday','PH','4004'),
 ('CH625','NA','B1','Tuesday','CH','4006'),
 ('EE653','NA','B1','Tuesday','EEE','4101'),
 ('CH333','NA','B1','Tuesday','CH','4103'),
 ('CE309','NA','B1','Tuesday','CE','4201'),
 ('CL308','NA','B1','Tuesday','CL','4203'),
 ('CE628','NA','B1','Tuesday','CE','4208'),
 ('CL618','NA','B1','Tuesday','CL','4209'),
 ('BT601','NA','B1','Tuesday','BT','4210'),
 ('PH531','NA','B1','Tuesday','PH','4212'),
 ('ME101','I','B1','Tuesday','ME','L2'),
 ('ME101','II','B1','Tuesday','ME','L3'),
 ('MA662','NA','B1','Wednesday','MA','1002'),
 ('HS512','NA','B1','Wednesday','HSS','1102'),
 ('EE667','NA','B1','Wednesday','EEE','2002'),
 ('EE360','NA','B1','Wednesday','EEE','2201'),
 ('MA351','NA','B1','Wednesday','MA','2203'),
 ('CS346','NA','B1','Wednesday','CSE','2204'),
 ('EE621','NA','B1','Wednesday','EEE','3101'),
 ('CE564','NA','B1','Wednesday','CE','3102'),
 ('CL638','NA','B1','Wednesday','CL','4002'),
 ('PH414','NA','B1','Wednesday','PH','4003'),
 ('PH704','NA','B1','Wednesday','PH','4004'),
 ('CH625','NA','B1','Wednesday','CH','4006'),
 ('EE653','NA','B1','Wednesday','EEE','4101'),
 ('CH333','NA','B1','Wednesday','CH','4103'),
 ('CL308','NA','B1','Wednesday','CL','4203'),
 ('CE628','NA','B1','Wednesday','CE','4208'),
 ('CL618','NA','B1','Wednesday','CL','4209'),
 ('BT601','NA','B1','Wednesday','BT','4210'),
 ('ME101','I','B1','Wednesday','ME','L2'),
 ('ME101','II','B1','Wednesday','ME','L3'),
 ('MA590','NA','C','Friday','MA','1002'),
 ('ME223','NA','C','Friday','ME','1003'),
 ('ME223','NA','C','Friday','ME','1005'),
 ('BT630','NA','C','Friday','BT','1006'),
 ('HS623','NA','C','Friday','HSS','1102'),
 ('MA271','NA','C','Friday','MA','1103'),
 ('CS242','NA','C','Friday','CSE','1201'),
 ('BT632','NA','C','Friday','BT','1207'),
 ('CL639','NA','C','Friday','CL','1G1'),
 ('ME609','NA','C','Friday','ME','1G2'),
 ('EE671','NA','C','Friday','EEE','2101'),
 ('EE270','NA','C','Friday','EEE','2201'),
 ('MA513','NA','C','Friday','MA','2203'),
 ('CS526','NA','C','Friday','CSE','2204'),
 ('CH621','NA','C','Friday','CH','3003'),
 ('CE505','NA','C','Friday','CE','3102'),
 ('EE664','NA','C','Friday','EEE','3202'),
 ('CE616','NA','C','Friday','CE','4001'),
 ('PH406','NA','C','Friday','PH','4004'),
 ('CH438','NA','C','Friday','CE','4005'),
 ('CH432','NA','C','Friday','CH','4006'),
 ('EE551','NA','C','Friday','EEE','4101'),
 ('BT205','NA','C','Friday','BT','4102'),
 ('CH232','NA','C','Friday','CH','4103'),
 ('CE206','NA','C','Friday','CE','4201'),
 ('CE646','NA','C','Friday','CE','4205'),
 ('PH443','NA','C','Friday','PH','4206'),
 ('BT205','NA','C','Friday','BT','4207'),
 ('CE661','NA','C','Friday','CE','4208'),
 ('PH532','NA','C','Friday','PH','4212'),
 ('CE552','NA','C','Friday','CE','4G3'),
 ('PH443','NA','C','Friday','PH','4G4'),
 ('EN671','NA','C','Friday','EN','L1'),
 ('MA102','III','C','Friday','MA','L2'),
 ('MA102','IV','C','Friday','MA','L3'),
 ('MA590','NA','C','Monday','MA','1002'),
 ('ME223','NA','C','Monday','ME','1003'),
 ('ME513','NA','C','Monday','ME','1004'),
 ('ME223','NA','C','Monday','ME','1005'),
 ('BT630','NA','C','Monday','BT','1006'),
 ('HS503','NA','C','Monday','HSS','1101'),
 ('MA271','NA','C','Monday','MA','1103'),
 ('CS242','NA','C','Monday','CSE','1201'),
 ('BT632','NA','C','Monday','BT','1207'),
 ('CL639','NA','C','Monday','CL','1G1'),
 ('ME609','NA','C','Monday','ME','1G2'),
 ('EE671','NA','C','Monday','EEE','2101'),
 ('EE203','NA','C','Monday','EEE','2201'),
 ('MA513','NA','C','Monday','MA','2203'),
 ('CS526','NA','C','Monday','CSE','2204'),
 ('CH621','NA','C','Monday','CH','3003'),
 ('CE505','NA','C','Monday','CE','3102'),
 ('EE664','NA','C','Monday','EEE','3202'),
 ('CE616','NA','C','Monday','CE','4001'),
 ('PH304','NA','C','Monday','PH','4003'),
 ('PH406','NA','C','Monday','PH','4004'),
 ('CH438','NA','C','Monday','CE','4005'),
 ('CH432','NA','C','Monday','CH','4006'),
 ('BT205','NA','C','Monday','BT','4102'),
 ('CH232','NA','C','Monday','CH','4103'),
 ('CE206','NA','C','Monday','CE','4201'),
 ('CE584','NA','C','Monday','CE','4205'),
 ('PH443','NA','C','Monday','PH','4206'),
 ('BT205','NA','C','Monday','BT','4207'),
 ('CE646','NA','C','Monday','CE','4208'),
 ('PH532','NA','C','Monday','PH','4212'),
 ('CE552','NA','C','Monday','CE','4G3'),
 ('PH443','NA','C','Monday','PH','4G4'),
 ('EN671','NA','C','Monday','EN','L1'),
 ('MA102','III','C','Monday','MA','L2'),
 ('MA102','IV','C','Monday','MA','L3'),
 ('MA590','NA','C','Thursday','MA','1002'),
 ('ME618','NA','C','Thursday','ME','1003'),
 ('ME514','NA','C','Thursday','ME','1004'),
 ('ME619','NA','C','Thursday','ME','1005'),
 ('HS622','NA','C','Thursday','HSS','1102'),
 ('MA271','NA','C','Thursday','MA','1103'),
 ('CS242','NA','C','Thursday','CSE','1201'),
 ('ME613','NA','C','Thursday','ME','1203'),
 ('EE663','NA','C','Thursday','EEE','2002'),
 ('EE626','NA','C','Thursday','EEE','2201'),
 ('MA513','NA','C','Thursday','MA','2203'),
 ('EE333','NA','C','Thursday','EEE','3101'),
 ('PH402','NA','C','Thursday','PH','4004'),
 ('EE580','NA','C','Thursday','EEE','4101'),
 ('CL207','NA','C','Thursday','CL','4203'),
 ('PH206','NA','C','Thursday','PH','4206'),
 ('PH527','NA','C','Thursday','PH','4212'),
 ('MA102','III','C','Thursday','MA','L2'),
 ('MA102','IV','C','Thursday','MA','L3'),
 ('MA590','NA','C','Tuesday','MA','1002'),
 ('ME223','NA','C','Tuesday','ME','1003'),
 ('ME691','NA','C','Tuesday','ME','1004'),
 ('ME223','NA','C','Tuesday','ME','1005'),
 ('BT630','NA','C','Tuesday','BT','1006'),
 ('HS503','NA','C','Tuesday','HSS','1101'),
 ('MA271','NA','C','Tuesday','MA','1103'),
 ('CS242','NA','C','Tuesday','CSE','1201'),
 ('ME532','NA','C','Tuesday','ME','1203'),
 ('BT632','NA','C','Tuesday','BT','1207'),
 ('CL639','NA','C','Tuesday','CL','1G1'),
 ('ME609','NA','C','Tuesday','ME','1G2'),
 ('EE671','NA','C','Tuesday','EEE','2101'),
 ('EE203','NA','C','Tuesday','EEE','2201'),
 ('EE652','NA','C','Tuesday','EEE','2202'),
 ('MA513','NA','C','Tuesday','MA','2203'),
 ('CS526','NA','C','Tuesday','CSE','2204'),
 ('CH621','NA','C','Tuesday','CH','3003'),
 ('CE505','NA','C','Tuesday','CE','3102'),
 ('EE664','NA','C','Tuesday','EEE','3202'),
 ('CE616','NA','C','Tuesday','CE','4001'),
 ('PH304','NA','C','Tuesday','PH','4003'),
 ('PH402','NA','C','Tuesday','PH','4004'),
 ('CH438','NA','C','Tuesday','CE','4005'),
 ('CH432','NA','C','Tuesday','CH','4006'),
 ('BT205','NA','C','Tuesday','BT','4102'),
 ('CH232','NA','C','Tuesday','CH','4103'),
 ('CE206','NA','C','Tuesday','CE','4201'),
 ('CL207','NA','C','Tuesday','CL','4203'),
 ('CE583','NA','C','Tuesday','CE','4205'),
 ('PH443','NA','C','Tuesday','PH','4206'),
 ('BT205','NA','C','Tuesday','BT','4207'),
 ('CE661','NA','C','Tuesday','CE','4208'),
 ('CE646','NA','C','Tuesday','CE','4211'),
 ('PH543','NA','C','Tuesday','PH','4212'),
 ('CE552','NA','C','Tuesday','CE','4G3'),
 ('PH443','NA','C','Tuesday','PH','4G4'),
 ('EN671','NA','C','Tuesday','EN','L1'),
 ('MA102','III','C','Tuesday','MA','L2'),
 ('MA102','IV','C','Tuesday','MA','L3'),
 ('MA643','NA','C1','Friday','MA','1002'),
 ('ME324','NA','C1','Friday','ME','1003'),
 ('ME553','NA','C1','Friday','ME','1004'),
 ('ME324','NA','C1','Friday','ME','1005'),
 ('MA561','NA','C1','Friday','MA','1103'),
 ('MA644','NA','C1','Friday','MA','1104'),
 ('ME670','NA','C1','Friday','ME','1203'),
 ('EE668','NA','C1','Friday','EEE','2002'),
 ('EE340','NA','C1','Friday','EEE','2201'),
 ('CE607','NA','C1','Friday','CE','3102'),
 ('PH706','NA','C1','Friday','PH','4004'),
 ('CH617','NA','C1','Friday','CH','4006'),
 ('EE634','NA','C1','Friday','EEE','4101'),
 ('CE308','NA','C1','Friday','CE','4201'),
 ('BT308','NA','C1','Friday','BT','4207'),
 ('CE664','NA','C1','Friday','CE','4208'),
 ('CE614','NA','C1','Friday','CE','4211'),
 ('PH543','NA','C1','Friday','PH','4212'),
 ('CS344','NA','C1','Friday','CSE','L1'),
 ('MA102','I','C1','Friday','MA','L2'),
 ('MA102','II','C1','Friday','MA','L3'),
 ('MA643','NA','C1','Monday','MA','1002'),
 ('ME324','NA','C1','Monday','ME','1003'),
 ('ME324','NA','C1','Monday','ME','1005'),
 ('MA561','NA','C1','Monday','MA','1103'),
 ('MA644','NA','C1','Monday','MA','1104'),
 ('EE668','NA','C1','Monday','EEE','2002'),
 ('EE340','NA','C1','Monday','EEE','2201'),
 ('CE607','NA','C1','Monday','CE','3102'),
 ('CL623','NA','C1','Monday','CL','4002'),
 ('PH462','NA','C1','Monday','PH','4003'),
 ('PH702','NA','C1','Monday','PH','4004'),
 ('CH617','NA','C1','Monday','CH','4006'),
 ('EE634','NA','C1','Monday','EEE','4101'),
 ('CL309','NA','C1','Monday','CL','4203'),
 ('BT308','NA','C1','Monday','BT','4207'),
 ('CE664','NA','C1','Monday','CE','4208'),
 ('CL617','NA','C1','Monday','CL','4209'),
 ('CE614','NA','C1','Monday','CE','4211'),
 ('CS344','NA','C1','Monday','CSE','L1'),
 ('MA102','I','C1','Monday','MA','L2'),
 ('MA102','II','C1','Monday','MA','L3'),
 ('MA643','NA','C1','Thursday','MA','1002'),
 ('ME324','NA','C1','Thursday','ME','1003'),
 ('ME324','NA','C1','Thursday','ME','1005'),
 ('MA561','NA','C1','Thursday','MA','1103'),
 ('MA644','NA','C1','Thursday','MA','1104'),
 ('ME522','NA','C1','Thursday','ME','1G1'),
 ('ME522','NA','C1','Thursday','ME','1G2'),
 ('CE652','NA','C1','Thursday','CE','3102'),
 ('CL622','NA','C1','Thursday','CL','4002'),
 ('PH703','NA','C1','Thursday','PH','4004'),
 ('CH617','NA','C1','Thursday','CH','4006'),
 ('CL614','NA','C1','Thursday','CL','4209'),
 ('PH544','NA','C1','Thursday','PH','4212'),
 ('CS344','NA','C1','Thursday','CSE','L1'),
 ('MA102','I','C1','Thursday','MA','L2'),
 ('MA102','II','C1','Thursday','	MA','L3'),
 ('MA643','NA','C','	Tuesday','MA','1002'),
 ('ME324','NA','C','	Tuesday','ME','1003'),
 ('ME324','NA','C','	Tuesday','ME','1005'),
 ('HS512','NA','C','	Tuesday','HSS','1102'),
 ('MA561','NA','C','	Tuesday','MA','1103'),
 ('MA644','NA','C','	Tuesday','MA','1104'),
 ('EE668','NA','C','	Tuesday','EEE','2002'),
 ('EE340','NA','C','	Tuesday','EEE','2201'),
 ('CE607','NA','C','	Tuesday','CE','3102'),
 ('CL623','NA','C','	Tuesday','CL','4002'),
 ('CH617','NA','C','	Tuesday','CH','4006'),
 ('EE634','NA','C','	Tuesday','EEE','4101'),
 ('CE308','NA','C','	Tuesday','CE','4201'),
 ('BT308','NA','C','	Tuesday','BT','4207'),
 ('CE664','NA','C','	Tuesday','CE','4208'),
 ('CL617','NA','C','	Tuesday','CL','4209'),
 ('CE614','NA','C','	Tuesday','CE','4211'),
 ('PH521','NA','C','	Tuesday','PH','4212'),
 ('CS344','NA','C1','Tuesday','CSE','L1'),
 ('MA102','I','C1','Tuesday','MA','L2'),
 ('MA102','II','C1','Tuesday','MA','L3'),
 ('MA547','NA','D','Friday','MA','1002'),
 ('ME224','NA','D','Friday','ME','1003'),
 ('ME224','NA','D','Friday','ME','1005'),
 ('HS621','NA','D','Friday','HSS','1102'),
 ('MA224','NA','D','Friday','MA','1103'),
 ('CS204','NA','D','Friday','CSE','1201'),
 ('RT515','NA','D','Friday','CRT','1206'),
 ('CS666','NA','D','Friday','CSE','2001'),
 ('EE230','NA','D','Friday','EEE','2201'),
 ('EE636','NA','D','Friday','EEE','2202'),
 ('MA502','NA','D','Friday','MA','2203'),
 ('CH623','NA','D','Friday','CH','3003'),
 ('EE503','NA','D','Friday','EEE','3101'),
 ('CE643','NA','D','Friday','CE','3102'),
 ('PH308','NA','D','Friday','PH','4003'),
 ('PH410','NA','D','Friday','PH','4004'),
 ('CH433','NA','D','Friday','CH','4006'),
 ('CH233','NA','D','Friday','CH','4103'),
 ('CH418','NA','D','Friday','CH','4104'),
 ('CE205','NA','D','Friday','CE','4201'),
 ('PH202','NA','D','Friday','PH','4206'),
 ('CE510','NA','D','Friday','CE','4208'),
 ('CL404','NA','D','Friday','CL','4209'),
 ('BT609','NA','D','Friday','BT','4210'),
 ('PH524','NA','D','Friday','PH','4212'),
 ('BT101','III','D','Friday','BT','L2'),
 ('BT101','IV','D','Friday','BT','L3'),
 ('MA547','NA','D','Monday','MA','1002'),
 ('ME224','NA','D','Monday','ME','1003'),
 ('ME691','NA','D','Monday','ME','1004'),
 ('ME224','NA','D','Monday','ME','1005'),
 ('HS604','NA','D','Monday','HSS','1102'),
 ('MA224','NA','D','Monday','MA','1103'),
 ('CS204','NA','D','Monday','CSE','1201'),
 ('ME532','NA','D','Monday','ME','1203'),
 ('ME532','NA','D','Monday','ME','1G2'),
 ('CS666','NA','D','Monday','CSE','2001'),
 ('EE230','NA','D','Monday','EEE','2201'),
 ('EE636','NA','D','Monday','EEE','2202'),
 ('MA502','NA','D','Monday','MA','2203'),
 ('CH623','NA','D','Monday','CH','3003'),
 ('EE663','NA','D','Monday','EEE','3101'),
 ('CE643','NA','D','Monday','CE','3102'),
 ('PH306','NA','D','Monday','PH','4003'),
 ('PH410','NA','D','Monday','PH','4004'),
 ('CH433','NA','D','Monday','CH','4006'),
 ('EE652','NA','D','Monday','EEE','4101'),
 ('BT208','NA','D','Monday','BT','4102'),
 ('CH233','NA','D','Monday','CH','4103'),
 ('CH418','NA','D','Monday','CH','4104'),
 ('CE205','NA','D','Monday','CE','4201'),
 ('CL207','NA','D','Monday','CL','4203'),
 ('CE583','NA','D','Monday','CE','4205'),
 ('PH202','NA','D','Monday','PH','4206'),
 ('CE510','NA','D','Monday','CE','4208'),
 ('CL404','NA','D','Monday','CL','4209'),
 ('BT609','NA','D','Monday','BT','4210'),
 ('PH523','NA','D','Monday','PH','4212'),
 ('BT101','III','D','Monday','BT','L2'),
 ('BT101','IV','D','Monday','BT','L3'),
 ('MA547','NA','D','Thursday','MA','1002'),
 ('ME224','NA','D','Thursday','ME','1003'),
 ('ME691','NA','D','Thursday','ME','1004'),
 ('ME224','NA','D','Thursday','ME','1005'),
 ('HS521','NA','D','Thursday','HSS','1102'),
 ('MA224','NA','D','Thursday','MA','1103'),
 ('CS204','NA','D','Thursday','CSE','1201'),
 ('ME532','NA','D','Thursday','ME','1203'),
 ('ME532','NA','D','Thursday','ME','1G2'),
 ('CS666','NA','D','Thursday','CSE','2001'),
 ('EE230','NA','D','Thursday','EEE','2201'),
 ('MA502','NA','D','Thursday','MA','2203'),
 ('CH623','NA','D','Thursday','CH','3003'),
 ('CE643','NA','D','Thursday','CE','3102'),
 ('PH306','NA','D','Thursday','PH','4003'),
 ('PH406','NA','D','Thursday','PH','4004'),
 ('CH433','NA','D','Thursday','CH','4006'),
 ('BT208','NA','D','Thursday','BT','4102'),
 ('CH233','NA','D','Thursday','CH','4103'),
 ('CH418','NA','D','Thursday','CH','4104'),
 ('CE205','NA','D','Thursday','CE','4201'),
 ('PH204','NA','D','Thursday','PH','4206'),
 ('CE510','NA','D','Thursday','CE','4208'),
 ('CL404','NA','D','Thursday','CL','4209'),
 ('BT609','NA','D','Thursday','BT','4210'),
 ('PH524','NA','D','Thursday','PH','4212'),
 ('BT101','III','D','Thursday','BT','L2'),
 ('BT101','IV','D','Thursday','BT','L3'),
 ('MA547','NA','D','Wednesday','MA','1002'),
 ('ME615','NA','D','Wednesday','ME','1003'),
 ('ME686','NA','D','Wednesday','ME','1004'),
 ('ME688','NA','D','Wednesday','ME','1005'),
 ('HS621','NA','D','Wednesday','HSS','1101'),
 ('MA224','NA','D','Wednesday','MA','1103'),
 ('CS204','NA','D','Wednesday','CSE','1201'),
 ('CS666','NA','D','Wednesday','CSE','2001'),
 ('EE221','NA','D','Wednesday','EEE','2002'),
 ('EE221','NA','D','Wednesday','EEE','2201'),
 ('EE221','NA','D','Wednesday','EEE','2202'),
 ('MA502','NA','D','Wednesday','MA','2203'),
 ('EE221','NA','D','Wednesday','EEE','3101'),
 ('CL642','NA','D','Wednesday','CL','4002'),
 ('PH410','NA','D','Wednesday','PH','4004'),
 ('EE221','NA','D','Wednesday','EEE','4101'),
 ('BT208','NA','D','Wednesday','BT','4102'),
 ('PH202','NA','D','Wednesday','PH','4206'),
 ('CL612','NA','D','Wednesday','CL','4209'),
 ('PH531','NA','D','Wednesday','PH','4212'),
 ('BT101','III','D','Wednesday','BT','L2'),
 ('BT101','IV','D','Wednesday','BT','L3'),
 ('MA762','NA','D1','Friday','MA','1002'),
 ('ME616','NA','D1','Friday','ME','1004'),
 ('MA671','NA','D1','Friday','MA','1103'),
 ('MA622','NA','D1','Friday','MA','1104'),
 ('CS549','NA','D1','Friday','CSE','1201'),
 ('ME665','NA','D1','Friday','ME','1203'),
 ('EE648','NA','D1','Friday','EEE','2002'),
 ('EE351','NA','D1','Friday','EEE','2202'),
 ('CS348','NA','D1','Friday','MA','2203'),
 ('EE645','NA','D1','Friday','EEE','3101'),
 ('CE623','NA','D1','Friday','CE','3102'),
 ('PH704','NA','D1','Friday','PH','4004'),
 ('CH615','NA','D1','Friday','CH','4006'),
 ('EE631','NA','D1','Friday','EEE','4101'),
 ('CH322','NA','D1','Friday','CH','4103'),
 ('CE309','NA','D1','Friday','CE','4201'),
 ('BT305','NA','D1','Friday','BT','4207'),
 ('CE595','NA','D1','Friday','CE','4208'),
 ('PH544','NA','D1','Friday','PH','4212'),
 ('BT101','I','D1','Friday','BT','L2'),
 ('BT101','II','D1','Friday','BT','L3'),
 ('MA762','NA','D1','Monday','MA','1002'),
 ('ME323','NA','D1','Monday','ME','1003'),
 ('ME323','NA','D1','Monday','ME','1005'),
 ('HS622','NA','D1','Monday','HSS','1102'),
 ('MA671','NA','D1','Monday','MA','1103'),
 ('MA622','NA','D1','Monday','MA','1104'),
 ('CS549','NA','D1','Monday','CSE','1201'),
 ('RT517','NA','D1','Monday','CRT','1206'),
 ('EE648','NA','D1','Monday','EEE','2002'),
 ('EE351','NA','D1','Monday','EEE','2202'),
 ('CS348','NA','D1','Monday','MA','2203'),
 ('EE645','NA','D1','Monday','EEE','3101'),
 ('CE623','NA','D1','Monday','CE','3102'),
 ('CL622','NA','D1','Monday','CL','4002'),
 ('CH615','NA','D1','Monday','CH','4006'),
 ('EE631','NA','D1','Monday','EEE','4101'),
 ('CH322','NA','D1','Monday','CH','4103'),
 ('CE308','NA','D1','Monday','CE','4201'),
 ('CL314','NA','D1','Monday','CL','4203'),
 ('BT305','NA','D1','Monday','BT','4207'),
 ('CE595','NA','D1','Monday','CE','4208'),
 ('CL614','NA','D1','Monday','CL','4209'),
 ('BT101','I','D1','Monday','BT','L2'),
 ('BT101','II','D1','Monday','BT','L3'),
 ('MA762','NA','D1','Thursday','MA','1002'),
 ('ME323','NA','D1','Thursday','ME','1003'),
 ('ME553','NA','D1','Thursday','ME','1004'),
 ('ME323','NA','D1','Thursday','ME','1005'),
 ('MA671','NA','D1','Thursday','MA','1103'),
 ('MA622','NA','D1','Thursday','MA','1104'),
 ('CS549','NA','D1','Thursday','CSE','1201'),
 ('ME670','NA','D1','Thursday','ME','1203'),
 ('RT517','NA','D1','Thursday','CRT','1206'),
 ('EE648','NA','D1','Thursday','EEE','2002'),
 ('EE351','NA','D1','Thursday','EEE','2202'),
 ('CS348','NA','D1','Thursday','MA','2203'),
 ('EE645','NA','D1','Thursday','EEE','3101'),
 ('CL623','NA','D1','Thursday','CL','4002'),
 ('PH414','NA','D1','Thursday','PH','4003'),
 ('PH706','NA','D1','Thursday','PH','4004'),
 ('CH615','NA','D1','Thursday','CH','4006'),
 ('EE673','NA','D1','Thursday','EEE','4101'),
 ('CH322','NA','D1','Thursday','CH','4103'),
 ('CE309','NA','D1','Thursday','CE','4201'),
 ('CL314','NA','D1','Thursday','CL','4203'),
 ('BT305','NA','D1','Thursday','BT','4207'),
 ('CL617','NA','D1','Thursday','CL','4209'),
 ('PH545','NA','D1','Thursday','PH','4212'),
 ('BT101','I','D1','Thursday','BT','L2'),
 ('BT101','II','D1','Thursday','BT','L3'),
 ('MA762','NA','D1','Wednesday','MA','1002'),
 ('ME323','NA','D1','Wednesday','ME','1003'),
 ('ME323','NA','D1','Wednesday','ME','1005'),
 ('MA671','NA','D1','Wednesday','MA','1103'),
 ('MA622','NA','D1','Wednesday','MA','1104'),
 ('CS549','NA','D1','Wednesday','CSE','1201'),
 ('ME522','NA','D1','Wednesday','ME','1G1'),
 ('ME522','NA','D1','Wednesday','ME','1G2'),
 ('CS348','NA','D1','Wednesday','MA','2203'),
 ('CL622','NA','D1','Wednesday','CL','4002'),
 ('CE309','NA','D1','Wednesday','CE','4201'),
 ('CL614','NA','D1','Wednesday','CL','4209'),
 ('BT101','I','D1','Wednesday','BT','L2'),
 ('BT101','II','D1','Wednesday','BT','L3'),
 ('MA591','NA','E','Friday','MA','1002'),
 ('ME605','NA','E','Friday','ME','1005'),
 ('HS203','NA','E','Friday','HSS','1006'),
 ('HS517','NA','E','Friday','HSS','1101'),
 ('MA519','NA','E','Friday','MA','1103'),
 ('MA505','NA','E','Friday','MA','1104'),
 ('ME672','NA','E','Friday','ME','1203'),
 ('HS220','NA','E','Friday','HSS','1207'),
 ('HS212','NA','E','Friday','HSS','1G1'),
 ('HS242','NA','E','Friday','HSS','1G2'),
 ('CS501','NA','E','Friday','CSE','2001'),
 ('EE525','NA','E','Friday','EEE','2002'),
 ('HS224','NA','E','Friday','HSS','2101'),
 ('HS226','NA','E','Friday','HSS','2102'),
 ('EE533','NA','E','Friday','EEE','2202'),
 ('MA477','NA','E','Friday','MA','2203'),
 ('CH630','NA','E','Friday','CH','3003'),
 ('EE561','NA','E','Friday','EEE','3101'),
 ('CE608','NA','E','Friday','CE','3102'),
 ('HS213','NA','E','Friday','HSS','3202'),
 ('HS234','NA','E','Friday','HSS','4001'),
 ('PH308','NA','E','Friday','PH','4003'),
 ('PH404','NA','E','Friday','PH','4004'),
 ('HS237','NA','E','Friday','HSS','4005'),
 ('CH428','NA','E','Friday','CH','4104'),
 ('CE648','NA','E','Friday','CE','4201'),
 ('BT401','NA','E','Friday','BT','4207'),
 ('CL401','NA','E','Friday','CL','4209'),
 ('PH521','NA','E','Friday','PH','4212'),
 ('HS238','NA','E','Friday','HSS','4G3'),
 ('HS239','NA','E','Friday','HSS','4G4'),
 ('HS243','NA','E','Friday','HSS','L1'),
 ('PH102','III','E','Friday','PH','L2'),
 ('PH102','IV','E','Friday','PH','L3'),
 ('MA591','NA','E','Thursday','MA','1002'),
 ('ME605','NA','E','Thursday','ME','1005'),
 ('HS203','NA','E','Thursday','HSS','1006'),
 ('HS517','NA','E','Thursday','HSS','1101'),
 ('MA519','NA','E','Thursday','MA','1103'),
 ('MA505','NA','E','Thursday','MA','1104'),
 ('ME672','NA','E','Thursday','ME','1203'),
 ('HS220','NA','E','Thursday','HSS','1207'),
 ('HS212','NA','E','Thursday','HSS','1G1'),
 ('HS242','NA','E','Thursday','HSS','1G2'),
 ('CS501','NA','E','Thursday','CSE','2001'),
 ('HS224','NA','E','Thursday','HSS','2101'),
 ('HS226','NA','E','Thursday','HSS','2102'),
 ('EE551','NA','E','Thursday','EEE','2202'),
 ('MA477','NA','E','Thursday','MA','2203'),
 ('CH630','NA','E','Thursday','CH','3003'),
 ('CE608','NA','E','Thursday','CE','3102'),
 ('HS213','NA','E','Thursday','HSS','3202'),
 ('HS234','NA','E','Thursday','HSS','4001'),
 ('PH304','NA','E','Thursday','PH','4003'),
 ('PH410','NA','E','Thursday','PH','4004'),
 ('HS237','NA','E','Thursday','HSS','4005'),
 ('CH428','NA','E','Thursday','CH','4104'),
 ('CE648','NA','E','Thursday','CE','4201'),
 ('CE584','NA','E','Thursday','CE','4205'),
 ('BT401','NA','E','Thursday','BT','4207'),
 ('CL401','NA','E','Thursday','CL','4209'),
 ('BT502','NA','E','Thursday','BT','4210'),
 ('PH523','NA','E','Thursday','PH','4212'),
 ('HS238','NA','E','Thursday','HSS','4G3'),
 ('HS239','NA','E','Thursday','HSS','4G4'),
 ('HS243','NA','E','Thursday','HSS','L1'),
 ('PH102','III','E','Thursday','PH','L2'),
 ('PH102','IV','E','Thursday','PH','L3'),
 ('MA591','NA','E','Tuesday','MA','1002'),
 ('ME615','NA','E','Tuesday','ME','1003'),
 ('ME686','NA','E','Tuesday','ME','1004'),
 ('ME688','NA','E','Tuesday','ME','1005'),
 ('HS623','NA','E','Tuesday','HSS','1102'),
 ('MA519','NA','E','Tuesday','MA','1103'),
 ('MA505','NA','E','Tuesday','MA','1104'),
 ('CS501','NA','E','Tuesday','CSE','2001'),
 ('EE626','NA','E','Tuesday','EEE','2201'),
 ('MA477','NA','E','Tuesday','MA','2203'),
 ('EE333','NA','E','Tuesday','EEE','3101'),
 ('EE580','NA','E','Tuesday','EEE','4101'),
 ('CL401','NA','E','Tuesday','CL','4209'),
 ('PH102','III','E','Tuesday','PH','L2'),
 ('PH102','IV','E','Tuesday','PH','L3'),
 ('MA591','NA','E','Wednesday','MA','1002'),
 ('ME618','NA','E','Wednesday','ME','1003'),
 ('ME514','NA','E','Wednesday','ME','1004'),
 ('ME619','NA','E','Wednesday','ME','1005'),
 ('HS203','NA','E','Wednesday','HSS','1006'),
 ('HS517','NA','E','Wednesday','HSS','1101'),
 ('MA519','NA','E','Wednesday','MA','1103'),
 ('MA505','NA','E','Wednesday','MA','1104'),
 ('ME613','NA','E','Wednesday','ME','1203'),
 ('HS220','NA','E','Wednesday','HSS','1207'),
 ('HS212','NA','E','Wednesday','HSS','1G1'),
 ('HS242','NA','E','Wednesday','HSS','1G2'),
 ('CS501','NA','E','Wednesday','CSE','2001'),
 ('HS224','NA','E','Wednesday','HSS','2101'),
 ('HS226','NA','E','Wednesday','HSS','2102'),
 ('EE534','NA','E','Wednesday','EEE','2202'),
 ('MA477','NA','E','Wednesday','MA','2203'),
 ('CH630','NA','E','Wednesday','CH','3003'),
 ('CE608','NA','E','Wednesday','CE','3102'),
 ('HS213','NA','E','Wednesday','HSS','3202'),
 ('HS234','NA','E','Wednesday','HSS','4001'),
 ('PH302','NA','E','Wednesday','PH','4003'),
 ('PH404','NA','E','Wednesday','PH','4004'),
 ('HS237','NA','E','Wednesday','HSS','4005'),
 ('CH428','NA','E','Wednesday','CH','4104'),
 ('CE648','NA','E','Wednesday','CE','4201'),
 ('CE583','NA','E','Wednesday','CE','4205'),
 ('BT401','NA','E','Wednesday','BT','4207'),
 ('CL401','NA','E','Wednesday','CL','4209'),
 ('BT502','NA','E','Wednesday','BT','4210'),
 ('PH524','NA','E','Wednesday','PH','4212'),
 ('HS238','NA','E','Wednesday','HSS','4G3'),
 ('HS239','NA','E','Wednesday','HSS','4G4'),
 ('HS243','NA','E','Wednesday','HSS','L1'),
 ('PH102','III','E','Wednesday','PH','L2'),
 ('PH102','IV','E','Wednesday','PH','L3'),
 ('MA642','NA','E1','Friday','MA','1002'),
 ('HS621','NA','E1','Friday','HSS','1101'),
 ('MA641','NA','E1','Friday','MA','1103'),
 ('MA691','NA','E1','Friday','MA','1104'),
 ('CS561','NA','E1','Friday','CSE','2001'),
 ('EE647','NA','E1','Friday','EEE','2002'),
 ('CH419','NA','E1','Friday','CH','2101'),
 ('EE632','NA','E1','Friday','EEE','2202'),
 ('MA373','NA','E1','Friday','MA','2203'),
 ('CE652','NA','E1','Friday','CE','3102'),
 ('CL625','NA','E1','Friday','CL','4001'),
 ('PH446','NA','E1','Friday','PH','4003'),
 ('PH702','NA','E1','Friday','PH','4004'),
 ('PH446','NA','E1','Friday','PH','4005'),
 ('CH640','NA','E1','Friday','CH','4006'),
 ('EE646','NA','E1','Friday','EEE','4101'),
 ('BT306','NA','E1','Friday','BT','4207'),
 ('PH545','NA','E1','Friday','PH','4212'),
 ('EE657','NA','E1','Friday','EEE','L1'),
 ('PH102','I','E1','Friday','PH','L2'),
 ('PH102','II','E1','Friday','PH','L3'),
 ('MA642','NA','E1','Thursday','MA','1002'),
 ('ME325','NA','E1','Thursday','ME','1003'),
 ('ME616','NA','E1','Thursday','ME','1004'),
 ('ME325','NA','E1','Thursday','ME','1005'),
 ('MA641','NA','E1','Thursday','MA','1103'),
 ('MA691','NA','E1','Thursday','MA','1104'),
 ('ME665','NA','E1','Thursday','ME','1203'),
 ('CS561','NA','E1','Thursday','CSE','2001'),
 ('EE647','NA','E1','Thursday','EEE','2002'),
 ('CH419','NA','E1','Thursday','CH','2101'),
 ('EE632','NA','E1','Thursday','EEE','2202'),
 ('MA373','NA','E1','Thursday','MA','2203'),
 ('CE649','NA','E1','Thursday','CE','3102'),
 ('CL625','NA','E1','Thursday','CL','4001'),
 ('PH446','NA','E1','Thursday','PH','4003'),
 ('PH446','NA','E1','Thursday','PH','4005'),
 ('CH640','NA','E1','Thursday','CH','4006'),
 ('EE646','NA','E1','Thursday','EEE','4101'),
 ('CE311','NA','E1','Thursday','CE','4201'),
 ('BT306','NA','E1','Thursday','BT','4207'),
 ('PH543','NA','E1','Thursday','PH','4212'),
 ('EE657','NA','E1','Thursday','EEE','L1'),
 ('PH102','I','E1','Thursday','PH','L2'),
 ('PH102','II','E1','Thursday','PH','L3'),
 ('MA642','NA','E1','Tuesday','MA','1002'),
 ('ME325','NA','E1','Tuesday','ME','1003'),
 ('ME325','NA','E1','Tuesday','ME','1005'),
 ('MA641','NA','E1','Tuesday','MA','1103'),
 ('MA691','NA','E1','Tuesday','MA','1104'),
 ('RT520','NA','E1','Tuesday','CRT','1206'),
 ('ME522','NA','E1','Tuesday','ME','1G1'),
 ('ME522','NA','E1','Tuesday','ME','1G2'),
 ('CS561','NA','E1','Tuesday','CSE','2001'),
 ('MA373','NA','E1','Tuesday','MA','2203'),
 ('CE649','NA','E1','Tuesday','CE','3102'),
 ('CH640','NA','E1','Tuesday','CH','4006'),
 ('CE311','NA','E1','Tuesday','CE','4201'),
 ('PH545','NA','E1','Tuesday','PH','4212'),
 ('PH102','I','E1','Tuesday','PH','L2'),
 ('PH102','II','E1','Tuesday','PH','L3'),
 ('MA642','NA','E1','Wednesday','MA','1002'),
 ('ME325','NA','E1','Wednesday','ME','1003'),
 ('ME325','NA','E1','Wednesday','ME','1005'),
 ('MA641','NA','E1','Wednesday','MA','1103'),
 ('MA691','NA','E1','Wednesday','MA','1104'),
 ('RT517','NA','E1','Wednesday','CRT','1206'),
 ('CS561','NA','E1','Wednesday','CSE','2001'),
 ('EE647','NA','E1','Wednesday','EEE','2002'),
 ('CH419','NA','E1','Wednesday','CH','2101'),
 ('EE632','NA','E1','Wednesday','EEE','2202'),
 ('MA373','NA','E1','Wednesday','MA','2203'),
 ('CE649','NA','E1','Wednesday','CE','3102'),
 ('CL625','NA','E1','Wednesday','CL','4001'),
 ('PH446','NA','E1','Wednesday','PH','4003'),
 ('PH706','NA','E1','Wednesday','PH','4004'),
 ('PH446','NA','E1','Wednesday','PH','4005'),
 ('CH640','NA','E1','Wednesday','CH','4006'),
 ('EE646','NA','E1','Wednesday','EEE','4101'),
 ('CE311','NA','E1','Wednesday','CE','4201'),
 ('BT306','NA','E1','Wednesday','BT','4207'),
 ('CE623','NA','E1','Wednesday','CE','4208'),
 ('EE657','NA','E1','Wednesday','EEE','L1'),
 ('PH102','I','E1','Wednesday','PH','L2'),
 ('PH102','II','E1','Wednesday','PH','L3'),
 ('ME607','NA','F','Friday','ME','1003'),
 ('ME680','NA','F','Friday','ME','1005'),
 ('HS604','NA','F','Friday','HSS','1102'),
 ('MA212M','NA','F','Friday','MA','1103'),
 ('CS206M','NA','F','Friday','CSE','1201'),
 ('ME554','NA','F','Friday','ME','1203'),
 ('EE213M','NA','F','Friday','EEE','2002'),
 ('EE642','NA','F','Friday','EEE','2201'),
 ('CH501','NA','F','Friday','CH','3003'),
 ('CE307','NA','F','Friday','CE','3102'),
 ('CL252M','NA','F','Friday','CL','4002'),
 ('CL635','NA','F','Friday','CL','4203'),
 ('CL630','NA','F','Friday','CL','4209'),
 ('BT613','NA','F','Friday','BT','4210'),
 ('DD220M','NA','F','Friday','DD','BD2S'),
 ('ME618','NA','F','Monday','ME','1003'),
 ('ME514','NA','F','Monday','ME','1004'),
 ('ME619','NA','F','Monday','ME','1005'),
 ('HS512','NA','F','Monday','HSS','1102'),
 ('MA212M','NA','F','Monday','MA','1103'),
 ('CS206M','NA','F','Monday','CSE','1201'),
 ('ME613','NA','F','Monday','ME','1203'),
 ('EE213M','NA','F','Monday','EEE','2002'),
 ('EE534','NA','F','Monday','EEE','2202'),
 ('CH501','NA','F','Monday','CH','3003'),
 ('EE561','NA','F','Monday','EEE','3101'),
 ('CL252M','NA','F','Monday','CL','4002'),
 ('CE307','NA','F','Monday','CE','4201'),
 ('CL635','NA','F','Monday','CL','4203'),
 ('CE615','NA','F','Monday','CE','4205'),
 ('CE570','NA','F','Monday','CE','4208'),
 ('CL630','NA','F','Monday','CL','4209'),
 ('BT613','NA','F','Monday','BT','4210'),
 ('DD220M','NA','F','Monday','DD','BD2S'),
 ('ME607','NA','F','Wednesday','ME','1003'),
 ('ME680','NA','F','Wednesday','ME','1005'),
 ('HS503','NA','F','Wednesday','HSS','1101'),
 ('MA212M','NA','F','Wednesday','MA','1103'),
 ('CS206M','NA','F','Wednesday','CSE','1201'),
 ('ME554','NA','F','Wednesday','ME','1203'),
 ('EE213M','NA','F','Wednesday','EEE','2002'),
 ('EE642','NA','F','Wednesday','EEE','2201'),
 ('CH501','NA','F','Wednesday','CH','3003'),
 ('EE561','NA','F','Wednesday','EEE','3101'),
 ('CL252M','NA','F','Wednesday','CL','4002'),
 ('CE307','NA','F','Wednesday','CE','4201'),
 ('CL635','NA','F','Wednesday','CL','4203'),
 ('CE570','NA','F','Wednesday','CE','4205'),
 ('CL630','NA','F','Wednesday','CL','4209'),
 ('BT613','NA','F','Wednesday','BT','4210'),
 ('CE615','NA','F','Wednesday','CE','4211'),
 ('DD220M','NA','F','Wednesday','DD','BD2S'),
 ('ME321','NA','G','Friday','ME','1003'),
 ('MA312M','NA','G','Friday','MA','1103'),
 ('EE322M','NA','G','Friday','EEE','2201'),
 ('CS350M','NA','G','Friday','CSE','2204'),
 ('CL352M','NA','G','Friday','CL','4002'),
 ('PH382M','NA','G','Friday','PH','4004'),
 ('DD320M','NA','G','Friday','DD','BD3S'),
 ('ME321','NA','G','Monday','ME','1003'),
 ('MA312M','NA','G','Monday','MA','1103'),
 ('CS350M','NA','G','Monday','CSE','2204'),
 ('CL352M','NA','G','Monday','CL','4002'),
 ('PH382M','NA','G','Monday','PH','4004'),
 ('DD320M','NA','G','Monday','DD','BD3S'),
 ('ME321','NA','G','Wednesday','ME','1003'),
 ('MA312M','NA','G','Wednesday','MA','1103'),
 ('EE322M','NA','G','Wednesday','EEE','2201'),
 ('CS350M','NA','G','Wednesday','CSE','2204'),
 ('CL352M','NA','G','Wednesday','CL','4002'),
 ('PH382M','NA','G','Wednesday','PH','4004'),
 ('DD320M','NA','G','Wednesday','DD','BD3S'),
 ('ME607','NA','H','Thursday','ME','1003'),
 ('HS502','NA','H','Thursday','HSS','1102'),
 ('ME554','NA','H','Thursday','ME','1203'),
 ('RT514','NA','H','Thursday','CRT','1206'),
 ('EE642','NA','H','Thursday','EEE','2201'),
 ('CE307','NA','H','Thursday','CE','3102'),
 ('CE222','NA','H','Thursday','CE','4201'),
 ('CL309','NA','H','Thursday','CL','4203'),
 ('CE615','NA','H','Thursday','CE','4205'),
 ('CE661','NA','H','Thursday','CE','4208'),
 ('ME605','NA','H','Tuesday','ME','1005'),
 ('HS604','NA','H','Tuesday','HSS','1102'),
 ('RT514','NA','H','Tuesday','CRT','1206'),
 ('ME532','NA','H','Tuesday','ME','1G2'),
 ('EE533','NA','H','Tuesday','EEE','2202'),
 ('CE222','NA','H','Tuesday','CE','4201'),
 ('CL309','NA','H','Tuesday','CL','4203'),
 ('CE570','NA','H','Tuesday','CE','4205'),
 ('CE661','NA','H','Tuesday','CE','4208'),
 ('MA685','NA','I','Thursday','MA','1104'),
 ('BT618','NA','I','Thursday','BT','4210'),
 ('MA685','NA','I','Tuesday','MA','1104'),
 ('BT618','NA','I','Tuesday','BT','4210'),
 ('CL309','NA','J','Thursday','CL','4203'),
 ('CL309','NA','J','Tuesday','CL','4203'),
 ('BT637','NA','K','Friday','BT','4207'),
 ('BT629','NA','K','Friday','BT','4210'),
 ('BT637','NA','K','Monday','BT','4207'),
 ('BT629','NA','K','Monday','BT','4210'),
 ('CL639','NA','K','Monday','CL','4G4'),
 ('BT637','NA','K','Wednesday','BT','4207'),
 ('BT629','NA','K','Wednesday','BT','4210'),
 ('CL639','NA','K','Wednesday','CL','4G4'),
 ('MA616','NA','L','Thursday','MA','1002'),
 ('CL625','NA','L','Thursday','CL','4G3'),
 ('MA616','NA','L','Tuesday','MA','1002'),
 ('BT616','NA','L','Tuesday','BT','4210'),
 ('CL625','NA','L','Tuesday','CL','4G3'),
 ('CE402','NA','H','Thursday','CE','4211')
;
