ALTER TABLE NexonUser DROP primary key CASCADE;
COMMIT;
DROP TABLE NexonUser;
COMMIT;

CREATE TABLE NexonUser(
	userId VARCHAR2(10) PRIMARY KEY,
	userPw VARCHAR2(16),
	nickName VARCHAR2(10),
	email VARCHAR2(40),
	indate DATE DEFAULT SYSDATE,
	use CHAR(1) DEFAULT 'Y' 
);
COMMIT;

INSERT INTO NexonUser(userId,userPw,nickName,email)
VALUES('scott', 'tiger', '���̾�', 'ryan@gmail.com');

INSERT INTO NexonUser(userId,userPw,nickName,email)
VALUES('hewon531', 'hewon12345', '���', 'hewon531@gmail.com');
COMMIT;

SELECT *
FROM nexonuser;

SELECT * FROM nexonuser WHERE userid = 'hewon5';

-- �ߺ�Ȯ��
SELECT count(userId) as cnt FROM nexonuser WHERE userId = 'hewon5';

SELECT count(email) as cnt FROM nexonuser WHERE email = 'hewon5@naver.com';

-- ��й�ȣ ã��
SELECT * FROM nexonuser WHERE userId ='scott' AND email = 'ryan@gmail.com';

SELECT * FROM nexonuser; -- Ȯ��

SELECT userId, email, LPAD(SUBSTR(userpw, -7, 7), LENGTH(userpw), '*') as pwdFind
FROM nexonuser
WHERE userId = 'hewon5' AND email = 'hewon5@naver.com';

UPDATE nexonuser SET userpw = 'hewon54321' 
WHERE userId ='hewon531' AND userpw = 'ryan@gmail.com';

UPDATE nexonuser SET userpw = 'hewon12345' 
WHERE userId ='hewon5';

DELETE FROM nexonuser
WHERE userid = 'scott' AND userpw = 'tiger';

commit;