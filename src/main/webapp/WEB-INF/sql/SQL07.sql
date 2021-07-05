USE spr1;

DESC tbl_board;

CREATE TABLE tbl_board_file (
	id INT PRIMARY KEY AUTO_INCREMENT,
	bno INT REFERENCES tbl_board(bno),
	fileName VARCHAR(200) not null
);

DESC tbl_board_file;

SELECT * FROM tbl_board_file;


