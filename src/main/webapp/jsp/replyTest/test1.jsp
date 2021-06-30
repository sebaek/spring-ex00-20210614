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
	<h5>입력 테스트</h5>
	<button id="btn1">TEST CREATE - success</button>
	<button id="btn2">TEST CREATE - fail</button>
	
	<hr>
	<script>
	$(function() {
		$("#btn3").click(function() {
			var bno = 150;

			$.get({
				url: "${appRoot}/replies/pages/" + bno,
				success : function (data) {
					console.log(data);
				}
			})
		})
	})
	</script>
	<h5>목록 테스트</h5>
	<button id="btn3">TEST LIST</button>
	
	<hr>
	<script>
	$(function() {
		$("#btn4").click(function() {
			var rno = 26;
			
			$.get({
				url: "${appRoot}/replies/" + rno,
				success: function (data) {
					console.log(data);
				}
			});
		})
	})
	</script>
	<h5>댓글 하나</h5>
	<button id="btn4">TEST GET</button>
</div>
</body>
</html>















