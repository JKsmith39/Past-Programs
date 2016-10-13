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

String sitename = (String) session.getAttribute("site");
String site2 = request.getParameter("ans");

String dataSourceName = "Projects";
String dbUrl = "jdbc:odbc:" + dataSourceName;

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

Connection con = DriverManager.getConnection(dbUrl,"","");

Connection DBConnection;
DBConnection = DriverManager.getConnection(dbUrl);
			
Statement s = con.createStatement();
s.execute("select a.U_Name,s.* from site s,account a where a.Account_ID = s.Account_ID and s.Site_Name = '"+sitename+"' ");

rs = s.getResultSet();
while(rs.next()){
	String uname = rs.getString(1);
	String site = rs.getString(3);
	String date = rs.getString(5);
	
	if(site.equals(sitename))
	{%>
	<p> Site was found! </p>

	<table border= "1" align="left"> 
	<tr>
	<th>Site Name</th>
	<th>Created by</th>
	<th>Date Created</th>
	</tr>
	<br>
	<p> Sites </p>
	<tr>
	<td><% out.println(" "+site+" "); %></td>
	<td><% out.println(" "+uname+" "); %></td>
	<td><% out.println(" "+date+" "); %></td>
	</tr>
	</table>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	<br>
	</form>
	<form method = "GET" action = "backtodash.jsp">
	<p> <input type = "submit" value = "Back to Dashboard" name = "back4"></p>
	</form>
	
<% 	}
	else
	{
	%>
	<h1> Site Doesn't Exist</h1>
	<input type ="submit" value = "Back to Contents" name ="back" onclick="window.history.back(-1)" />
	</body>
	</html>
	<%} 
}
%>
