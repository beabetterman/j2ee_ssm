<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.lang.Exception"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exception on Web Page</title>
</head>
<body>
	<div>
		<span>webException.jsp</span>
	</div>
	<div>Some exception happened on page side. Please report it. We will back soon.</div>
	<div>
	<% Exception ex = (Exception)request.getAttribute("exception"); %>
	</div>
	<div>
	<H2>Exception: <%= ex.getMessage()%></H2>
	</div>
	<div>
	<% ex.printStackTrace(new java.io.PrintWriter(out)); %>
	</div>
</body>
</html>