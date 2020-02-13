<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>
	#disp{
		color:red;
	}
</style>
</head>
<body>
	<%
		Object msg = session.getAttribute("msg");
		if(msg != null){
			out.println("<div id='disp'>" + msg + "</div>");
			session.removeAttribute("msg");
		}
	%>

	<form action="process.jsp" method="post">
		<label for="id">아이디</label>
		<input type="text" name="id" required="required" /><br/>
		
		<label for="pw">비밀번호</label>
		<input type="password" name="pw" required="required" /><br/>
		
		<input type="submit" value="로그인" />
	
	</form>
</body>
</html>