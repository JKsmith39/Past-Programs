<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Site</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
ResultSet rs;
String dataSourceName = "Projects";
String dbUrl = "jdbc:odbc:" + dataSourceName;

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

Connection con = DriverManager.getConnection(dbUrl,"jsmith","beast");

String sess_site = request.getParameter("site");

session.setAttribute("Site",sess_site);

String site = (String) session.getAttribute("Site");
String user = (String) session.getAttribute("User");
String acct = (String) session.getAttribute("Acct");

Connection DBConnection;
DBConnection = DriverManager.getConnection(dbUrl);

Statement s = con.createStatement();

s.execute("select Account_ID from account where  U_Name= '"+user+"' ");

rs = s.getResultSet();
if(rs.next()){
	s.executeUpdate("Insert into site(Site_Name,Account_ID) values('"+site+"', '"+rs.getString(1)+"')");
}
%>
<form method = "GET" action = "newpage.html" >
<p>Site Name Created</p>
<input type ="submit" value = "Continue ->" name ="contin" />
</form>

</body>
</html>
