<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<div class="work-area">
	${dto}

<script type="text/javascript">

	
	$(document).ready(
		function() {
			var actionForm = $("#actionForm");
			$(".paginate_button a").on(
					"click",
					function(e) {
						e.preventDefault();
						console.log('click');
						actionForm.find("input[name='pageNum']").val(
								$(this).attr("href"));
						actionForm.submit();
					});

		});
		
		function chkIsLock(isLock, id, e) {
		
			if (isLock == 1) {
				location.href="/board/Password?id="+id;
			} else {
				location.href="/board/detail?id=" + id;
			
			}
		}
	</script>


	<style>
th {
	text-align: center;
	height: 50px;
	font-weight: bold;
	vertical-align: middle;
}
</style>




	<h1 class="text-center fs-1" style="margin-bottom: 30px;">목록페이지</h1>
	<form name="search" action="board" method="GET">
		<button type="button" class="btn btn-primary"
			onclick="location.href='/board/create'">글쓰기</button>
		<div
			style="margin-top: 20px; margin-bottom: 10px; text-align: center;">
			<table class="table table-dark table-striped">
				<tr>
					<th width="10%">番号</th>
					<th width="60%">タイトル</th>
					<th width="10%">ユーザー</th>
					<th width="20%">登録日</th>
				</tr>
				<c:forEach var="abc" items="${test}">
					<tr>
						<td align="center">${abc.id }</td>
						<td align="center">
						<input type="hidden" class="title" name="title" value="${abc.passwd }">
						<c:if test="${abc.islock == 1}"><i class="bi bi-file-earmark-lock2"></i></c:if>
							<a href="#" onclick="chkIsLock(${abc.islock}, ${abc.id}, this)">${abc.title }</a></td>
						<td align="center">${abc.name }</td>
						<td><fmt:formatDate value="${abc.createdat }"
								pattern="yyyy-MM-dd kk:mm"></fmt:formatDate></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</form>

<!-- 검색기능  -->
	<div class='row'>
		<div class="col-lg-12">
		
		<form id='searchForm' action="/board/list" method='get'>
			<table style="margin-left: auto; margin-right:auto";>
			<tr>
				<td>
					<select class="form-control" name="type">		
						<option value="">-----</option>
						<option value="T">제목</option>
						<option value="N">이름</option>
				</select>
				</td>
				
				<td>
					<input type='text' placeholder="검색어를 입력해주세요." name='keyword'/>
					<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum }'>
					<input type='hidden' name='amount' value='${pageMaker.cri.amount }'>	
					<button class='btn btn-outline-danger' ><i class="bi bi-apple"></i>Search</button>
				</td>
			</tr>	
				
			</table>
			
			
		</form>
		
		
		</div>
	</div>
	



	<!-- 페이징 소스 -->
	<div id="pagination-box"
		style="margin-top: 20px; margin-bottom: 100px;">
		<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center">
				<c:if test="${pageMaker.prev}">
					<li class="paginate_button previous"><a
						href="${pageMaker.startPage -1 }">Previous</a></li>
				</c:if>

				<c:forEach var="num" begin="${pageMaker.startPage }"
					end="${pageMaker.endPage }">
					<li
						class="paginate_button ${pageMaker.cri.pageNum == num ? 'active':'' }">
						<a href="${num}">${num}</a>
					</li>
				</c:forEach>

				<c:if test="${pageMaker.next}">
					<li class="paginate_button next"><a
						href="${pageMaker.endPage + 1 }">Next</a></li>
				</c:if>
			</ul>
		</nav>
	</div>
	<!-- 페이징 끝 -->
	

	<form id='actionForm' action="/board/list" method='get'>
		<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
		<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
	</form>



</div>

