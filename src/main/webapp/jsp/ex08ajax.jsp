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
		
		$("#btn3").click(function() {
			$.get("${appRoot}/rest08/sub01", function(data) {
				console.log("btn3", data);
			})
		})
	})	
	</script>
	<button id="btn1">BTN1</button>
	<button id="btn2">BTN2</button>
	<button id="btn3">BTN3</button>
	
	<hr>
	
	<script>
	$(function() {
		$("#btn4").click(function() {
			$.ajax({
				url: "${appRoot}/rest08/sub02",
				type: "get",
				dataType: "json",
				success: function(data) {
					console.log("btn4", data);
				}
			});
		});
		$("#btn5").click(function() {
			$.get({
				url: "${appRoot}/rest08/sub02",
				dataType: "json",
				success: function(data) {
					console.log("btn5", data);
				} 
			});
		});
		$("#btn6").click(function() {
			$.get("${appRoot}/rest08/sub02", function(data) {
				console.log("btn6", data);
			}, "json");
		})
		
		$("#btn7").click(function() {
			$.getJSON("${appRoot}/rest08/sub02", function(data) {
				console.log("btn7", data);
			})
		})
	})	
	</script>
	<button id="btn4">BTN4</button>
	<button id="btn5">BTN5</button>
	<button id="btn6">BTN6</button>
	<button id="btn7">BTN7</button>
</div>
</body>
</html>




















