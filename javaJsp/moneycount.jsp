<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%!
int money;

public int F(int money){
	return (money/50000);	
}

public int M(int money){
	return ((money-10000*(money/10000))/10000);	
}

public int O(int money){
	return ((money-5000*(money/5000))/5000);	
}

public int C (int money){
	return ((money-1000*(money/1000))/1000);	
}


%>


<%
	String smoney = request.getParameter("Numin");
	if (smoney!=null && smoney.equals("") == false) {
		money = Integer.parseInt(smoney);	
	}

%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<"최소 지폐 수 계산">
</body>	

	<form action="moneycount.jsp" method = "get">
		숫자 입력 : <input type = "text" name = "Numin" /><br />
		<input type="submit" value = "submit" />
	</form>
	
	<%
	int money;
	
	
	while(0 < money) {
	
		int tmoney = (money / 1000) * 1000;
		int[] array = { 50000, 10000, 5000, 1000 };

		for (int t : array) {
			int c = tmoney/t;
			if (0 < c)
				System.out.printf("%5d원 * %d장 = %d원\n", t, c, t*c);
			else
				System.out.printf("%5d원\n", t);
			
			tmoney -= (t * c);
		}
		System.out.println("-".repeat(25));
	}
	System.out.println("Good Bye!!!");	
	%>


</html>