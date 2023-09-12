CREATE TABLE TODO_MEMBER(
   TODO_MEMBER_NO NUMBER PRIMARY KEY,
   ID VARCHAR2(30) NOT NULL,
   PW VARCHAR2(100) NOT NULL,
   NAME NVARCHAR2(10) NOT NULL
);

DROP TABLE TODO_LIST;

-- Todo-List용 테이블
CREATE TABLE TODO_LIST(
   TODO_NO NUMBER PRIMARY KEY,
   TITLE NVARCHAR2(50) NOT NULL,
   IS_DONE CHAR(1) DEFAULT 'X' CHECK (IS_DONE IN ('O','X')),
   TODO_MEMBER_NO NUMBER REFERENCES TODO_MEMBER 
);

CREATE SEQUENCE SEQ_TODO_MEMBER_NO NOCACHE;
CREATE SEQUENCE SEQ_TODO_NO NOCACHE;


ALTER TABLE TODO_LIST
MODIFY TODO_MEMBER_NO NOT NULL; 


INSERT INTO TODO_LIST
VALUES(SEQ_TODO_NO.NEXTVAL, '프로젝트 하기', DEFAULT, 1);

INSERT INTO TODO_LIST
VALUES(SEQ_TODO_NO.NEXTVAL, '복습 하기', DEFAULT, 1);

COMMIT;


