<%@ page import = "java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head><title>session 영역</title></head>
<body>
	<h2> 페이지 이동 후 session 영역의 속성 읽기</h2>
	<%
	@SuppressWarnings("unchecked") //어노테이션. "unchecked" : 타입을 체크하는 워닝.
	// 내가 확실히 객체를 알고있고, 그렇기에 lists로 받는것이기 때문! 
	ArrayList<String> lists = (ArrayList<String>)session.getAttribute("lists");
	for (String str : lists)
		out.print(str + "<br>");
	%>

</body>
</html>