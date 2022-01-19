<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<div class="work-area">

<script type="text/javascript">

	window.onpageshow = function(event) {
    	if (event.persisted) {
        	document.location.reload();
    	}
	}
</script>

${id}
${applicantIn.islock}
		<table class="table table-dark table-striped" style="text-align: center; border: 1px solid #dddddd" >
			<thead>
				<tr>
					
					<th colspan="3" style="text-align: center;">게시판글보기</th>
				</tr>
			<thead>
			<tbody>	
					<tr>
						<td style="width:20%;">글 제목</td>
						<td colspan="3"><strong>${applicantIn.title }</strong></td>
					</tr>
					<tr>
						<td style="width:20%;">작성자</td>	
						<td colspan="3">${applicantIn.name }</td>
					</tr>
					<tr>
						<td style="width:20%;">작성일자</td>	
						<td colspan="3"><fmt:formatDate value="${applicantIn.createdat }" pattern="yyyy-MM-dd kk:mm"></fmt:formatDate></td>
					</tr>
					<tr>
						<td>내용</td>	
						<td colspan="2" style="height: 200px; text-align: left; word-break:break-all">${applicantIn.contents }</td>
					</tr>
			</tbody>	
		</table>
	<a href="list" class="btn btn-danger">목록</a>
	
	<a href="/board/update?id=${id}" role="button" class="btn btn-warning">수정</a>
	
	
		
	</div>
