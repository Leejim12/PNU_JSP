<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    
    <%
        request.setCharacterEncoding("EUC-KR"); //인코딩 형식
    
        int dan = Integer.parseInt(request.getParameter("dan")); //input태그의 dan 을 int형으로 변환해서 저장
        
        
    %>
    
    <h1>구구단:<%=dan%>단</h1>
    
    <%
        for(int i=1; i < 10; i++){ //구구단 for문 단수 * 9까지만
    %>
        <%=dan%> * <%=i%> = <%=dan*i%><br> <%-- 단수 * i를 바로 표현식으로 표현 --%>
    <%
        }
    %>        
    
 
</body>
</html>
