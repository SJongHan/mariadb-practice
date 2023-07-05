show tables;
select version(), current_date, now()
	from dual;
    
-- 수학함수, 사칙 연산도 한다.
select sign(pi()/4), 1 + 2 * 3 - 4 / 5
	from dual;
        
-- 대소문자 구분이 없다.
seLect version(), current_DATE 
	from DUAL;
    
-- table 생성: ddl
create table pet(
	name varchar(100),
    owner varchar(20),
    species varchar(20),
    gender char(1),
	birth date,
    death date
);


-- scheme 확인
describe pet;
desc pet;

-- table 삭제: DDL
drop table pet;
show tables;

-- insert: DML(C)
insert 
	into pet
values('뿡이', '나', 'dog', 'm', '2017-03-15', null);


-- select: DML(R)
select * from pet;

-- update: DML(U)
update pet
	set name='빵이'
where name='뿡이';



























