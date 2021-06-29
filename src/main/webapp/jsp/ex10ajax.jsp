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
		$(this).attr("disabled", "disabled");
		$(this).html('<i class="fas fa-spinner fa-spin"></i>');
		
		var id = $("#input1").val();
		var age = $("#input2").val();
		
		var data = {id: id, age: age};
		
		$.post({
			url: "${appRoot}/rest10/add",
			data: data,
			success: function (data) {
				console.log(data);
				alert(data.id + "가 등록되었습니다.");
				$("#submit1")
				.removeAttr("disabled")
				.html("전송");

			}
		});
	});
	
	// button2
	$("#button2").click(function() {
		$.get({
			url : "${appRoot}/rest10/list",
			success : function(list) {
				console.log(list);
				var table1body = $("#table1 tbody");
				table1body.empty();
				
				for (var i = 0; i < list.length; i++) {
					var tr = $("<tr><td>" + list[i].id 
							+ "</td><td>"
							+ list[i].age +"</td></tr>");
					table1body.append(tr);
				}
			}
		});
	});
})
</script>
</head>
<body>
<div class="container">
	<%= Math.random() %>
		<input id="input1" name="id" placeholder="id">
		<input id="input2" name="age" type="number" placeholder="age" >
		<!-- <input id="submit1" type="submit" value="전송"> -->	
		<button id="submit1">전송</button>
		
		<hr>
		
		<button id="button2">목록보기</button>
		
		<table class="table" id="table1">
			<thead>
			<tr>
				<th>ID</th>
				<th>AGE</th>
			</tr>
			</thead>
			<tbody>
			
			</tbody>
		</table>
</div>
</body>
</html>













