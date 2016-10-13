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

String user = (String) session.getAttribute("User");
String pwd = (String) session.getAttribute("paswd");


Connection DBConnection;
DBConnection = DriverManager.getConnection(dbUrl);


Statement s = con.createStatement();
s.execute("select * from account where U_Name = '"+user+"' and P_word = '"+pwd+"'");

rs = s.getResultSet();
if(rs.next()){
	if((rs.getString(5).equals(user)) && (rs.getString(6).equals(pwd) && ((rs.getString(2).equals("Developer")))))
	{
%>
		<head>
<title> SARAJJ User Home</title></head>

<font color = "white">
<div style="background-image:url(http://img.photobucket.com/albums/v252/Smiley7890/background1_blue.jpg);padding:5px;width:1325px;height:800px;border:1pxsolid black;">
		
		<br>
		<p><font size= 9>Welcome Developer <%out.println(" "+user+""); %></font></p>
		<form method = "GET" action = "createsite.html" >
		<br><p> <input type ="submit" value = "Create" name ="createsite" /></p>
		</form>
		
		<form method = "GET" action = "editSite.jsp" >
		<p> <input type ="submit" value = "Edit Site" name ="edit" /></p>
		</form>
		
		<form method = "GET" action = "login.html" >
		<p> <input type ="submit" value = "Log Out" name ="logout" /></p>
		</form>
</font>


<br>
<br>
<div align = "bottom">
<font color = "white" size = 3> Copyright &copy 2013 SARAJJ </font>
</font>
</div>
<% } 
}
%>