<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="bd" tagdir="/WEB-INF/tags/board" %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
	<bd:navbar />
<div class="container">
	<h1>글 목록</h1>
	<table class="table table-striped">
		<thead>
			<tr>
				<th>#</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>수정일</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list }" var="board">
				<tr>
					<td>${board.bno }</td>
					<td>
					<a href="${appRoot }/board/get?bno=${board.bno}">
						${board.title }
					</a>
					
					</td>
					<td>${board.writer }</td>
					<td>
						<fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate }"/>
					</td>
					<td>
						<fmt:formatDate pattern="yyyy-MM-dd" value="${board.updateDate }"/>
					</td>
				</tr>
			</c:forEach>			
		</tbody>
	</table>
</div>

<!--  pagenation -->
<div>
<nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
    <li class="page-item disabled">
      <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
    </li>
    <li class="page-item"><a class="page-link" href="#">11</a></li>
    <li class="page-item"><a class="page-link" href="#">12</a></li>
    <li class="page-item"><a class="page-link" href="#">13</a></li>
    <li class="page-item"><a class="page-link" href="#">14</a></li>
    <li class="page-item"><a class="page-link" href="#">15</a></li>
    <li class="page-item"><a class="page-link" href="#">16</a></li>
    <li class="page-item"><a class="page-link" href="#">17</a></li>
    <li class="page-item"><a class="page-link" href="#">18</a></li>
    <li class="page-item"><a class="page-link" href="#">19</a></li>
    <li class="page-item"><a class="page-link" href="#">20</a></li>
    <li class="page-item">
      <a class="page-link" href="#">Next</a>
    </li>
  </ul>
</nav>
</div>

<c:if test="${not empty result }" >
<script>
$(document).ready(function() {
	
	
	if (history.state == null) {
		console.log("어서와 처음이지!!!");
		
		$("#board-modal1").modal('show');
		history.replaceState({}, null);
		
	} else {
		
		console.log("너 전에 왔었어!!!!");
	}
	
});
</script>

<div id="board-modal1" class="modal" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">${messageTitle }</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>${messageBody }</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

</c:if>

</body>
</html>


















