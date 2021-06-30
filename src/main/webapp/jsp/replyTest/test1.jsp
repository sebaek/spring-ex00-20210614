<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<script>
	$(function() {
		$("#btn1").click(function() {
			$.post({
				url : "${appRoot}/replies/new",
				data : {
					bno: 150,
					reply: "새로운 댓글",
					replyer: "user00"
				},
				contentType : "application/json",
				success: function(data) {
					console.log(data);
				},
				error: function() {
					console.log("등록 실패");
				}
			});
		});
	})
	</script>

	<button id="btn1">TEST CREATE</button>
</div>
</body>
</html>







