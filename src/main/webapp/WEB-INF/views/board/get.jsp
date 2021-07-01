<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="bd" tagdir="/WEB-INF/tags/board" %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>

<script>
$(function() {
	function showModifyModal(rno) {
		$.ajax({
			type: "get",
			url: "${appRoot}/replies/" + rno,
			success: function (reply) {
				$("#reply-rno-input2").val(reply.rno);
				$("#reply-replyer-input2").val(reply.replyer);
				$("#reply-reply-textarea2").text(reply.reply);
				$("#reply-modify-modal").modal("show");
			},
			error: function () {
				console.log("댓글 가져오기 실패");
			}
		})
	}
	
	function showReplyList(list) {
		var container = $("#reply-list-container").empty();
		
		for (var reply of list) {
			var newItem = $("<div>").attr("id", "reply" + reply.rno)
									.attr("data-rno", reply.rno);
			newItem.click(function() {
				showModifyModal($(this).attr("data-rno"));
			});
			newItem.append("<span>" + reply.rno + ",</span>")
				   .append("<span>" + reply.reply + ",</span>")
				   .append("<span>" + reply.replyer + ",</span>")
				   .append("<span>" + reply.replyDate + "</span>");
			container.append(newItem);
		}
	}
	
	/* 댓글 목록 가져오기 */
	function getReplyList() {
		$.ajax({
			type: "get",
			url: "${appRoot}/replies/pages/${board.bno}",
			success: function(list) {
				console.log(list);
				showReplyList(list);
			},
			error : function() {
				console.log("댓글 가져오는 중 에러.");
			}
		});
	}
	// 페이지 로딩 후 댓글 목록 가져오는 함수 실행
	getReplyList();
	
	/* 댓글 입력 버튼 처리 */
	$("#reply-insert-btn1").click(function() {
		var bno = $("#reply-bno-input1").val();
		var replyer = $("#reply-replyer-input1").val();
		var reply = $("#reply-reply-textarea1").val();
		
		var data = {
			bno: bno,
			replyer: replyer,
			reply: reply
		};
		
		$.ajax({
			type: "post",
			url: "${appRoot}/replies/new",
			data: JSON.stringify(data),
			contentType: "application/json",
			success: function() {
				console.log("입력 성공");
				// 모달창 닫고
				$("#reply-insert-modal").modal("hide");
				// 댓글리스트 가져오고
				getReplyList();
				
				// 안내 메세지 보여주기
				$("#alert1").text("새 댓글 입력하였습니다.").addClass("show");
			},
			error: function() {
				console.log("입력 실패");
			}
		});
	});
	
	/* 수정 submit 버튼 클릭시 */
	$("#reply-modify-btn1").click(function() {
		var rno = $("#reply-rno-input2").val();
		var bno = $("#reply-bno-input2").val();
		var reply = $("#reply-reply-textarea2").val();
		var replyer = $("#reply-replyer-input2").val();
		
		var data = {
			rno : rno,
			bno : bno,
			reply: reply,
			replyer: replyer
		}
		
		$.ajax({
			type: "put",
			url: "${appRoot}/replies/" + rno,
			data: JSON.stringify(data),
			contentType : "application/json",
			success: function() {
				console.log("수정 성공");
				// 모달창 닫고
				$("#reply-modify-modal").modal("hide");
				// 댓글리스트 가져오고
				getReplyList();
				
				// 안내 메세지 보여주기
				$("#alert1").text("댓글 수정하였습니다.").addClass("show");
			},
			error: function() {
				console.log("수정 실패");
			}
		})
	});
	
	/* 삭제 버튼 클릭시 */
	$("#reply-delete-btn1").click(function () {
		var check = confirm("삭제 하시겠습니까?");
		
		if (check) {
			var rno = ;
			$.ajax({
				type: "",
				url: ,
				success: function () {
					// modal 닫고,
					
					// 댓글 리스트 다시 얻어오고,
					
					// alert 띄우고
					
				},
				error: function() {
					console.log("삭제 실패");
				}
			})
		}
	});
})

</script>


</head>
<body>
<bd:navbar></bd:navbar>

<div class="container">

<div id="alert1" class="alert alert-primary fade" role="alert">
</div>

	<h1>글 보기</h1>
	
	<div class="row">
		<div class="col-12">
			<form>
				<div class="form-group">
					<label for="input1">제목</label>
					<input readonly="readonly" id="input1" class="form-control" name="title" value="${board.title }">
				</div>
				<div class="form-group">
					<label for="textarea1">내용</label>
					<textarea readonly="readonly" id="textarea1" class="form-control" 
					name="content"><c:out value="${board.content }" /></textarea>
				</div>
				<div class="form-group">
					<label for="input2">작성자</label>
					<input readonly="readonly" id="input2" class="form-control" name="writer" value="${board.writer }">
				</div>				
				
				<c:url value="/board/modify" var="modifyUrl">
					<c:param name="bno" value="${board.bno }" />
					<c:param name="pageNum" value="${cri.pageNum }" />
					<c:param name="amount" value="${cri.amount }" />
					<c:param name="type" value="${cri.type }"/>
					<c:param name="keyword" value="${cri.keyword }" />
				</c:url>
				
				<a class="btn btn-secondary" href="${modifyUrl }">수정/삭제</a>
			</form>
		</div>
	</div>
</div>

<div class="container">
	<div class="row">
		<div class="col-12">
			<div id="reply-list-container">
			
			</div>
		</div>
	</div>
</div>




<%-- 댓글 입력 모달 --%>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#reply-insert-modal">댓글 작성</button>

<div class="modal fade" id="reply-insert-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">새 댓글</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <input type="text" value="${board.bno }" readonly hidden id="reply-bno-input1">
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">작성자</label>
            <input type="text" class="form-control" id="reply-replyer-input1">
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">댓글</label>
            <textarea class="form-control" id="reply-reply-textarea1"></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button id="reply-insert-btn1" type="button" class="btn btn-primary">댓글 입력</button>
      </div>
    </div>
  </div>
</div>

<%-- 댓글 수정, 삭제 모달 --%>
<div class="modal fade" id="reply-modify-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">댓글 수정/삭제</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <input type="text" value="" readonly hidden id="reply-rno-input2" >
          <input type="text" value="${board.bno }" readonly hidden id="reply-bno-input2">
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">작성자</label>
            <input type="text" class="form-control" id="reply-replyer-input2" readonly>
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">댓글</label>
            <textarea class="form-control" id="reply-reply-textarea2"></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button id="reply-modify-btn1" type="button" class="btn btn-primary">댓글 수정</button>
        <button id="reply-delete-btn1" type="button" class="btn btn-danger">댓글 삭제</button>
      </div>
    </div>
  </div>
</div>

</body>
</html>











