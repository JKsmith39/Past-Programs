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
int pgnum = 1;
String input;
String dataSourceName = "Projects";
String dbUrl = "jdbc:odbc:" + dataSourceName;

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

Connection con = DriverManager.getConnection(dbUrl,"","");


String site = (String) session.getAttribute("Site");
String oldpic = request.getParameter("ePic");
String Newpic = request.getParameter("Newpic");

Connection DBConnection;
DBConnection = DriverManager.getConnection(dbUrl);

Statement s = con.createStatement();

s.executeUpdate("Update input set Feature_input ='"+Newpic+"'  where Feature_input = '"+oldpic+"' ");
%>
<input type ="submit" value = "Back to Contents" name ="back" onclick="window.history.back(-1)" />
</body>
</html>