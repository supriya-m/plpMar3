Create table userRole(userName varchar2(20) primary key,password varchar2(15),roleCode varchar2(10));

 create table businessSegment(bus_Seg_Id varchar2(10) primary key,bus_Seg_Seq number(3),bus_Seg_Name varchar2(30));

 create table accounts(accountNumber number(10) primary key,insuredName varchar2(30),insuredStreet varchar2(40),insuredCity varchar2(15),insuredState varchar2(15),
  insuredZip number(5),businessSegment varchar2(30),userName varchar2(20), 
  foreign key(userName) references userRole(userName));

 create table policy(policyNumber number(10) primary key,policyPremium decimal(11,3),accountNumber number(10), foreign key(accountNumber) references accounts(accountNumber));

 create table policyQuestions(pol_Ques_Id varchar2(10) primary key,pol_Ques_Seq number(3),bus_Seg_Id varchar2(30), foreign key(bus_Seg_Id) references businessSegment(bus_Seg_Id),
 pol_Ques_Desc varchar2(80),pol_Ques_Ans1 varchar2(30),pol_Ques_Ans1_weightage number(5),pol_Ques_Ans2 varchar2(30),pol_Ques_Ans2_weightage number(5),pol_Ques_Ans3 varchar2(30),
 pol_Ques_Ans3_weightage number(5));

 create table policyDetails(policyNumber number(10),foreign key(policyNumber) references policy(policyNumber),question_Id varchar2(15),
 foreign key(question_Id) references policyQuestions(pol_Ques_Id),answer varchar2(30));

create table insurer(policynumber number(10) references policy(policynumber), insureruname varchar2(20) references userrole(username));

insert into businessSegment values('BA01',1,'Business Auto');
insert into businessSegment values('R02',2,'Restaurant');

insert into businessSegment values('A03',3,'Apartment');

insert into businessSegment values('GM04',4,'General Merchant');

insert into policyQuestions values('RQ1', 1, 'R02', 'Restaurant Type', 'Only Dining', 200, 'Dining with Bar', 400, 'Dining with Bar&Entertainment', 600);
insert into policyQuestions values('RQ2', 2, 'R02', 'Restaurant SQ Ft', 'less than 1500 sq. ft', 200, 'from 1500 to 5000 sq. ft', 400, 'more than 5000', 600);
insert into policyQuestions values('RQ3', 3, 'R02', 'Number of Sprinklers', 'upto 20', 200, '21 to 40', 400, 'more than 40', 600);
insert into policyQuestions values('RQ4', 4, 'R02', 'No. of Cylinders in Kitchen', 'upto 5', 200, 'from 6 to 15', 400, 'more than 15', 600);
insert into policyQuestions values('RQ5', 5, 'R02', 'Fine Arts', '5000 to 15000', 200, '15000 to 30000', 400, 'more than 30000', 600);
insert into policyQuestions values('RQ6', 6, 'R02', 'Property Damage', 'upto 500000', 200, 'from 500000 to 1500000', 400, 'more than 1500000', 600);
insert into policyQuestions values('RQ7', 7, 'R02', 'Equipment Breakdown', 'upto 50000', 200, 'from 50000 to 200000', 400, 'more than 200000', 600);
insert into policyQuestions values('RQ8', 8, 'R02', 'Liability Coverage', '10000 to 15000', 200, '15001 to 30000', 400, 'more than 30000', 600);
insert into policyQuestions values('RQ9', 9, 'R02', 'Bodily Injury', 'upto 25000', 200, '25001 to 50000', 400, 'more than 50000', 600);

insert into PolicyQuestions values('BAQ4',4,'BA01','Daily Commute Distance','Less than 21',200,'21 to 50',400,'Greater than 50',600);
insert into PolicyQuestions values('BAQ5',5,'BA01','Service Center','Authorized',200,'Non Authorized',400,'',600);
insert into PolicyQuestions values('BAQ6',6,'BA01','Collision Coverage Unit','10000 to 30000',200,'30001 to 50000',400,'50001 to 10000',600);
insert into PolicyQuestions values('BAQ7',7,'BA01','Bodily Injury Limit','10000 to 30000',200,'30001 to 50000',400,'50001 to 10000',600);
insert into PolicyQuestions values('BAQ8',8,'BA01','Uninsured Motorist','10000 to 30000',200,'30001 to 50000',400,'50001 to 10000',600);
insert into PolicyQuestions values('BAQ9',9,'BA01','Unknown Hit or Theft Coverage','10000 to 30000',200,'30001 to 50000',400,'50001 to 10000',600);
insert into PolicyQuestions values('BAQ10',10,'BA01','Property and Liability','Below 10000',200,'10000 to 30000',400,'30001 to 60000',600);


insert into PolicyQuestions values('AQ1',201,'A03','Apartment Sq.Ft','upto 15000 sq.ft',200,'from 1500 to 5000',400,'more than 5000',600);
insert into PolicyQuestions values('AQ2',202,'A03','Number of Sprinklers','upto 5',200,'from 6 to 10',400,'more than 10',600);
insert into PolicyQuestions values('AQ3',203,'A03','Build Year','before 2000',200,'2000 to 2010',400,'after 2010',600);
insert into PolicyQuestions values('AQ4',204,'A03','Property Damage','upto 500000',200,'500001-1000000',400,'more than 1000000',600);
insert into PolicyQuestions values('AQ5',205,'A03','Bodily Injury Limit','50000-100000',200,'100001-300000',400,'300001-500000',600);
insert into PolicyQuestions values('AQ6',206,'A03','Number of floors','Less than 10',200,'10 to 30',400,'More than 30',600);
insert into PolicyQuestions values('AQ7',207,'A03','Number of Fire Exits','',200,'2 to 3',400,'More than 3',600);
insert into PolicyQuestions values('AQ8',208,'A03','Asset Theft Limit','up to 500000',200,'50000 to 100000',400,'100001 to 200000',600);


insert into PolicyQuestions values('GMQ1',1,'GM04','Business Type','General Store',200,'Hardware',400,'Clothing',600);
insert into PolicyQuestions values('GMQ2',2,'GM04','Asset Value','less than 1000000',200,'1000001 to 2500000',400,'more than 2500001',600);
insert into PolicyQuestions values('GMQ3',3,'GM04','Inflammable Objects','Yes',200,'Hardware',400,'Clothing',600);
insert into PolicyQuestions values('GMQ4',4,'GM04','Property Size','Less than 5000 sq ft',200,'5000 to 10000 ft',400,'More than 10000 sq ft',600);
insert into PolicyQuestions values('GMQ5',5,'GM04','Property Damage','Upto 500000',200,'500000 to 1000000',400,'1000000 to 1500000',600);
insert into PolicyQuestions values('GMQ6',6,'GM04','Bodily Injury','10000 to 30000',200,'30001 to 50000',400,'500001 to 10000',600);
insert into PolicyQuestions values('GMQ7',7,'GM04','Asset Theft Limit','upto 50000',200,'50000 to 100000',400,'100000 to 200000',600);
insert into PolicyQuestions values('GMQ8',8,'GM04','Liability Coverage','Below 10000',200,'10000 to 30000',400,'30001 to 60000',600);