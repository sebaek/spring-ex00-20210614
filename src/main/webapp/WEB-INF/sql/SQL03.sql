USE spr1;
-- 전체 게시물
SELECT * FROM tbl_board
ORDER BY bno DESC;

-- 제목 검색
SELECT * FROM tbl_board
WHERE title LIKE '%자바%'
ORDER BY bno DESC
LIMIT 0, 10;

-- 제목 본문 검색
SELECT * FROM tbl_board
WHERE 
title LIKE '%자바%'
OR content LIKE '%자바%'
ORDER BY bno DESC;

-- 제목 본문 작성자 검색
SELECT * FROM tbl_board
WHERE 
title LIKE '%자바%'
OR content LIKE '%자바%'
OR writer LIKE '%자바%'
ORDER BY bno DESC
LIMIT 0, 10;

-- CONCAT 함수
SELECT CONCAT('a', 'b');
SELECT CONCAT('a', 'java', 'b');
SELECT 'a' + 'java';
SELECT 'a' || 'java'; -- oracle








