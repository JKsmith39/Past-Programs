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
String site1;

site1 = request.getParameter("ans");

session.setAttribute("site",site1);

String user = request.getParameter("ans");

String dataSourceName = "Projects";
String dbUrl = "jdbc:odbc:" + dataSourceName;

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

Connection con = DriverManager.getConnection(dbUrl,"","");

Connection DBConnection;
DBConnection = DriverManager.getConnection(dbUrl);
			
Statement s = con.createStatement();
s.execute("select Account_ID,U_Name,Fname,Lname,U_Email from account where U_Name = '"+user+"' ");

rs = s.getResultSet();
if(rs.next()){
	if(rs.getString(2).equals(user))
	{
%>
	<p> Developer was found! </p>
	<h1>Developer Information</h1>
	<table border= "1" align="left"> 
	<tr>
	<th>Account ID</th>
	<th>User Name</th>
	<th>Developer</th>
	<th>Developer Email</th>
	</tr>
	
	<tr>
	<td><% out.println(" "+rs.getString(1)+" "); %></td>
	<td><% out.println(" "+rs.getString(2)+" "); %></td>
	<td><% out.println(" "+rs.getString(3)+" "+rs.getString(4)+" "); %></td>
	<td><% out.println(" "+rs.getString(5)+" "); %></td>
	</tr>
	</table>
	<br>
	<%} %>
	<br>
	<br>
	<input type ="submit" value = "<- Back" name ="back" onclick="window.history.back(-1)" />
	<%}
else
	{
%>
<h1> Site Doesn't Exist</h1>
<input type ="submit" value ="<- Back" name ="back" onclick="window.history.back(-1)" />
</body>
</html>
<%}%>