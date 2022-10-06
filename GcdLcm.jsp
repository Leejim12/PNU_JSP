<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%!
int num1 = 0;
int num2 = 0;
int max = 0;
int min = 1;
int rem = 0;

public int GCD(int num1, int num2) {
	if (num1>num2) {
		max = num1;
		min = num2;
		}
	else if (num1<num2){
		max = num2;
		min = num1;
		}
	
	rem = max%min;
	
	while( rem != 0) {
		max = min;
		min = rem;
		rem = max%min;
	}
		return min;
}

public int LCM(int num1, int num2) {
	if (num1>num2) {
		max = num1;
		min = num2;
		}
	else if (num1<num2){
		max = num2;
		min = num1;
		}
	
	rem = max%min;
	
	while( rem != 0) {
		max = min;
		min = rem;
		rem = max%min;
	}
		return (num1*num2)/min;
}
%>

<%
	String snum1 = request.getParameter("num1");
	if (snum1!=null && snum1.equals("") == false) {
		num1 = Integer.parseInt(snum1);	
	}

	String snum2 = request.getParameter("num2");
	if (snum2!=null && snum2.equals("") == false) {
		num2 = Integer.parseInt(snum2);	
	}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> 최대공약수 : <%=GCD(num1,num2)%>  </h2>
	<h2> 최소공배수 : <%=LCM(num1,num2)%>  </h2>
</body>
</html>