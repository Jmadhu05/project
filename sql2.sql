/*

create table PROJECT
(
  ID INT PRIMARY KEY, 
  NAME VARCHAR(20),
  SUBJECT VARCHAR(20),
  TITLE VARCHAR(20),
  ROLL_NO INT

)

SELECT * FROM PROJECT

INSERT INTO  PROJECT 
VALUES (1,'Amit','History','Constitute of india',2145),
       (2,'Niraj','Polity','Constitute of india',2563),
       (3,'Jitender','Hindi','Kavy',5461),
       (4,'Abhishek','English','Story',5896)

INSERT INTO PROJECT 
VALUES (5,'Tilak','English','Story of Chemistry',6985),
       (6,'Amit','Hindi','Constitute of india',8596),
       (7,'Amit','Geography','Constitute of india',8856)



SELECT * FROM PROJECT

select * from project 
where name like 'T_l_k'

select * from project
 where name like 'N_r%'

select * from project 
where name like '[tlk]%'

select * from PROJECT
where name like '[a-j]%'


select * from project
where ROLL_NO in(2145,5236)

select * from project 
where id between 1 and 5
and ROLL_NO in (2145,2563,8856)

select * from project 
where id not between 1 and 5
*/



CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO Departments (dept_id, dept_name, location) VALUES
(1, 'HR', 'New York'),
(2, 'IT', 'San Francisco'),
(3, 'Finance', 'Chicago'),
(4, 'Marketing', 'Boston');

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    age INT,
    dept_id INT
);

INSERT INTO Employees (emp_id, emp_name, age, dept_id) VALUES
(101, 'Raj', 30, 2),
(102, 'Anjali', 25, 1),
(103, 'Sunil', 28, 3),
(104, 'Priya', 32, NULL),
(105, 'Karan', 29, 2);


select * from Employees
select * from Departments

select  e.emp_name,d.location,e.dept_id,d.dept_name
from Employees as E inner join Departments as D 
on e.dept_id=d.dept_id

select  e.emp_name,d.location,e.dept_id,d.dept_name
from Employees as E right join Departments as D 
on e.dept_id=d.dept_id

select  e.emp_name,d.location,e.dept_id,d.dept_name
from Employees as E left join Departments as D 
on e.dept_id=d.dept_id

select  e.emp_name,d.location,e.dept_id,d.dept_name
from Employees as E full outer join Departments as D 
on e.dept_id=d.dept_id

select * from sales_2024
select * from sales_2025

/* union row ko vertically combine krta hai jabki join tables ko horizontally common column 
ke basic pr combine krta hai , union tab use hota hai jb same structure ka data append krna ho 
or join tb jb related data ko combine krna ho */

/* union = row ko jodta hai , upr niche direction , common column jaruri nhi , table ka relation nhi, same type ka data use,
join= column ko jodta hai, side by side , common column jaruri , relation hona jaruri, related data ho tb use krte hai*/



/* union me duplicate values add nhi hoti hai same data ko ek group me add kr deta hai*/
select region from sales_2024
union 
select region from sales_2025

/* union all me duplicate values repeat hoti hai or ye fast hota hai  union ki tulna me */
select product from sales_2024
union all
select product from sales_2025


/* tempory name de skte hai or aalg aalg tble ke data ko ek sath dekh skte hai*/
select 'Customer' as type, salesperson, amount 
from sales_2024
union
select 'Supplier' ,salesperson,amount 
from sales_2025

select salesperson ,amount from sales_2024
where amount >50000
union 
select salesperson ,amount from sales_2025
where amount >50000

/* group by ka main purpose rows ko logical groups me bantana taki  hame unhe summarize kr ske */

select salesperson ,count(product) as 'product  '
from sales_2024
group by salesperson 
 

select distinct salesperson 
from sales_2024
where amount >50000

select salesperson ,sum(amount) as 'Total amount'
from sales_2024
group by salesperson 

select region ,count(salesperson) as 'Sales record'
from sales_2024
group by region 

select region ,sum(amount) as 'Total amount'
from sales_2024
group by region 
having sum(amount)>100000

select region ,product ,avg(amount) as 'Average amount'
from sales_2024
group by region, product 

select region ,max(amount) as 'Highest amount'
from sales_2024
group by region

select product,count( distinct salesperson) as 'Unique salesperson'
from sales_2024
group by product 

select region ,count(product) as 'Sales record'
from sales_2024
group by region 
having count(product)>2

select salesperson ,avg(amount)
from sales_2024

select region ,sum(amount) as 'Total amount'
from sales_2024
where product='laptop'
group by region

select * from sales_2024
select salesperson ,avg(amount)
from sales_2024
group by salesperson

select  top 2 salesperson,sum(amount) as 'Total sale'
from sales_2024
group by salesperson
order by sum(amount) desc 

select region,product ,count(amount) as 'Count '
from sales_2024
group by region ,product 

select product ,avg(amount) 
from sales_2024
where amount>40000
group by product

/*Regions with exactly 2 unique salespersons*/
select region 
from sales_2024
group by region
having count(distinct  salesperson )=2


/* subquery  query ke andr doosri query jo phle excute hoti hai fir outer query uska result use krti hai */
/* salesperson ko show kregi jinki sale 50000 se jyada hai*/

select salesperson,amount 
from sales_2024
where region IN (
      select region from sales_2024 
      where amount>50000
)

/* ye query sbse bada sale return kregi 🔥🔥*/

select salesperson,amount
from sales_2024
where amount=(select max(amount) from sales_2024)


select salesperson , region, amount
from sales_2024
where region ='East'


select region,sum(amount) as 'Total sale' 
from sales_2024
group by region
having sum(amount)>10000

select salesperson ,amount
from sales_2024
where amount=(select max(amount) from sales_2024)

select salesperson ,amount
from sales_2024
where amount >(select avg(amount) from sales_2024)

select * 
from sales_2024
where region in (select region from sales_2024 where amount>60000)


select region , sale
from (
   select region , max(amount) as sale
   from sales_2024

)

select salesperson 
from sales_2024
where  salesperson in  (
          select salesperson
          from sales_2024
          where product ='laptop'
          
)

select region 
from sales_2024


/* EXISTS ek sql operator hai jo check krta hai ki table me record hai ya nhi aagr hai to TRUE nhi hai to FALSE
difference EXISTS fast hota hai large data ke liye ache row by row check & IN  todha slow ho skta hai 
small data ke liye ok phle list banata hai ☃☃ */


select * from customers
select * from payments

select * 
from customers  c
WHERE EXISTS (
       select 1 
       from payments  p
       where p.customer_id = c.customer_id
);

select * 
from customers c
WHERE  NOT EXISTS (
    select 1
    from payments p 
    where p.customer_id = c.customer_id
);

select * from customers c
WHERE EXISTS (
    select 1 
    from payments p 
    where p.customer_id = c.customer_id    
    AND amount>1000
)

/* sirf un customers ke  nam nikalo jinhone 2 se jyada payment ki hai */
select * 
from customers c 
WHERE EXISTS (
   select 1
   from payments p 
   where p.customer_id = c.customer_id
   group by p.customer_id
   having count(*)>=2
)

--any all operators
/*
  any return if any of the subquery values meet the condition 
  all return true if all of the subquery values meet the condition 
*/

select * from payments
where amount>any(
    select amount from payments
    where customer_id=2
);

select * from payments
where amount>all(
   select amount from payments
   where customer_id=2
)

select * from payments
where amount<any(
   select amount from payments
   where customer_id=4
)
select * from payments

select * from payments
where amount >any(
 select amount from payments
 where customer_id=1
)

select * from payments
where amount>(
  select min(amount)
  from payments
  where customer_id=2
)
select * from payments
where amount>(
  select max(amount)
  from payments
  where customer_id=2
)

--payment jinki amount 1000 se jyada aur cust_id=2 ke kise paymt se kam ya barbr ho
select * from payments
where amount>1000 and amount<=any(
   select amount from payments
   where customer_id=2
)


--payment jinki amount cust_id=2 ke max amount se choti ho 
select * from payments
where amount<(
 select max(amount) from payments
 where customer_id=2
)

/* 
  different in and any dono similar hote hai jab equality check krni ho in/any(select amount from table where cus_id =2)
  dono same output dete hai(102,103) frk any zyaada fkexible hai operators use kr skte hai but in sirf
  equality ke liye hai (in shorthant for =any ,but =any works with other comparison operators too)
*/

--payments jinki amount cus_id=2 ke min se badi or 2000 se choti
select * from payments
where amount<2000 and amount>(
  select min(amount)
  from payments
  where customer_id=2
)

--payments jinki amount cus_id=2 ke  sabhi payments se  bdi ho  ya 2000  ho 
select * from payments
where amount=2000  or amount>all(
  select amount
  from payments
  where customer_id=2
)

--payment jinki amount cust_id=2 ke max se choti aur cust_id=1 ke kisi payment se bdi ho 
select * from payments
where amount<(
   select max(amount) from payments
   where customer_id=2
)
AND  amount>any(
  select amount from payments
  where customer_id=1

)

-- 🎲🎲select into  ka use ek table se data nikaal ke naye table banane ka liye ✂✂

--amount 1000 se jyada wale payment
select * 
into highpayment
from payments
where amount>1000

select * from highpayment

--sirf payment,amount ka new table
select payment_id,amount
into customer
from payments

select * from customer


--customer_id=2 ke sare payment ka new table
select *
into customer2
from payments
where customer_id=2

select * from customer2

--har customer ka total amount nikal ke nya table

select customer_id, sum(amount) as total 
into customertotalpayment
from payments
group by customer_id

select * from customertotalpayment

--jinka payment 500 2000 ke beech hai 
select * 
into midrangepayment
from payments
where amount between 500 and 2000

select * from midrangepayment

--1 se jyada payment ki hai unka total amount ke sath new tble
select customer_id,sum(amount) as amountt
into repeatcustomer
from payments
group by customer_id
having count(payment_id)>1

select * from repeatcustomer

--unique customer 
select distinct customer_id
into uniquecustomer
from payments
select * from uniquecustomer

--maximum amount wale payment ka nya table banao
select * 
into maxpayment
from payments
where amount=(select max(amount) from payments)
select * from maxpayment

--same payments jaise table but empty
select * 
into paymentbackup
from payments
where 1=0


select * from paymentbackup

---- insert into  select :- sql ka command hota hai jiska use ek table se data uthakar dusre table me insert krne ke liye kiya jata hai bina manually values likhe 

-- Q1 payment_backup table me sara data insert kro 
-- phle table create krni  pdegi tbhi data insert hoga 

create table newtable 
(
  payment_id int ,
  customer_id int,
  amount int
)

insert into newtable
select * from payments

drop table  newtable
select * from newtable

-- customer_id or amount ko insert kro 
insert into newtable (customer_id, amount)
select customer_id,amount
from payments

--sirf wahi payments insert karo jinka amount>1000 ho 
insert into newtable 
select * from payments
where amount>1000

--sirf customer_id=2 ke payment ko  insert kro
insert into newtable
select * from payments
where customer_id=2

--sirf wahi payment insert kro jinka amount 500 or 1500 ke beech ho 
insert into newtable 
select * from payments
where amount between 500 and 1500

--high value payment table me data insert karo jaha amount>=1500
insert into newtable
select * from payments
where amount>=1500

--har customer ka total amount insert kro 
insert into  newtable (customer_id , amount  )
select customer_id,sum(amount)  
from payments
group by customer_id

--har customer ke kitne payments  hai wo insert kro 
insert into newtable (customer_id , amount ) 
select  customer_id ,count(*)  --* esliye use kiya taki koi null value ho to koi payment chhute na 
from payments
group by customer_id

--sirf un customer ka total insert karo jinka totalamount >2000
insert into newtable (customer_id,amount)
select customer_id ,sum(amount) from payments 
group by customer_id 
having sum(amount)>2000 


--case♣♣♣🔊🔊🔊  
/* 
 sql me case conditional expression hai jo row by row basis pe value ko check krke result return karta hai 
 ye if-else ki tarah kaam krta hai lekin select,where,order-by jaise statements me use hota hai 
*/

--payment category nikalna hai 
SELECT 
    customer_id,amount,
CASE
        WHEN amount >= 1000 THEN 'High'
        WHEN amount >= 500 THEN 'Medium'
        ELSE 'Low'
END AS payment_category
FROM payments;

--customer_id ke basis par message
select 
      payment_id,customer_id,amount,
CASE 
       WHEN customer_id=1 THEN 'first customer'
       WHEN customer_id=2 THEN 'repeat customer'
       ELSE 'new customer'

END AS customer_status
from payments

--amount<1000-smallpayment, amount>=largepayment 
SELECT 
   payment_id ,customer_id, amount,
CASE
    WHEN amount<1000 THEN 'small amount'
    WHEN amount>=1000 THEN 'large amount'

END AS paymentstatus
from payments

--case ke sath total amount per customer nikalo 
select 
      customer_id,sum(amount) as total_amount,
CASE
   WHEN sum(amount)<1000 THEN 'low spender'
   WHEN sum(amount) BETWEEN 1000 and 2000 THEN 'medium spender'
   WHEN sum(amount)>2000 THEN 'High spender'

END AS customer_spender 
from payments
group by customer_id
   
--sirf wahi record jika customer_id=2 
SELECT
     payment_id,customer_id,amount,
CASE
   WHEN customer_id=2 THEN 'priority customer'
   ELSE 'normal customer'

END AS customerstatus
from payments

--discount using case

select payment_id,amount,
CASE
    WHEN amount>=2000 THEN amount*0.20
    WHEN amount >=1000 THEN amount * 0.10
    ELSE  0 
END AS discount
from payments

--order by phle highamount phir baaki 
select * 
from payments
order by 
CASE 
    WHEN amount>=1500 THEN 1
    ELSE 2 
END 

-- customer type customer_id=1vip,customer_id=2regular,else=new
select customer_id,payment_id,
CASE
   WHEN customer_id=1 THEN 'VIP'
   WHEN customer_id=2 THEN 'Regular'
   ELSE 'New'

END AS customer_type 
from payments

--total_payment nikalo or category do total>=2000 gold ,total>=1000 silver ,else bronze 
select 
 customer_id ,sum(amount),
CASE 
   WHEN sum(amount)>=2000 THEN 'Gold'
   WHEN sum(amount)>=1000 THEN 'Silver'
   ELSE 'Bronze'

END as total_payment
from payments
group by customer_id

--sirf wahi records dikhao amount<1000 allow amount>=1000block output me sirf allow wale record aana chaiye 
SELECT *, 
CASE 
    WHEN amount < 1000 THEN 'allow'
    ELSE 'block'
END AS allow_record
FROM payments
WHERE amount < 1000;


--har payment ke liye amount even ,amount odd
select payment_id,amount,customer_id,
CASE 
    WHEN amount%2=0 THEN 'Even amount'
    WHEN amount%2=1 THEN 'Odd amount'
END as amounts_type
from payments 

--payment status amount>=1500 approved , 700-1499 review else <700 rejected
select payment_id,amount,customer_id,
CASE 
   WHEN amount>=1500 THEN 'Approved'
   WHEN amount between 700 and 1499 THEN 'Review'
   WHEN amount<700 THEN 'Rejected'

END AS Payment_status
from payments

--customer_id=2 ke liye amount>=1000 special discount else normal 
select customer_id,amount,
CASE 
   WHEN customer_id=2 and amount>=1000  THEN 'Special discount'
   WHEN  customer_id=2 THEN 'Normal'
   ELSE 'NA'

END AS customer_discount
from payments

--discount ke baad final amount 
select payment_id,customer_id,amount,
CASE
    WHEN amount >=2000 THEN amount -(amount *0.20)
    WHEN amount>=1000 THEN amount -(amount * 0.10)
    ELSE amount

END as final_amount
from payments

--nested case discount+vip check
select payment_id,customer_id,amount,
CASE
    WHEN customer_id=1 THEN 'VIP'
    ELSE 
        CASE 
            WHEN amount>=2000 THEN '20% discount'
            WHEN amount>=1000 THEN '10% discount'
            ELSE 'NO discount'
        END
END as status
from payments 

--case with null(simulate missing amount)

select payment_id,customer_id,amount,
CASE 
   WHEN amount IS NULL THEN 'Unknow'
   WHEN amount <1000 THEN 'low'
   ELSE 'High'
END as amount_status
from payments
union all select 105,5,null,'unknow'

--Null  functions 
/*
    isnull=null  ki jgh temporary value replace krna  ,aagr null ho to ye(jo value query me likhe) dikha do  (sql server)
    coalesce=multiple values me pehli non-null value, salary null hai to bonus null hai to 0(jo denge) dedo
    nullif=do value barabar ho -->null return,(a,b) a b equal hai to null return barabr nhi to a  ki value return kro 
    true and null=null ,false and null=false, true or null= true, false or null =null, not null=null
*/

CREATE TABLE nulll(
    id INT,
    name VARCHAR(20),
    salary INT,
    bonus INT
);

INSERT INTO nulll(id, name, salary, bonus) VALUES
(1, 'Alice', 5000, 500),
(2, 'Bob', NULL, 300),
(3, 'Charlie', 4000, NULL),
(4, 'David', NULL, NULL);


INSERT INTO nulll(id, name, salary, bonus) VALUES
(5,'Robin',0,200)
update nulll
set bonus=null
where id=5

select * from nulll

select *
from nulll 
where salary is null --null value return karega 

select * 
from nulll
where salary  is not null --salary null nhi vo vali value return 

select name, salary + bonus as total_compensation  --null ke sath koi bhi arithmetic operation hamesh null return krta hai 
from nulll

select * from nulll

select 
     name,
       coalesce(salary,0) + coalesce(bonus ,0) as total_compensation --null value ko dusri value se replace krna 
from  nulll 

select coalesce(salary,bonus,null) from nulll

select  name,isnull(salary,0) as salary from nulll  --null value ki jgh 0 replace kr dega 

select * from nulll

select 
      name,salary,
         nullif(salary,bonus) as salary_bonus_check
from nulll 


SELECT name, salary, NULLIF(salary, 0) AS after_nullif
FROM nulll;


--salary ko bonus se divide krke nikalana hai lekin aagr bonus 0 ya null ho to null return kro taki divide by zero error na de 

select name,salary,bonus,
salary/nullif(bonus,0) as salary_per_bonus
from nulll

--select all name whose salary or bonus is missing(null)

select name,salary,bonus
from nulll
where salary is null or  bonus is null

--calculate safe salary per bonus replace division by 0 ,replace null result with 0 
select name,salary,bonus,
coalesce(salary/nullif(bonus,0),0) as salary_per_bonus
from nulll

/*
       operators
*/

SELECT  salary + bonus 
from nulll

select salary 
from nulll 
where salary>3000

select name
from nulll
where salary >3000 or bonus is null

select name 
from nulll
where name like 'A%' or name  like 'B%'

select name 
from nulll
where salary in (0,4000,5000) and bonus is null

select name 
from nulll
where salary in (0,4000,5000)
 

--salary after adding 10% bonus for name whose salry is not null
select name ,salary + salary *0.10 as new_salary 
from nulll
where salary is not null

select name ,bonus
from nulll
where bonus >200 and bonus<600

--Store procedure (*≧▽≦)ツ┏━┓'
-- database me save hota hai or bar bar call kiya ja sakta hai .

create procedure record
as
begin
select * from payments
end;
go

exec record

create procedure onlytwo
as
begin
select * from payments
where customer_id=2
end;
go

exec onlytwo

create procedure high
as
begin
select * from payments
where amount>1000
end;
go

exec high


select customer_id,sum(amount) as 'total amount'
from payments
group by customer_id

select top 1 customer_id ,sum(amount) as 'Total amount'
from payments
group by customer_id
order by [Total amount] desc;

select count(payment_id) as 'Total payments'
from payments

select customer_id 
from payments
group by customer_id
having count(*)>1;

select  customer_id ,avg(amount) as 'avg amount'
from payments
group by customer_id

select * 
from payments
where amount=(select max(amount) from payments)

--customer_id input le or total payment output de

create procedure totalpayment
@cust_id int
as
begin 
select customer_id ,sum(amount) as 'total amount'
from payments
where customer_id=@cust_id
group by customer_id
end;
go

exec totalpayment 1

--minimum amount input le usse zyada ke sare payment return kare

create procedure paymentabovepayment
@min_amount int
as 
begin
select * from payments
where amount>@min_amount
end;
go

exec paymentabovepayment 1000

-- aaise customer jiska sirf ek hi payment ho
select customer_id 
from payments
group by customer_id
having count(*)=1

--kisi ne payment kiya hi na ho use find krna

select c.customer_id
from customers c
left join payments p
on c.customer_id=p.customer_id
where p.customer_id is null;

--amount ko descending order me dikhao
select * from payments
order by amount desc

--second highest payment dikhao
select max(amount) as 'secondhighest'
from payments
where amount<(select max(amount) from payments)

--Alter table  ,existing table ke structure(design) ko change krne ke liye hota hai

create table school
(
  id int primary key ,
  name varchar(30)
)

select * from school

--add column
ALTER TABLE school
add CLASS int,subject varchar(20)

alter table school
add roll_no varchar(20)

--drop column
ALTER TABLE school 
drop column CLASS

--rename column name
exec sp_rename 'school.subject','COURCE','column'

--change datatype
alter table school
alter column roll_no int

--constraints 
/*
  NOT NULL :-ensures that a column cannot hava a null value
  UNIQUE:- ensures that all values in a column are different
  PRIMARY KEY:- A combination of a not null and unique uniquely identifies each row in a tble
  FOREIGN KET :- Prevents actions that would destroy links between tables
  CHECK:- the check constraint is used to limit the value range that can be placed in a column
  DEFAULT:-constraint is used to set a default value for a column
  Auto increment :- allows a unique number to be generated automatically when a new record is inserted into a table
  date :- Dates ka use database me time based data track karne ke liye hota hai jaise record creation,updates aur reports.


*/

create table person 
(
  ID int primary key,
  lastname varchar(20) ,
  first_name varchar(10),
  age int check (age>=18),
  city varchar(20)  default 'america',
)

insert into  person
values  (1,'kumar','aman',18,'london')


insert into  person(id,lastname,first_name)
values  (4,'kumar','aman')


select * from person
drop table person

ALTER table person
add constraint chk_person check (age>=18 and city='london')

ALTER table person 
drop constraint CHK_person;

ALTER TABLE PERSON                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
ADD constraint df_id
default 5 for id

ALTER TABLE person
drop constraint df_id

--new table 😎😎

--auto increment😴😴😴
create table persons 
(
  ID int primary key identity(1,1),
  name varchar(20),
  age int check(age>=15),
  payment varchar(20) default 'no payment'
)

select * from persons

insert into persons (name,age)
values  ('Anushaka',18)
         

drop table persons

--date 🙄🙄
create table persons 
(
  ID int primary key identity(1,1),
  name varchar(20),
  age int check(age>=15),
  payment varchar(20) default 'no payment',
  created_at  DATETIME
)

select * from persons

insert into persons(name,age,created_at)
values('Abhinav',19,'2026-01-26 12:30:00')

--INDEX 
/*
 :index ek database structure hota hai jo data ko fast search, sort aur retrieve karne me help krta hai 
 index query performance improve rta hai lekin insert,update operations thode slow ho skte hai kyunki 
 index ko bhi update krna pdta  hai 

  index create :- CREATE INDEX INDEX_NAME ON TABLE(table name)
  data search:- select * from table_name where column=value
  index dekhna :- SHOW INDEX FROM table_name
  index delete :- DROP INDEX INDEX_NAME ON table_name


*/

CREATE TABLE indexx (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    class INT,
    age INT,
    city VARCHAR(50)
);

INSERT INTO indexx VALUES
(1, 'Rahul', 10, 15, 'Delhi'),
(2, 'Aman', 10, 16, 'Mumbai'),
(3, 'Sita', 9, 14, 'Delhi'),
(4, 'Rohit', 11, 17, 'Pune'),
(5, 'Rahul', 12, 18, 'Delhi');

select * from indexx where name='rahul'


CREATE INDEX name_person 
ON indexx(name)

select * from indexx where name ='rohit'

CREATE INDEX name_person_city
ON indexx(name,city)

select * from indexx
where name='rohit' or city ='delhi'

CREATE INDEX city_index
ON indexx(city)

select * from indexx 
where city='delhi'

--index check
EXEC sp_helpindex 'indexx'

--drop index
DROP INDEX age_person ON indexx

--class or age pe composite index banao
CREATE INDEX age_class
ON indexx(class,age)

CREATE INDEX age_person
ON indexx(age)

select * from indexx
order by age desc

--(name,city)(city,name) kaun sa index better hoga or kyu
/*
  i think the first query is correct because in a composite index, the first column in the index matters, so the
  database can use the index efficiently based on that sequence.
*/











