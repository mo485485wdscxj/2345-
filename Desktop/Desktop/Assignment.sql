create table Doctorss(
Doc_id int identity  Primary key,
Name1 varchar(50),
Addresss varchar(50),
Phone_number int ,
Specification Varchar (1000),
salary int
);
insert into  Doctorss (Name1,Addresss,Phone_number,Specification,salary )
values 
 
('Moatz','cairo',121545,'Dentist',10000),
('Abrar','Demiat',534565456,'Childerin',10000),
('Dareen','6-October',8786544,'Surguen',12000),
('Ahmed','Menofia',647543121,'Childerin',8000),
('Mohamed','Suiz',35226717,'Dentist',5000),
('Hamed','6-October',30990173,'Hear',11000),
('Abdelrahman','Demiat',43618917,'Surguen',12000),
('Saad','Suiz',35618119,'Childerin',16000),
('Amr','Mansora',23225622,'Dentist',15000),
('Adam','800 fadan',98873562,'Hear',18000),
('Adel','Nasr city',1431322,'Surguen',14000),
('Sara','Shebin Elkom',3633276,'Childerin',9000),
('Sagda','Borg El Arab',7378919,'Dentist',7000),
('Sama','Marsa Matrouh',32273282,'Hear',4000),
('Nada','Alx',7336127,'Surguen',9000),
('Manal','Alx',23415678,'Childerin',8000),
('Yaseen','Borg El Arab',53411661,'D entist',5000),
('Adham','Borg El Arab',86578212,'Hear',11000),
('Omar','Marsa Matrouh',6565211,'Surguen',9000),
('Huda','Nasr city',4344212,'Childerin',8000);
select * from Doctorss ;

create table Rooms(
Room_Number int  primary key,
Type1 varchar(50),
Statuss varchar(50),
);

insert into Rooms(Room_Number,Type1,Statuss)
values
(100,'single','empty'),
(102, 'Double','Busy'),
(103, 'single','Busy'),
(104, 'Double','Busy'),
(105, 'Double','Busy'),
(106, 'single','empty'),
(107, 'single','empty'),
(108, 'single','Busy'),
(109, 'Double','Busy'),
(110, 'Double','empty'),
(111, 'single','Busy'),
(112, 'Double','Busy'),
(113, 'single','empty'),
(114, 'Double','Busy'),
(115, 'Double','Busy'),
(116, 'single','Busy'),
(117, 'Double','Busy'),
(118, 'single','empty'),
(119, 'Double','Busy'),
(120, 'Double','Busy');
select*from Rooms;


create table Patients(
	id  int identity primary key,
	Fname varchar(50),
	Lname varchar(50),
	Age int ,
	Gender varchar(50),
	Doc_id int,
	Room_Number int ,
	Nurse_id  int ,
	med_code int ,
	foreign key(Room_Number) references Rooms(Room_Number)
);
insert into Patients(Fname,Lname,Age,Gender,Doc_id,Room_Number,Nurse_id ,med_code)
values
('nada','labib',16,'f',1,100,200,300),
('sama','amr',16,'f',2,117,201,301),
('jana','mohamed',16,'f',3,102,202,302),
('Dareen','Hany',16,'f',4,103,203,303),
('Yaseen','labib',9,'M',6,104,206,306),
('Omar','mohamed',15,'M',8,105,208,308),
('rwan','reda',16,'f',9,106,209,309),
('Adham','mohamed',15,'M',10,107,210,310),
('mariam','medhat',15,'f',11,108,211,311),
('Abrar','mohamed',15,'M',12,109,212,312),
('Rody','mohamed',20,'f',13,110,213,313),
('azz','hany',18,'M',15,111,215,315),
('Adham','hosnay',16,'M',16,112,216,316),
('yara','yasser',24,'f',17,113,217,317),
('ahmed','mohamed',15,'M',18,114,218,318),
('amar','yasser',16,'M',19,115,219,319),
('hassen','mohamed',16,'M',20,116,220,320);
select*from Patients;
---------------------------------------
Create table Doctor_Log(
User_namee varchar(100) primary key,
Passwordd varchar(100),
);
insert into Doctor_Log(User_namee , Passwordd)
values
('Hassan' , 'A33'),
('Ali' , 'B22');
--------------------------------
Create table patients_log(
user_name_pat varchar(100) primary key,
password_pat varchar(100),
);
insert into Patients_log(user_name_pat , password_pat)
values
('Youssef' , 'c22'),
('Mohamed' , 'm22');
-----------------------------
create table Medicine(
	Med_code int  primary key,
	Med_name varchar(50),
	Price int ,
	Med_Country varchar(50),
	Exp_Date int,
);
INSERT INTO Medicine (Med_code, Med_name, Price, Med_Country, Exp_Date) VALUES
(1, 'Aspirin', 10, 'USA', 20231231),
(2, 'Paracetamol', 15, 'Germany', 20231231),
(3, 'Ibuprofen', 20, 'France', 20231231),
(4, 'Amoxicillin', 25, 'Canada', 20231231),
(5, 'Ciprofloxacin', 30, 'Australia', 20231231),
(6, 'Lisinopril', 35, 'UK', 20231231),
(7, 'Atorvastatin', 40, 'Japan', 20231231),
(8, 'Metformin', 45, 'India', 20231231),
(9, 'Omeprazole', 50, 'Italy', 20231231),
(10, 'Sertraline', 55, 'Brazil', 20231231),
(11, 'Montelukast', 60, 'Mexico', 20231231),
(12, 'Hydrochlorothiazide', 65, 'South Africa', 20231231),
(13, 'Simvastatin', 70, 'Spain', 20231231),
(14, 'Escitalopram', 75, 'Russia', 20231231),
(15, 'Warfarin', 80, 'China', 20231231),
(16, 'Clopidogrel', 85, 'South Korea', 20231231),
(17, 'Duloxetine', 90, 'Argentina', 20231231),
(18, 'Levothyroxine', 95, 'Turkey', 20231231),
(19, 'Pregabalin', 100, 'Saudi Arabia', 20231231),
(20, 'Mirtazapine', 105, 'Sweden', 20231231);


create table Nurse(
ID int  primary key,
Names varchar(50),
Position   varchar(50),
salary int ,
Room_id int,
foreign key(Room_id) references Rooms(Room_Number),
);

insert into Nurse(ID ,Names,Position,salary,Room_id)
values
(1,'Moatz','Dentist',10000,100),
(2,'Abrar','Childerin',10000,102),
(3,'Dareen','Surguen',12000,103),
(4,'Ahmed','Childerin',8000,104),
(5,'Mohamed','Dentist',5000,105),
(6,'Hamed','Hear',11000,102),
(7,'Abdelrahman','Surguen',12000,109),
(8,'Saad','Childerin',16000,107),
(9,'Amr','Dentist',15000,111),
(10,'Adam','Hear',18000,117),
(11,'Adel','Surguen',14000,119),
(12,'Sara','Childerin',9000,118),
(13,'Sagda','Dentist',7000,113),
(14,'Sama','Hear',4000,111),
(15,'Nada','Surguen',9000,109),
(16,'Manal','Childerin',8000,109),
(17,'Yaseen','Dentist',5000,117),
(18,'Adham','Hear',11000,106),
(19,'Omar','Surguen',9000,109),
(20,'Huda','Childerin',8000,111);
--------------------------------------------------------------------------------------------------------------------------------------
Select  Room_Number , Statuss   From Rooms
Where Statuss = 'empty' 
------------------------------------------
Select COUNT(Statuss) From Rooms
Where Statuss = 'Busy' 
----------------------------------------
Select Fname, Lname from Patients
Where Lname = 'mohamed'
------------------------------------------
Update Doctorss
set Name1 = 'Ahmed'
Where Addresss = 'cairo' 
Select *from Doctorss
-------------------------
alter table  Doctorss
add  Doc_phone  varchar(50)      
select * from Doctorss;
-------------------------------------
SELECT Fname, Lname ,  Sum (Age)as Age
FROM Patients
GROUP BY Fname, Lname;
-------------------------------
Select Count (*) as totall  , Gender from Patients
Group by Gender 
----------------------------------------
Select Isnull (null , 22)As result
---------------------------------------------
--Statment1
--Find doctors with Surguen Specification
select * from Doctorss where Specification='Surguen';
-------------------------------------------------------
--Statment2
--Find doctors with highest salary
select max(salary ) from Doctorss;
---------------------------------------------------
--Statment3
--count doctors with Surguen Specification
select count(Doc_id) from Doctorss where Specification='Surguen';
--------------------------------------------------------------------
SELECT r.Room_Number, p.ssn, p.fname, p.Lname
from Rooms r 
INNER JOIN Patients  p
ON r.Room_Number = p.Room_Number;
-------------------------------------------------------------
SELECT Fname, Lname ,  sum (Age)as Age
FROM Patients
GROUP BY Fname, Lname;

-------------------------------------------------------
SELECT DISTINCT Statuss
FROM Rooms;
----------------------------------------
SELECT Room_Number, Count(Doc_id) as TotalDoc
FROM Patients
GROUP BY Room_Number
Having Count(Doc_id)<2 
------------------------------------------------
SELECT Name1, salary
FROM Doctorss
ORDER BY salary DESC;
-----------------------------------------------
Select min (Salary) from  Doctorss
-----------------------------------------------
Select Avg (Salary) from  Doctorss 
-----------------------------------------
Select Max (Salary) from  Doctorss
--------------------------------------
select Name1 
from Doctorss
where Name1         
like'%H%'
------------------------
select Name1 
from Doctorss
where Name1         
like'%A'
---------------------------
select Name1 
from Doctorss
where Name1         
like'H%'
--------------------------
Select Sum(Salary) 
from Doctorss
---------------------------
 select Name1 as 'Namee of doctor' ,salary
 from Doctorss 
 where Salary between 4000 and 7000
 -----------------------------------------
 Select Fname , Lname , Room_Number
 from Patients
 where Room_Number In (100,111, 102)
 -------------------------------------
 Select COUNT(Room_Number)
 From Rooms 
 ---------------------------
 Select Names from Nurse
 Where Position = 'Dentist'
 -------------------------------
 Select Med_name ,  Price from Medicine
 Where Price>20
 --------------------------------------------