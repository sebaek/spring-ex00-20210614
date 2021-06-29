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
				url: "${appRoot}/rest09/sub01",
				type: "post",
				data: {
					id: "korea",
					age: 55
				},
				success: function(d) {
					console.log("btn1", d);
				},
				dataType: "json"
			});
		});
		
		$("#btn2").click(function() {
			$.post({
				url: "${appRoot}/rest09/sub01",
				data: {
					id: "korea",
					age: 55
				},
				success: function(d) {
					console.log("btn2", d);
				},
				dataType: "json"
			});
		})
		
		$("#btn3").click(function() {
			$.post("${appRoot}/rest09/sub01", {id: "korea", age: 55}
				, function (d) {
					console.log("btn3", d);
				}, "json"
			);
		})
	})
	</script>
	<button id="btn1">BTN1</button>
	<button id="btn2">BTN2</button>
	<button id="btn3">BTN3</button>
</div>
</body>
</html>











