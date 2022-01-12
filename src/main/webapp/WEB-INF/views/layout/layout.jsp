<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>

	<meta charset="UTF-8">
	
	<title>게시판 페이지입니다.</title>
	<script src="/resources/lib/jquery/jquery-3.6.0.min.js" ></script>
	<script src="/resources/lib/bootstrap-4.4.1-dist/js/bootstrap.min.js" ></script>
	<script src="/resources/js/test.js" ></script>
	
	<link href="/resources/lib/bootstrap-4.4.1-dist/css/bootstrap.css" rel="stylesheet"/>
	<link href="/resources/css/common.css" rel="stylesheet"/>

	 <link rel="shortcut icon" href="https://www.ur-net.go.jp/commoncms/img/favicon.ico"/>


</head>
<body>
	<tiles:insertAttribute name="header" />
	<tiles:insertAttribute name="body" />
	<tiles:insertAttribute name="footer" />
</body>
</html>