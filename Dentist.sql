create database dentist;

use dentist;

create table contact (
contact_id INT not null,
email varchar(100),
mobile_number varchar (100),
home_number varchar (100),
other_number varchar (100),
Fax_number varchar (100),
primary key (contact_id)
);

Insert into contact (contact_id, email, mobile_number, home_number, other_number, Fax_number)
values 
(1, 'john@example.com', 1234567890, 9876543210, 1111111111, 5555555555),
(2, 'jane@example.com', 2345678901, 8765432109, 2222222222, 6666666666),
(3, 'bob@example.com', 3456789012, 7654321098, 3333333333, 7777777777),
(4, 'susan@example.com', 4567890123, 6543210987, 4444444444, 8888888888),
(5, 'joe@example.com', 5678901234, 5432109876, 5555555555, 9999999999),
(6, 'mary@example.com', 6789012345, 4321098765, 6666666666, 1111111111),
(7, 'steve@example.com', 7890123456, 3210987654, 7777777777, 2222222222),
(8, 'jim@example.com', 8901234567, 2109876543, 8888888888, 3333333333),
(9, 'anne@example.com', 9012345678, 1098765432, 9999999999, 4444444444),
(10, 'peter@example.com', 2345678901, 9876543210, 1111111111, 5555555555),
(11, 'kate@example.com', 3456789012, 8765432109, 2222222222, 6666666666),
(12, 'david@example.com', 4567890123, 7654321098, 3333333333, 7777777777),
(13, 'lisa@example.com', 5678901234, 6543210987, 4444444444, 8888888888),
(14, 'tim@example.com', 6789012345, 5432109876, 5555555555, 9999999999),
(15, 'sara@example.com', 7890123456, 4321098765, 6666666666, 1111111111),
(16, 'ben@example.com', 8901234567, 3210987654, 7777777777, 2222222222),
(17, 'emily@example.com', 9012345678, 2109876543, 8888888888, 3333333333),
(18, 'jack@example.com', 2345678901, 1098765432, 9999999999, 4444444444),
(19, 'hannah@example.com', 3456789012, 9876543210, 1111111111, 5555555555),
(20, 'michael@example.com', 4567890123, 8765432109, 2222222222, 6666666666),
(21, 'anna@example.com', 5678901234, 7654321098, 3333333333, 7777777777),
(22, 'kevin@example.com', 6789012345, 6543210987, 4444444444, 8888888888),
(23, 'jessica@example.com', 7890123456, 5432109876, 5555555555, 8888888888),
(24, 'steven@example.com', 8901234567, 4321098765, 6666666666, 1111111111),
(25, 'chris@example.com', 9012345678, 3210987654, 7777777777, 2222222222),
(26, 'ashley@example.com', 2345678901, 2109876543, 8888888888, 3333333333),
(27, 'jason@example.com', 3456789012, 1098765432, 9999999999, 4444444444),
(28, 'megan@example.com', 4567890123, 9876543210, 1111111111, 5555555555),
(29, 'nathan@example.com', 5678901234, 8765432109, 2222222222, 6666666666),
(30, 'olivia@example.com', 6789012345, 7654321098, 3333333333, 7777777777);


create table patients (
patient_id INT not null,
patient_firstname varchar(20) not null,
patient_lastname varchar (30) not null,
patient_status boolean not null,
contact_id INT not null,
primary key (patient_id),
CONSTRAINT fk_contact_id FOREIGN KEY (contact_id)
references contact(contact_id));

INSERT INTO patients (patient_id, patient_firstname, patient_lastname, patient_status, contact_id) 
VALUES
(1, 'John', 'Doe', true, 1),
(2, 'Jane', 'Smith', true, 2),
(3, 'Bob', 'Johnson', true, 3),
(4, 'Susan', 'Lee', false, 4),
(5, 'Joe', 'Davis', true, 5),
(6, 'Mary', 'Brown', true, 6),
(7, 'Steve', 'Garcia', true, 7),
(8, 'Jim', 'Wilson', true, 8),
(9, 'Anne', 'Taylor', false, 9),
(10, 'Peter', 'Hernandez', true, 10),
(11, 'Kate', 'Nguyen', true, 11),
(12, 'David', 'Miller', true, 12),
(13, 'Lisa', 'Jones', true, 13),
(14, 'Tim', 'Martin', false, 14),
(15, 'Sara', 'Anderson', true, 15),
(16, 'Ben', 'Wilson', true, 16),
(17, 'Emily', 'Gonzalez', true, 17),
(18, 'Jack', 'Walker', true, 18),
(19, 'Hannah', 'Taylor', false, 19),
(20, 'Michael', 'Moore', true, 20),
(21, 'Anna', 'Lee', true, 21),
(22, 'Kevin', 'Wright', true, 22),
(23, 'Jessica', 'Hall', true, 23),
(24, 'Steven', 'Perez', true, 24),
(25, 'Chris', 'Robinson', true, 25),
(26, 'Ashley', 'Young', true, 26),
(27, 'Jason', 'Allen', true, 27),
(28, 'Megan', 'King', false, 28),
(29, 'Nathan', 'Scott', true, 29),
(30, 'Olivia', 'Ward', true, 30);

  
  select * from patients;
  select * from contact;
  
  alter table patients
  add column age INT;
  
  update patients
  set age = ceiling(rand()*100);
  
  
  CREATE TABLE town (
  town_id INT NOT NULL,
  town_name VARCHAR(50) NOT NULL,
  PRIMARY KEY (town_id)
);

INSERT INTO town (town_id, town_name)
VALUES
  (1, 'Manchester'),
  (2, 'Bolton'),
  (3, 'Bury'),
  (4, 'Oldham'),
  (5, 'Rochdale'),
  (6, 'Salford'),
  (7, 'Stockport'),
  (8, 'Tameside'),
  (9, 'Trafford'),
  (10, 'Wigan'),
  (11, 'Altrincham'),
  (12, 'Ashton-under-Lyne'),
  (13, 'Cheadle'),
  (14, 'Droylsden');
  
  
CREATE TABLE address (
  address_id INT NOT NULL,
  patient_id INT NOT NULL,
  address_line1 VARCHAR(100) NOT NULL,
  address_line2 VARCHAR(100),
  town_id INT NOT NULL,
  postcode VARCHAR(10) NOT NULL,
  PRIMARY KEY (address_id),
  FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
  FOREIGN KEY (town_id) REFERENCES town(town_id)
);


INSERT INTO address (address_id, patient_id, address_line1, address_line2, town_id, postcode)
VALUES
  (1, 1, '1 Main Street', '', 1, 'M1 1AA'),
  (2, 2, '2 Park Avenue', '', 2, 'BL1 2BB'),
  (3, 3, '3 Station Road', '', 3, 'BL9 3CC'),
  (4, 4, '4 High Street', '', 4, 'OL1 4DD'),
  (5, 5, '5 Market Street', '', 5, 'OL12 6EE'),
  (6, 6, '6 Victoria Road', '', 6, 'M6 8GF'),
  (7, 7, '7 London Road', '', 7, 'SK1 3JP'),
  (8, 8, '8 Ashton Road', '', 8, 'SK16 4RT'),
  (9, 9, '9 Stretford Road', '', 9, 'M15 4GA'),
  (10, 10, '10 Wigan Road', '', 10, 'WN1 3BT'),
  (11, 11, '11 Market Street', '', 1, 'M1 2EA'),
  (12, 12, '12 Oldham Road', '', 4, 'OL7 9AB'),
  (13, 13, '13 Cheadle Road', '', 13, 'SK8 1DW'),
  (14, 14, '14 Market Street', '', 5, 'OL16 1HB'),
  (15, 15, '15 Oxford Road', '', 1, 'M13 9PL'),
  (16, 16, '16 Manchester Road', '', 2, 'BL3 2RA'),
  (17, 17, '17 Bury New Road', '', 3, 'BL9 7HT'),
  (18, 18, '18 Huddersfield Road', '', 4, 'OL4 2AE'),
  (19, 19, '19 Rochdale Road', '', 5, 'OL11 3AF'),
  (20, 20, '20 Liverpool Road', '', 6, 'M5 4TH'),
  (21, 21, '21 Wellington Road', '', 7, 'SK4 4AG'),
  (22, 22, '22 Market Street', '', 8, 'SK14 4LS'),
  (23, 23, '23 Chester Road', '', 9, 'M32 0PT'),
(24, 24, '24 Stretford Mall', '', 9, 'M32 9BD'),
(25, 25, '25 Deansgate', '', 1, 'M3 4EN'),
(26, 26, '26 Blackburn Road', '', 2, 'BL7 9SN'),
(27, 27, '27 Wood Street', '', 3, 'BL8 1AA'),
(28, 28, '28 Union Street', '', 4, 'OL8 1DW'),
(29, 29, '29 Market Street', '', 5, 'OL15 8AA'),
(30, 30, '30 Warrington Road', '', 10, 'WN2 3AA');

select * from address;

create table dentists (
dentist_id INT not null,
first_name varchar (30) not null,
last_name varchar (30) not null,
pt_number INT not null,
nhs boolean not null,
private boolean not null,
primary key (dentist_id)
);

insert into dentists (dentist_id, first_name, last_name, pt_number, nhs, private)
VALUES
(101, 'Reggy', 'Gorgina', 10, true, true),
(102, 'Mickiette', 'Mouskamilian', 10, true, false),
(103, 'Quinn', 'Terantina', 10, true, true);

select * from dentists;

update dentists
set private = true
where private = false;

Create table patient_practice (
patient_id INT not null,
 nhs boolean not null, 
 private boolean not null, 
 dentist_id INT not null, 
 date_registration date not null,
 primary key (patient_id, dentist_id),
 foreign key (patient_id) REFERENCES patients(patient_id),
 foreign key (dentist_id) REFERENCES dentists(dentist_id));
 
 -- i imported the data from a csv file I created 

select * from patient_practice;

create table transactions 
(transaction_id INT not null,
 patient_id INT not null,
 nhs boolean not null, 
 private boolean not null, 
 dentist_id INT not null, 
 date_transaction date not null,
 total_transaction decimal (6,2),
 primary key (transaction_id),
 foreign key (patient_id) REFERENCES patients(patient_id),
 foreign key (dentist_id) REFERENCES dentists(dentist_id));

 -- i imported the data from a csv file I created 
 
 select * from transactions;
 select * from town;
 
 
 -- perform a join to show the count of patients they have under the age of 18 living in manchester, trafford and salford-child smile audit
 
 Select  t.town_id, t.town_name, count(p.age) as no_under_18
 from patients p
 join address a using (patient_id)
 join town t using (town_id)
 where p.age <=18
 and town_id in (1, 6, 9)
 group by t.town_name, t.town_id;
 
 
 select count(p.age)
 from patients p
 join address using (patient_id)
 join town using (town_id)
 where p.age <=18
 and town_id = 6;
 
 -- find the first name, last name of every dentist that has earned over £100 between 13/02 and 28/02

select d.first_name, d.last_name
from dentists d
where dentist_id in (select dentist_id
from transactions where date_transaction between '2023-02-13' and '2023-02-28'
group by dentist_id 
having SUM(total_transaction) > 100);


select * from transactions;

/* create a function to show if a person is a child, an adult or an elderly citizen and if nhs treatment is free for them*/

Delimiter //
create function agestatus(age INT)
returns varchar (40)
Deterministic
Begin 
Declare ageofpatients varchar (100);
	If age <= 18 then
		set ageofpatients = 'child; free NHS care';
	Elseif age > 18 and age < 70 then
		set ageofpatients = 'Adult; paid for NHS care';
	Elseif age >= 70 then
		set ageofpatients = 'Elderly; free NHS care';
	End if;
	Return(ageofpatients);
End //
Delimiter ;

select patient_firstname, patient_lastname, age, agestatus(age) as Free_NHS_care
from patients
where patient_firstname = 'Mary';

-- creation of a procedure that will add a new patient and randomly assign them to a dentist

Delimiter //
Create procedure new_patient(IN patient_id INT, IN patient_firstname varchar(20), IN patient_lastname varchar(30), IN age INT, IN private boolean, IN dentist_id INT)
Begin 
insert into contact (contact_id) values (patient_id);
Insert into patients (patient_id, patient_firstname, patient_lastname, patient_status, contact_id, age)
Values (patient_id, patient_firstname, patient_lastname, true, patient_id, age);
insert into patient_practice (patient_id, nhs, private, dentist_id , date_registration )
values (patient_id, true, private, dentist_id , CURRENT_DATE());
end //
delimiter ;

select* from patients;
select* from patient_practice;
select* from contact;

drop procedure new_patient;

delete from patient_practice where patient_id = 31;
delete from patients where patient_id = 31;

call new_patient(31, 'Marko', 'Antonic', 20, false, 103);

alter table contact
modify contact_id INT;

-- create a procedure to add values into contact table
/* when i first created this procedure, it led to all rows being updated. the original syntax was create procedure new_email (IN contact_id INT, IN email varchar(50)).
This meant that when the procedure was run contact_id was being compared to itself because the variable was called the same as the collummn so every row 
fufilled the condition. I gave the variable a different name and this led to the alteration of only the specified collumn.*/

delimiter //
create procedure new_email (IN id INT, IN email varchar(50))
begin
update contact set email = email where contact_id = id;
end //
delimiter ;

call new_email(31,'mark33oant5555o20@example.com');

select* from contact;

alter table patients
add CONSTRAINT fk_contact_id FOREIGN KEY (contact_id)
references contact(contact_id);

-- procedure to update mobile_number
delimiter //
create procedure new_mobile (IN id INT, IN mobile_number varchar(100))
begin
update contact set mobile_number = mobile_number where contact_id = id;
end //
delimiter ;

-- procedure to update home_number
delimiter //
create procedure new_home (IN id INT, IN home_number varchar(100))
begin
update contact set home_number = home_number where contact_id = id;
end //
delimiter ;


-- procedure to add new_patient's address
select * from address;

delimiter //
create procedure new_address(address_id INT, patient_id INT, address_line1 varchar (100), address_line2 varchar (100), town_id INT, postcode varchar (10))
begin
insert into address (address_id, patient_id, address_line1, address_line2, town_id, postcode)
values (address_id, patient_id, address_line1, address_line2, town_id, postcode);
end //
delimiter ;

call new_address(31, 31, '62 Cross Street', '', 1, 'M2 4JQ');
