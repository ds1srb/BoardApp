<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
						<th width="10%"> 番号 </th>
						<th width="60%"> 제목 </th>
						<th width="10%"> 글쓴이 </th>
						<th width="20%"> 등록일 </th>
					</tr>
					<c:forEach var="abc" items="${test}">
					<tr>
						<td align="center"> ${abc.id } </td>
						<td align="center"> <a href="/board/detail?id=${abc.id }">${abc.title }</a></td>
						<td align="center"> ${abc.name } </td>
					<td><fmt:formatDate value="${abc.createdat }" pattern="yyyy-MM-dd kk:mm"></fmt:formatDate></td>
					</tr>	
					</c:forEach>
			</table>
		</div>		
	</form>	
	
	<div class="container">
		<div class="row" style="text-align:center">
			<form method="post" name="search" action="board">
				<table class="pull-right">
					<tr>
						<td>
						<select class="form-control" name="searchField">
							<option value="0">선택</option>
							<option value="bbsTitle">제목</option>
							<option value="userID">작성자</option>
						</select>
						</td>
						<td>
							<input type="text" class="form-control" placeholder="검색어 입력" name="searchText" maxlength="100">
						</td>
						<td>
							<button type="submit" class="btn btn-warning">검색</button>
						</td>
					</tr>

				</table>
						
			</form>
		</div>
	</div>
<!-- 페이징 소스 -->
	<div id="pagination-box" style=" margin-top:20px; margin-bottom:100px;">
		<nav style="vertical-align: middle;" aria-label="Page navigation example">
			<ul class="pagination justify-content-center">
				<c:if test="${pageNavi.prev}">
					<li class="page-item" onClick="javascript:page(${pageNavi.startPage-1});">
						<a class="page-link" href="#" tabindex="-1">&lt;</a>
					</li>
				</c:if>
				<c:forEach begin="${pageNavi.startPage }" end="${pageNavi.endPage }"
					var="page">
					<li class="page-item ${pageNavi.paging.pageNo eq page ?'active':''}" onClick="page(${page })">
						<a class="page-link" href="#">${page }</a>
					</li>
				</c:forEach>
				<c:if test="${pageNavi.next}">
					<li class="page-item" onClick="page(${pageNavi.endPage+1});"><a class="page-link" href="#">&gt;</a></li>
				</c:if>
			</ul>
		</nav>
	</div>
	<!-- 페이징 끝 -->
	<form method=get action=/admin/receipt name=listForm>
		<!-- 상세보기 검색 유지용 -->
		${pageNavi.paging.type } 
		<input type=hidden name=pageNo value=${pageNavi.paging.pageNo }>
		<input type="hidden" name="search_codeA" value="${search_codeA}">
		<input type="hidden" name="search_codeB" value="${search_codeB}">
		<input type="hidden" name="search_codeC" value="${search_codeC}">
			<input type="hidden" name="search_name" value="${search_name}">
		<!-- 상세보기 검색 유지용 끝 -->
	</form>
		
	
	
</div>

