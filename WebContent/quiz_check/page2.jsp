<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String cmd = request.getParameter("cmd");
request.setAttribute("key", new Date());
if(cmd.equals("1")){
	response.sendRedirect("page3.jsp");
} else if(cmd.equals("2")){
	RequestDispatcher rd = request.getRequestDispatcher("page3.jsp");
	//new로 생성하는게 아니여요 조심조심 
	rd.forward(request, response);
}

%>
</body>
</html>