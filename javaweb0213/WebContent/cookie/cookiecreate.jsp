<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 생성</title>
<%
	//쿠키 생성
	Cookie cookie = new Cookie(URLEncoder.encode("언어", "utf-8"), "자바");
	//쿠키의 수명을 설정
	cookie.setMaxAge(60);
	//쿠키 저장
	response.addCookie(cookie);
%>

</head>
<body>
	<a href="./cookieread.jsp">쿠키 읽기</a>
</body>
</html>