<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>데이터 처리</title>
</head>
<body>
<%
String []lang = request.getParameterValues("lang");
//out.print(Arrays.toString(lang));//Arrays.toString(배열)= 배열을 문자열로 바꿔줘요 [a,b,c] 요렇게~

String []temp = {"","","",""};
for(String value: lang){ //1,2이면 먼저 1일때
	int index = Integer.parseInt(value); //index값에 숫자1
	temp[index]=value; //temp[1]=1 이뜻이다.
}
//원래 lang 값 넘겨줄때 0 1 이렇게 보냈다면
//temp 값은 temp[0]=0,temp[1]=1 이렇게 보낸다. 

session.setAttribute("key",temp); // 페이지 이동하며 같이 값 보내줄때~
response.sendRedirect("quiz3.jsp");
%>

</body>
</html>