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
	room_number VARCHAR(15),
	location VARCHAR(10)
);
CREATE TABLE ScheduledIn(
	course_id VARCHAR(10) NOT NULL,
	division VARCHAR(3) NOT NULL default 'NA',
	letter VARCHAR(2) NOT NULL,
	day VARCHAR(10) NOT NULL,
	department_id VARCHAR(10) NOT NULL,
	room_number	VARCHAR(4) NOT NULL,
	CONSTRAINT si_pk PRIMARY KEY(letter,day,room_number),
	CONSTRAINT slot_fk FOREIGN KEY(letter,day) REFERENCES slot(letter,day) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT course_fk FOREIGN KEY(course_id,division) REFERENCES course(course_id,division) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT dep_fk FOREIGN KEY(department_id) REFERENCES department(department_id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT room_fk FOREIGN KEY(room_number) REFERENCES room(room_number) ON DELETE CASCADE ON UPDATE CASCADE
);

-- CREATE TABLE ScheduledIn(
-- 	course_id VARCHAR(6) NOT NULL COMMENT 'course_id will be of length at most 6 (in case of minor courses), no default vaue being given since a course id will always be for a record',
-- 	division VARCHAR(3) NOT NULL DEFAULT 'NA' COMMENT 'division will be at most of length 3 (in case of III), default value of NA being given',
-- 	letter VARCHAR(2) NOT NULL COMMENT 'Letter can be of the form A, A1, hence varchar of length 2, no default value being assigned since it is to be used in primary key', 
-- 	day VARCHAR(9) NOT NULL COMMENT 'Day will have maximum length 9 (Wednesday), no default value assigned since it is to be used in primary key',
-- 	department_id VARCHAR(4) NOT NULL COMMENT 'department id will take at most 4 letters (BSBE), no default value provided since every course has a department id',
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
-- 


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
INSERT INTO Room(room_number, location) VALUES('BDES 2 STUDIO','Core-I');
INSERT INTO Room(room_number, location) VALUES('BDES 3 STUDIO','Core-I');




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
INSERT INTO Department(department_id , name) VALUES ('CRT','Centre for Rural Technology');
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





