<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<meta charset="UTF-8">
<div class="work-area">
${dto}
<style>
	th {
		text-align : center;
		height : 50px;
		font-weight: bold;
		vertical-align: middle;
		}
</style>
	<h1 class="text-center fs-1" style="margin-bottom:30px;">목록페이지</h1>
		<form name="search" action="board" method="GET">
		<button type ="button" class="btn btn-primary" onclick="location.href='/board/create'"> 글쓰기 </button>
			<div style="margin-top:20px; margin-bottom:10px; text-align:center;">
				<table class="table table-striped">
					<tr>
						<th> 番号 </th>
						<th> 제목 </th>
						<th> 글쓴이 </th>
						<th> 등록일 </th>
					</tr>
					<c:forEach var="abc" items="${test}">
					<tr>
						<td align="center"> 2 </td>
						<td align="center"> ${abc.title } </td>
						<td align="center"> ${abc.name } </td>
					<td><fmt:formatDate value="${abc.createdat }" pattern="yyyy-MM-dd kk:mm:ss"></fmt:formatDate></td>
						
					</tr>	
					</c:forEach>
			</table>
		</div>
	</form>	
</div>

