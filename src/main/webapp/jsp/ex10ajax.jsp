<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
<script>
$(function() {
	$("#submit1").click(function(e) {
		e.preventDefault();
		var id = $("#input1").val();
		var age = $("#input2").val();
		
		var data = {id: id, age: age};
		
		$.post({
			url: "${appRoot}/rest10/add",
			data: data,
			success: function (data) {
				console.log(data);
			}
		});
	});
})
</script>
</head>
<body>
<div class="container">
	<%= Math.random() %>
	<form>
		<input id="input1" name="id" placeholder="id">
		<input id="input2" name="age" type="number" placeholder="age" >
		<input id="submit1" type="submit" value="전송">	
	</form>
</div>
</body>
</html>













