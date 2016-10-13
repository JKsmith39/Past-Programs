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
String input;
String dataSourceName = "Projects";
String dbUrl = "jdbc:odbc:" + dataSourceName;

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

Connection con = DriverManager.getConnection(dbUrl,"","");


String site = (String) session.getAttribute("Site");
String pgname = request.getParameter("pgna");

Connection DBConnection;
DBConnection = DriverManager.getConnection(dbUrl);

Statement s = con.createStatement();

s.execute("select Site_No from site where Site_Name = '"+site+"' ");

rs = s.getResultSet();

if(rs.next())
{
	s.execute("Insert into page(Site_No,Page_Name) values('"+rs.getString(1)+"','"+pgname+"')");
}
%>
<form method = "GET" action = "contents.html" >
<p>Page Named......TO CONTENTS!!!</p>
<input type ="submit" value = "Continue ->" name ="continue" />
</form>

</body>
</html>