USE spr1;

DESC tbl_board;

CREATE TABLE tbl_reply (
	rno INT PRIMARY KEY AUTO_INCREMENT,
    bno INT NOT NULL,
    reply VARCHAR(512) NOT NULL,
    replyer VARCHAR(50) NOT NULL,
    replyDate TIMESTAMP DEFAULT now(),
    updateDate TIMESTAMP DEFAULT now(),
    FOREIGN KEY (bno) REFERENCES tbl_board(bno)
);

SELECT * FROM tbl_board
ORDER BY bno DESC;

SELECT * FROM tbl_reply
ORDER BY rno DESC;

-- 댓글이 있는 게시물 조회
SELECT 
 DISTINCT (b.bno)
FROM tbl_board b JOIN tbl_reply r ON b.bno = r.bno;

















