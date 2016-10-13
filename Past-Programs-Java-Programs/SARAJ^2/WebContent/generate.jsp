<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Generate</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
String dataSourceName = "Projects";
String dbUrl = "jdbc:odbc:" + dataSourceName;

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

Connection con = DriverManager.getConnection(dbUrl,"","");

Connection DBConnection;
DBConnection = DriverManager.getConnection(dbUrl);
Statement s = con.createStatement();
Statement s1 = con.createStatement();

ResultSet rs;
String text = "Text";
ResultSet rs2;

String site = (String) session.getAttribute("Site");

s.execute("select s.Site_Name,p.Page_name from input i, account a," + 
		"page p, site s where i.Page_no = p.Page_no and p.Site_No = s.Site_No  and s.Site_Name = '"+site+"'");

s1.execute("select i.Feature_Type,i.Feature_input,i.Link_Text from input i, account a," + 
		"page p, site s where i.Page_no = p.Page_no and p.Site_No = s.Site_No  and s.Site_Name = '"+site+"'");


rs = s.getResultSet();
rs2 = s1.getResultSet();

if(rs.next())	
{
%>
<!DOCTYPE html>
<html>
<h1 align ="center" size = 9><%=rs.getString(1)%>	
</h1>
 
<body>
<p><b><%=rs.getString(2) %></b></p> 
<%
}
while(rs2.next())	
{
	if(rs2.getString(1).equals("Text")) 
	{ 
	%>
	
	<p><%=rs2.getString(2) %></p>
	<br>
	<%} 

	else if(rs2.getString(1).equals("Hyperlink")) 
		{ 
		%>
		
		<a href="<%=rs2.getString(2)%>"><%=rs2.getString(3)%></a>
		<br>
		<%} 
	else if(rs2.getString(1).equals("Picture")) 
		{ 
		%>
		<img src="<%=rs2.getString(2)%>"></img>
		<br>
		<%} 
}%>
		<form method = "GET" action = "contents.html" >
		<input type ="submit" value = "Back to Contents" name ="back" />
		</form>
		
		</body>
		</html>
		