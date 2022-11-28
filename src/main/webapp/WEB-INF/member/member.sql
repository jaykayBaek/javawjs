CREATE TABLE member(
	idx			int NOT NULL AUTO_INCREMENT,
    mid			varchar(20) NOT NULL,
    pwd			varchar(100) NOT NULL,		/*비밀번호(SHA 암호화 처리)*/
    nickName	varchar(20) NOT NULL,		/* 별명(중복불허/수정가능) */
    name		varchar(20) NOT NULL,
    gender		varchar(5) DEFAULT '남자',
    birthday	datetime DEFAULT now(),
    tel			varchar(15),
    address		varchar(100),
    email		varchar(50) NOT NULL,		/*이메일(아이디/비밀번호 분실시 사용) - 형식체크 필수*/
    homePage	varchar(50) NOT NULL,		/*홈페이지(블로그) 주소*/
    job			varchar(20),
    hobby		varchar(20),
    photo		varchar(100) DEFAULT 'noimage.jpg',		/*회원사진*/
    content		text,									/*회원 자기소개*/
    userInfor	char(3) DEFAULT '공개',		/*회원정보 공개여부(공개/비공개)*/
    userDel		char(2) DEFAULT 'no', 		/*회원 탈퇴 신청 여부(ok:탈퇴신청한 회원, no:현재 가입중인 회원)*/
    point		int default '100', 			/*회원누적포인트(가입시 기본 100포인트 증정, 방문시마다 하루 10포인트 증가, 최대 일일 50포인트까지)*/
    level		int default 1,				/*회원등급 0관리자, 1준회원 2정회원 3우수회원 4운영자*/		
    visitCnt	int default 0,				/*방문횟수*/
    startDate	datetime default now(),		/*최초 가입일*/
    lastDate	datetime default now(),		/*마지막 접속일*/
    todayCnt	int default 0,				/*오늘 방문한 횟수*/

    primary key(idx, mid)
);

desc member;

INSERT INTO member VALUES (
default, 'admin', '1234', '관리자', '관리자', default, default,
'010-5011-3162', '청주시 봉명동', 'jaykaybaek@gmail.com', 'http://jayitworld.blogspot',
'학생', '등산/독서', default, '안녕하세요!', default, default, default,default,default,default,default,default
);