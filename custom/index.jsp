<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Message Board</title>
</head>
<%!String m="";long f=1; %>
<%
	String c=">>:&nbsp&nbsp&nbsp"+request.getParameter("user_message")+"<p>";
	if(c.equals(">>:&nbsp&nbsp&nbsp<p>"))
		out.println(m+"<font color=\"red\">no note</font>");
	else{
		m=m+f+++"F"+c;
		c=">>:&nbsp&nbsp&nbsp<p>";
		out.println(m);
	}
	%>
<body>
	<form action="index.jsp">
		<input type="text" name="user_message"/>
		<input type="submit" value="Send"/>
	</form>
</body>
</html>