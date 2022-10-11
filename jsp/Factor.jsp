<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!

%>

<%	
int num = 0;

	String snum = request.getParameter("num");
	if (snum != null && snum.equals("") == false){
		num = Integer.valueOf(snum);
	}
		int res = 1;
		for (int i = 1; i<=num; ++i){
			res *= i;
		} 

	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팩토리얼 계산</title>
</head>
<body>
	<h2> <%=num %></h2>
	<h2> <%=res %>  </h2>

</body>
</html>