<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
    <meta charset="utf-8">
<link rel="stylesheet" href="/resources/lib/summernote-0.8.18-dist/summernote-lite.css">
<script src="/resources/lib/summernote-0.8.18-dist/summernote-lite.js"></script>
<script>

$(document).ready(function(){
	$("#submit").on("click",function(event){
		
		alert("アップデートが完了しました。");
		
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
	alert('アップデートが完了しました。');
}
</script>
<h1 class="text-center fs-1" style="margin-top: 20px; margin-bottom:20px;">アップデート</h1>
	<div class="arearea">
		<form action="${from }" method="post">	
			<input type=hidden name=id value="${id}">
			<input type='hidden' name='pageNum' value='${cri.pageNum }'>
			<input type='hidden' name='amount' value='${cri.amount }'>
				<table class="table table-striped table-hover">
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
						
						<td class="text-center"><strong>タイ&nbsp;&nbsp;トル</strong></td>
						<td colspan="3"><input type="text" name="board_title" value="${update.title}" class="col-sm-12 col-form-label"></td>
						
					</tr>
					<tr>
					
						<td class="text-center align-middle"><strong>内&nbsp;&nbsp;容</strong></td>
						<td colspan="3"><textarea id="summernote" name="board_contents">${update.contents}</textarea></td>
					</tr>
					<tr>
						<td colspan="4" align="center" >
							<input type="button" onclick="history.back()" style="width:100pt;" class="btn btn-warning btn-lg" value="戻る"> &emsp;&emsp;
							<input type="submit" id="submit" style="width:100pt;" class="btn btn-primary btn-lg" value="アップデート">
						</td>
					</tr>
					</table>
	
				</form>
				
				
		
	</div>
	