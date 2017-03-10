<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="de.Tool"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add</title>
</head>
<body>
<form action="index.jsp">
	<input type="text" name="a"/>+
	<input type="text" name="b"/>
	<input type="submit" value="Go"/>
</form>

<%
	double a,b;
try{
	a=Double.parseDouble(request.getParameter("a"));
	b=Double.parseDouble(request.getParameter("b"));
	out.println(Tool.Add(a, b));
}
catch(Exception e){
	out.println("The moon has fallen into the well!");
}
%>
</body>
</html>