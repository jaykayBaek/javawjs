CREATE TABLE pds(
	idx int not null auto_increment,
    -- 올린이의 아이디
    mid varchar(20) not null,
    -- 올린이의 파일명
    nickName varchar(20) not null,
    -- 업로드 시 파일명
    fName 	 varchar(200) not null,
    -- 실제 파일 서버에 저장되는 파일명
    fSName 	 varchar(200) not null,
    -- 파일의 총 사이즈
    fSize 	 int not null,
    -- 업로드 파일의 제목
    title	 varchar(100) not null,
    -- 파일의 분류
    part	 varchar(20) not null, 
    -- 비밀번호(암호화 - SHA 256)
    pwd		 varchar(100) not null,
    -- 파일 업로드 날짜
    fDate	 datetime default now(),
    -- 파일 다운로드 회수
    downNum  int default 0,
    -- 파일 공개여부
    openSw	 char(6) default '공개',
    -- 업로드 파일의 상세 설명
    content  text,
    -- 업로드 pc의 ip
    hostIp	 varchar(50),
    -- 기본키 : 자료실의 고유번호
    primary key(idx)
);

desc pds;

select * from pds order by idx desc;