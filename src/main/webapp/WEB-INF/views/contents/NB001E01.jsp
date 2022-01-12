<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userID=null;
	if(session.getAttribute("userID") != null) {
		userID=(String)session.getAttribute("userID");
	}

%>
<h1 class="text-center fs-1" style="margin-top: 20px; margin-bottom:20px;">작성페이지</h1>
	<div class="arearea">
		<form action="${from }" method="post">
				<table class="table table-bordered">
					<tr>
						<td class="text-center" width="10%"><strong>名前</strong></td>
						<td width="40%">
							<input type=text name=board_name size=20>
						</td>
						<td class="text-center" width="10%"><strong>Password</strong></td>
						<td width="40%">
							<input type=password name=board_passwd size=20>
						</td>
					</tr>
					<tr>
						<td class="text-center"><strong>제&nbsp;&nbsp;목</strong></td>
						<td colspan="3"><input type="text" id="board_Title" name="board_title" class="col-sm-12 col-form-label"></td>
					</tr>
					<tr>
						<td class="text-center align-middle"><strong>내&nbsp;&nbsp;용</strong></td>
						<td colspan="3"><textarea id="board_Contents" name="board_contents" rows="7" class="col-sm-12 col-form-label"></textarea></td>
					</tr>
					<tr>
						<td colspan=4 align="center" >
							<input type="button" onclick="history.back()" style="width:100pt;" class="btn btn-warning btn-lg" value="戻る"> &emsp;&emsp;
							<input type="submit" style="width:100pt;" class="btn btn-primary btn-lg" value="등록">
						</td>
					</tr>
					</table>
					
				</form>
		
	</div>
	