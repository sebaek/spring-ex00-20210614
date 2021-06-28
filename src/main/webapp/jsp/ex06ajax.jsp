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
<h3>
<%= Math.random() %>
</h3>
<div class="container">
	<script>
	$(function() {
		$("#btn1").click(function() {
			console.log("click btn1");
			$.ajax("${appRoot}/rest06/sub01");
		});
	});
	</script>
	<button id="btn1">버튼1</button>
	
	
	<script>
	$(document).ready(function() {
		$("#btn2").click(function() {
			var jqXHR = $.ajax("${appRoot}/rest06/sub02");
			jqXHR.done(function(data) {
				console.log("btn2 done function");
				console.log(data);
			});
		});
	});
	</script>
	<button id="btn2">버튼2</button>
	
	<script>
	$(function() {
		$("#btn3").click(function() {
			$.ajax("${appRoot}/rest06/sub02")
			.done(function(res) {
				console.log("btn3 done function");
				console.log(res);
			});
		});
	});
	</script>
	<button id="btn3">BTN3</button>
	
	<script>
	$(function() {
		$("#btn4").click(function() {
			$.ajax("${appRoot}/rest06/sub04")
			.done(function() {
				console.log("성공!!!");
			})
			.fail(function() {
				console.log("실패!!!!");
			});
		})
	})
	</script>
	<button id="btn4">BTN4</button>
</div>
</body>
</html>








