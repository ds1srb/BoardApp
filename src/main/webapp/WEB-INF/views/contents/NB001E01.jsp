<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <meta charset="utf-8">
<link rel="stylesheet" href="/resources/lib/summernote-0.8.18-dist/summernote-lite.css">
<script src="/resources/lib/summernote-0.8.18-dist/summernote-lite.js"></script>
<script>

$(document).ready(function(){
	$("#submit").on("click",function(event){
		if($("#board_name").val().length==0){alert("名前を入力して下さい"); $("#board_name").focus(); return false;}
		/* if($("#board_passwd").val().length==0){alert("비밀번호를 입력하세요"); $("#board_passwd").focus(); return false;} */
		if($("#board_Title").val().length==0){alert("タイトルを入力して下さい"); $("#board_Title").focus(); return false;}
		if($("#summernote").val().length==0){alert("内容して下さい"); $("#summernote").focus(); return false;}
		
		alert("登録が完了しました。");
		
	});



});

$(document).ready(function() {
	$('#summernote').summernote({
		  height: 300,                 // 에디터 높이
		  minHeight: null,             // 최소 높이
		  maxHeight: null,             // 최대 높이
		  focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
		  lang:"jp-JP",					// 일본어 설정
		  placeholder: '最大1000文字まで書けます。（英語２０００文字）'	//placeholder 설정
        
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
<h1 class="text-center fs-1" style="margin-top: 20px; margin-bottom:20px;"><i class="bi bi-brush-fill"></i></h1>
	<div class="arearea">
		<form action="${from }" method="post">	
			<input type=hidden name=no value="${no}">
				<table class="table table-striped table-hover">
					<tr>
						<td class="text-center" width="10%"><strong>名前</strong></td>
						<td width="40%">
							<input type=text name=board_name id=board_name placeholder="名前を入力して下さい" size=20>
						</td>
						<td class="text-center" width="10%"><strong>Password</strong></td>
						<td width="40%">
							<input type=password name=board_passwd id=board_passwd placeholder="パスワードを入力して下さい" size=20>
						</td>
					</tr>
					<tr>
						<td class="text-center"><strong>タイ&nbsp;&nbsp;トル</strong></td>
						<td colspan="3"><input type="text" id="board_Title" name="board_title" placeholder="タイトルを入力して下さい" class="col-sm-12 col-form-label"></td>
					</tr>
					<tr>
					
						<td class="text-center align-middle"><strong>内&nbsp;&nbsp;容</strong></td>
						<td colspan="3"><textarea id="summernote" name="board_contents"></textarea></td>
					</tr>
					<tr>
						<td colspan=4 align="center" >
							<input type="button" onclick="history.back()" style="width:100pt;" class="btn btn-warning btn-lg" value="戻る"> &emsp;&emsp;
							<input type="submit" id="submit" style="width:100pt;" class="btn btn-primary btn-lg" value="登録">
						</td>
					</tr>
					</table>
	
				</form>
				
				
		
	</div>
	