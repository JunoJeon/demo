USE world;

drop table if exists user;

CREATE TABLE USER (
userID VARCHAR(20),
userPassword VARCHAR(20),
userName VARCHAR(20),
userGender VARCHAR(20),
userEmail VARCHAR(50),
PRIMARY KEY (userID)
);

INSERT INTO USER VALUES('gildong', '123456', '홍길동', '남자', 'gildong@gmail.com');

select * from user;