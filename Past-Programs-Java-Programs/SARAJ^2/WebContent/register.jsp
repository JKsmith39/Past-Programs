<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
ResultSet rs;
String dataSourceName = "Projects";
String dbUrl = "jdbc:odbc:" + dataSourceName;

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

Connection con = DriverManager.getConnection(dbUrl,"","");

String acct =  request.getParameter("acct");
String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String usname = request.getParameter("usname");
String passw = request.getParameter("passw");
String email = request.getParameter("email");

Connection DBConnection;
DBConnection = DriverManager.getConnection(dbUrl);

Statement s = con.createStatement();
s.execute("Insert into account(Acct_Type,Fname,Lname,U_Name,P_word,U_Email) values('"+acct+"','"+fname+"','"+lname+"','"+usname+"','"+passw+"','"+email+"')");
%>
<html>
<head>
<title>Back to Dashboard</title>
</head>
<body>
<p>Account Created</p>
</form>
	<form method = "GET" action = "backtodash.jsp">
	<p> <input type = "submit" value = "Back to Dashboard" name = "back4"></p>
</form>
	
</body>
</html>