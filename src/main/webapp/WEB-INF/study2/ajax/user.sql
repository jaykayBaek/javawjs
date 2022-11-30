show tables;

create table user(
	idx int not null auto_increment primary key,
	mid varchar(20) not null,
	name varchar(20) not null,
	age int default 20,
	address varchar(50)
);

desc user;

insert into user values (default, 'admin', '관리자', 22, '서울');
insert into user values (default, 'hkt1234', '홍길동', 22, '청주');
insert into user values (default, 'kms123', '김말숙', 22, '제주');
insert into user values (default, 'jaykay', '백정광', 22, '부산');
insert into user values (default, 'kkc1234', '강감찬', 22, '인천');