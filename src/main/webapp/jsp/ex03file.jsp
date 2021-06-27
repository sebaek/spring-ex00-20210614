<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="${appRoot }/ex1/sub1" method="post" enctype="multipart/form-data">
	<input type="text" name="content" />
	<br>
	<input type="file" name="files" multiple="multiple" />
	<br>
	<input type="submit"/>
</form>
</body>
</html>