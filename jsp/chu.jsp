<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int num = 0;
int tnum = 0;
String snum = request.getParameter("num");
if (snum != null && snum.equals("") == false) {
	num = Integer.parseInt(snum);
}
%>

<html>
<head>
<title>추 갯수 계산</title>
</head>
<body>
	<h2> 추 입력 받아서 계산 (2,3,5)</h2>
		<form action="chu.jsp" method="get">
		임의의 값 입력 <input type="text" name="num" min = 10 max = 100><br />
		</form>
	<h4> 입력 값 : <%= num %></h4>
	<%
// 	out.println("<br/> ()"+ ovalu + "원<br/><br/>");
	for(int i = 1; i<11;i++){
		for(int j = 1; j < 11; j ++){
			for(int k =1;k<11;k++){
				if((i*2+j*3+k*5)==num){
					out.print("("+i+","+j+","+k+") ");
					++tnum;}
			}
		}
	}
	out.println(":" + tnum);


	
	%>		
		
		
</body>
</html>