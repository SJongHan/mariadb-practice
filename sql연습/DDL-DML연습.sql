drop table member;



create table member(
	no int not null auto_increment,
    email varchar(200) not null,
    password varchar(64) not null,
    name varchar(100) not null,
    department varchar(100),
	primary key(no)
);
desc member;

alter table member add column juminbunho char(13) not null;
desc member;

alter table member drop column juminbunho;
desc member;

alter table member add column juminbunho char(13) not null after email;
desc member;

alter table member change column department dept varchar(100);
desc member;

alter table member add column self_intro text;
desc member;

alter table member drop column juminbunho;
desc member;

-- insert
insert
	into member
values (null, 'jonghs26@gmail.com', password('123'), '킹킹킹', '월루팡팀', null);

insert 
	into member(email, password, name, dept)
    values ( 'ddddddd@naver.com', password('337'), '왕킹콩', '홍팀');

insert 
	into member(name, password, dept, email)
    values ('왕킹콩',password('337'),'홍팀', 'ddddddd@naver.com');

-- update
update member
	set email = 'eeeeeee@naver.com', password = password('337')
    where no = 2;

-- delete
delete 
	from member
	where no = 2;
-- select
select * from member;