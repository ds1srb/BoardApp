<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<h1 class="text-center fs-1" style="margin-top: 20px; margin-bottom:20px;">PassWord入力</h1>
	<div class="work-area">
		
		<form action="/board/Password" method="post">	
			<input type="hidden" name="id" id="id" value="${applicantIn.id }" >
			<table class="table table-bordered">
				<tr>
					<td bgcolor="#cfd7f8">暗証番号は？</td>
					<td align="left">
					<input type="password" name="passwd" id="passwd" class="form-control" placeholder="Password" required size="30"/>
				</tr>
				<tr>
					<td>
					<input type="submit" id="submit" style="width:100pt;" class="btn btn-danger btn-lg" value="確認">
					</td>			
				</tr>
			</table>
			
			<P>  ${Warning}. </P>
			
			
		</form>
	</div>>