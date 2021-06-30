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
			var data = {
					bno: 150,
					reply: "새로운 댓글",
					replyer: "user00"
				};
			
			$.post({
				url : "${appRoot}/replies/new",
				data : JSON.stringify(data),
				contentType : "application/json",
				success: function(data) {
					console.log(data);
				},
				error: function() {
					console.log("등록 실패");
				}
			});
		});
		
		$("#btn2").click(function() {
			var data = {
					bno: 999999,
					reply: "새로운 댓글",
					replyer: "user00"
				};
			
			$.post({
				url : "${appRoot}/replies/new",
				data : JSON.stringify(data),
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

	<button id="btn1">TEST CREATE - success</button>
	<button id="btn2">TEST CREATE - fail</button>
</div>
</body>
</html>







