<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <meta charset="utf-8">
<link rel="stylesheet" href="/resources/lib/summernote-0.8.18-dist/summernote-lite.css">
<script src="/resources/lib/summernote-0.8.18-dist/summernote-lite.js"></script>
<script>

$(document).ready(function(){
	$("#submit").on("click",function(event){
		if($("#board_name").val().length==0){alert("이름을 입력하세요"); $("#board_name").focus(); return false;}
		if($("#board_passwd").val().length==0){alert("비밀번호를 입력하세요"); $("#board_passwd").focus(); return false;}
		if($("#board_Title").val().length==0){alert("제목을 입력하세요"); $("#board_Title").focus(); return false;}
		if($("#summernote").val().length==0){alert("내용을 입력하세요"); $("#summernote").focus(); return false;}
		
		alert("등록이완료되었다.");
		
	});



});

$(document).ready(function() {
	$('#summernote').summernote({
		  height: 300,                 // 에디터 높이
		  minHeight: null,             // 최소 높이
		  maxHeight: null,             // 최대 높이
		  focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
		  lang: "ko-KR",					// 한글 설정
		  placeholder: '최대 2000자까지 쓸 수 있습니다'	//placeholder 설정
        
	});
});


</script>


<%
	String userID=null;
	if(session.getAttribute("userID") != null) {
		userID=(String)session.getAttribute("userID");
	}

%>
<script>
function btn() {
	alert('등록이 완료되었습니다.');
}
</script>
<h1 class="text-center fs-1" style="margin-top: 20px; margin-bottom:20px;">수정페이지</h1>
	<div class="arearea">
		<form action="${from }" method="post">	
			<input type=hidden name=id value="${id}">
				<table class="table table-bordered">
					<tr>
						<td class="text-center" width="10%"><strong>名前</strong></td>
						<td width="40%">
							<input type=text name=board_name size=20 value="${update.name}">
						</td>
						<td class="text-center" width="10%"><strong>Password</strong></td>
						<td width="40%">
							<input type=password name=board_passwd size=20 value="${update.passwd}">
						</td>
					</tr>
					<tr>
						<td class="text-center"><strong>제&nbsp;&nbsp;목</strong></td>
						<td colspan="3"><input type="text" name="board_title" value="${update.title}" class="col-sm-12 col-form-label"></td>
					</tr>
					<tr>
					
						<td class="text-center align-middle"><strong>내&nbsp;&nbsp;용</strong></td>
						<td colspan="3"><textarea id="summernote" name="board_contents">${update.contents}</textarea></td>
					</tr>
					<tr>
						<td colspan=4 align="center" >
							<input type="button" onclick="history.back()" style="width:100pt;" class="btn btn-warning btn-lg" value="戻る"> &emsp;&emsp;
							<input type="submit" id="submit" style="width:100pt;" class="btn btn-primary btn-lg" value="등록">
						</td>
					</tr>
					</table>
	
				</form>
				
				
		
	</div>
	