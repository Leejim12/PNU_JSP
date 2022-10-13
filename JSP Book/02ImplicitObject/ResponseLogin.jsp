<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>

<head>
	<title>내장 객체 - Response</title>
</head>


<body>
<%
String id = request.getParameter("user_id");
String pwd = request.getParameter("user_pwd");
if(id.equalsIgnoreCase("must") && pwd.equalsIgnoreCase("1234")){
	response.sendRedirect("ResponseWelcome.jsp");
}
else{
	request.getRequestDispatcher("ResponseMain.jsp?LoginErr=1")
	.forward(request, response); // 역할 : 서블릿에서 호출방석 
	//1. sendRedirect : 이 페이지 새로 호출 해! (2번응답)
	//2. forward : 서블릿(서버) 자체적으로 내부적 호출. 호출된 결과. (1번응답) -- 얘는 객체 공유 
}
%>
</body>
</html>