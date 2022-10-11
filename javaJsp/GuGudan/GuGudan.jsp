<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
    <h1>단을 입력하시오</h1>
    <!-- post 형식으로 gugudanProc.jsp에 input태그의 dan 값 전달 -->
    <form action="GuGudanP.jsp" method="post"> 
        <input type="number" min="1" max="9" name="dan">
        <input type="submit" value="보내기">
    </form>
</body>
</html>
