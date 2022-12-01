create table board(
	idx int not null auto_increment,
    member_mid varchar(20) not null,
	member_nickName varchar(20) not null,
    title varchar(100) not null,
	email varchar(50),			
    homePage varchar(50),		
    content text not null,
    date_updated datetime default now(),
    hostIp varchar(50) not null,
    views int default 0, /*글 조회수*/
    likes int default 0,
    primary key(idx)
);

show tables;
desc board;
desc board;

insert into board value(default, 'admin', '관리자입니다', '게시판 서비스를 시작합니다.', 'jaykaybaek@gmail.com',
	'naver.com', '게시판 서비스를 시작합니다잉', default, '192.168.50.211', default, default);

SELECT * FROM board;

/*날짜처리연습*/
select now();
select year(now());
select month(now());
select day(now());
select date(now()); -- 년-월-일
select weekday(now()); -- 요일:0월요일~6일요일
select dayofweek(now()); -- 요일:1일 2월 3화 4수 5목 6금 7토
select hour(now());
select minute(now());
select second(now());

desc board;

select year('2022-12-1');
select idx, year(date_updated) from board;
select idx, day(date_updated) from board;
select idx, date_updated, weekday(date_updated) from board;

/*날짜 연산*/
-- date_add(date, interval type)
select date_add(now(), interval 1 day); -- 오늘 날짜보다 +1 출력
select date_add(now(), interval -1 day);
select date_add(now(), interval 10 day_hour); -- 오늘 날짜보다 +10시간 출력
select date_add(now(), interval -10 day_hour); -- 오늘 날짜보다 -10시간 출력

-- date_sub(date, interval type)
select date_sub(now(), interval 1 day); -- 오늘 날짜보다 -1 출력
select date_sub(now(), interval -1 day); -- 오늘 날짜보다 1 출력

-- select from_days(date_updated) from board;

select idx, date_updated from board;
-- date_format(날짜, '양식기호')
-- 년도(2자리):%y, 년도(4자리):%Y, 월:%m, 월(영문):%d, 일:%d, 시(12시간제):%h, 시(24h):%H, 분:%i, 초:%s
select idx, date_format(date_updated, '%y-%m-%d') from board; -- %M 월을 영문출력
select idx, date_format(date_updated, '%y-%M-%d') from board; -- %m 월을 숫자출력
select idx, date_format(date_updated, '%Y-%M-%d') from board; -- 
select idx, date_format(date_updated, '%h-%i-%s') from board; -- 

-- 현재부터 한달 전의 날짜
select date_add(now(), interval -1 month);

-- 하루 전 체크
select date_add(now(), interval -1 day);
select date_add(now(), interval -1 day) yestarday, date_updated FROM board;

-- 날짜 차이 계산 : DATEDIFF(시작날짜, 마지막날짜)
SELECT datediff('2022-11-30', '2022-12-01');
SELECT datediff(now(), '2022-11-30');

SELECT idx, date_updated, datediff(now(), date_updated) from board;
SELECT idx, date_updated, datediff(now(), date_updated) day_diff from board;

SELECT *, datediff(now(), date_updated) day_diff from board;

-- 날짜 차이가 어제 것은 날짜만, 오늘은 시간까지 출력


