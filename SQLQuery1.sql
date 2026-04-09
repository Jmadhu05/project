

/* CRUD create read update delete*/

SELECT * FROM CENTER


/* table me data insert krane ke liye use hota hai */

INSERT INTO CENTER
VALUES (1,'Aarav','Telly','811575274',2154),
       (2,'Gorav','Web developer','510036548',2185),
       (3,'Anuj','Digital marketing','587496554',2365)

/* aagar is null likha to column ka name aa jayega likha hua or 'is not null' likha to data ke sath show krega*/

select NAME 
from CENTER
where NAME IS NOT NULL


/* UPDATE TABLE KO CHANGE KRNE KE LIYE USE KRTE HAI AAGR WHERE CONDITION NHI USE KRE TO JAHA COLUMN KA NAM SAME HOGA WAHA CHANGE HO JAYEGA*/

UPDATE CENTER 
SET NAME='Vineet'
WHERE ID =1; ho

UPDATE CENTER 
SET NAME ='Niteen'

INSERT INTO CENTER
VALUES (4,'Anuj','Excle','85749632',2589)


UPDATE CENTER
SET NAME ='Gorav'
WHERE ID =3


/* table ke data ko delete krne ke liye use hota hai  if where condition use nhi kre to total table delete ho jayegi*/

DELETE FROM CENTER
WHERE NAME='Niteen'

/* TOTAL TABLE KO HI DELETE KR DETI HAI JBKI DELETE SE HAM PERTICULAR DATA KO DELETE KR SKTE HAI */

DROP TABLE CENTER




/* CRUD ()*/

/* CREATE TABLE */

CREATE TABLE  EXAM
(
 ID INT PRIMARY KEY,
 NAME VARCHAR(20),
 SUBJECT VARCHAR(20),
 RESULT VARCHAR(10),
 MARKS INT
)

/* READ TABLE */

SELECT * FROM EXAM 

/*  UPDATE TABLE (INSERT INTO)   AAGAR UPDATE ME WHERE CONDITION NHI DENGE TO PURI TABLE KA DATA UPDATE HO JAYEGA KISI PERTICULAR DATA KO UPDATE KRNA HO
   WHERE CONDITON DO */
INSERT INTO EXAM 
VALUES (1,'Aarav','Math','Pass',75),
       (2,'Gorav','English','Pass',80),
       (3,'Niteen','Physics','Fail',32),
       (4,'Vihan','Chemistry','Pass',78),
       (5,'Riya','Physics','Pass',90.5)


UPDATE EXAM 
SET NAME='Veehan'
WHERE id=4

/* DELETE TABLE AAGR WHERE CONDITION USE KRE TO PERTICULAR DATA DELETE HOGA NHI TO PURI TABLE HI DELETE HO JAYEGI*/

DELETE EXAM 
WHERE NAME='RIYA'

SELECT TOP  50 PERCENT * FROM EXAM
SELECT * FROM EXAM 

SELECT TOP 3 * FROM EXAM 
WHERE RESULT='PASS'


INSERT INTO EXAM 
VALUES (5,'Rinku','Math','Pass',63),
       (6,'Vishnu','English','Pass',89),
       (7,'Raghav','Physics','Fail',32),
       (8,'Tittu','Chemistry','Pass',98)

SELECT TOP 3 *  FROM EXAM 
WHERE  RESULT='PASS'
ORDER BY MARKS DESC

SELECT * FROM EXAM 

SELECT MIN(MARKS)
FROM EXAM

SELECT MIN(MARKS)  AS SMALLESTNUMBER
FROM EXAM
GROUP BY NAME

SELECT * FROM EXAM 


INSERT INTO EXAM 
VALUES (9,'Anup','Math','Fail',20)


SELECT COUNT(DISTINCT MARKS) AS 'HIGHEST MARKS'
FROM EXAM
WHERE MARKS<70




-- store procedure 
/* database ke andar likha hua sql code hota hai jo store jata hai or baad me bar-bar us kiya jata hai*/

select * from EXAM
create procedure result 
as 
select * from exam 
go;

exec result

create procedure marks @result nvarchar(30),@marks nvarchar(20)
as
select * from exam where result=@result and marks=@marks
go;

exec marks @result='fail',@marks='32'

create procedure dat @a varchar(50) ,@num int
as 
select * from exam where name=@a or MARKS=@num

exec dat @a='Anup',@num=80


create table tye
(
 ID int primary key,
 name varchar(20) not null ,
 surname varchar(30),
 address varchar(40),
 mobile_no varchar(50)
)

insert into  tye
values(1,'abhi','nav','neem ka thana',52419255)





select * from tye

alter table tye
add payment varchar(20);

ALTER TABLE tye 
drop column surname

EXEC sp_rename 'tye.name','Student','column';

--change column datatype🧛‍♀️
ALTER TABLE tye
ALTER COLUMN payment int NOT NULL;

ALTER TABLE tye
ALTER COLUMN mobile_no int NOT NULL;

ALTER TABLE tye
ADD   rooll_number  int  NOT NULL,  llast_name int NOT NULL ; 

ALTER TABLE tye 
ADD CONSTRAINT UC_tye UNIQUE  (roll_number,last_name)

