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
			$.ajax({
				url: "${appRoot}/rest08/sub01",
				type: 'get',
				success: function (d) {
					console.log("btn1", d);
				}
			});
		})
		
		$("#btn2").click(function() {
			$.get({
				url: "${appRoot}/rest08/sub01",
				success: function (d) {
					console.log("btn2", d);
				}
			})
		})
	})	
	</script>
	<button id="btn1">BTN1</button>
	<button id="btn2">BTN2</button>
</div>
</body>
</html>










