CREATE DATABASE spr1;
USE spr1;

-- 173 page
CREATE TABLE tbl_board (
	bno INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    content VARCHAR(2000) NOT NULL,
    writer VARCHAR(50) NOT NULL,
    regdate TIMESTAMP DEFAULT NOW(),
    updatedate TIMESTAMP DEFAULT NOW()
);

INSERT INTO tbl_board (title, content, writer)
VALUES ('테스트 제목', '테스트 내용', 'user00');

