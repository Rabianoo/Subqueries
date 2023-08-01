create table NewEmployee(eid int primary key identity,e_name varchar(100),city varchar(100),salary int );
insert into NewEmployee values ('Tania','Karachi',4000);
insert into NewEmployee values ('Aysha','Multan',6000);
insert into NewEmployee values ('Rija','Lahore',8000);
insert into NewEmployee values ('Saima','Karachi',9000);
insert into NewEmployee values ('sana','Lahore',6000);
insert into NewEmployee values ('Sanai','Larkana',7000);

select *from NewEmployee;

select min(salary) from NewEmployee;

select e_name from NewEmployee where salary =(select max(salary) from NewEmployee);

select e_name from NewEmployee where e_name in (select e_name from NewEmployee where salary >4000);

select e_name from NewEmployee where e_name not in(select e_name from NewEmployee where salary > 4000);


update NewEmployee set salary = salary + 3000
where eid in
(select eid from NewEmployee where city = 'Larkana');

delete from NewEmployee 
where eid in
(select eid from NewEmployee where city = 'Multan');