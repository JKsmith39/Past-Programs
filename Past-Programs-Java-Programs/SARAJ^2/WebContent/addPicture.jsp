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

String user = (String) session.getAttribute("User");
String addP = request.getParameter("addP");
String u_site = (String) session.getAttribute("Site");

Connection DBConnection;
DBConnection = DriverManager.getConnection(dbUrl);

Statement s = con.createStatement();

s.execute("select s.Site_No,p.Page_No from site s, page p where s.Site_Name = '"+u_site+"' ");

rs = s.getResultSet();

if(rs.next()){
	s.execute("Insert into input(Page_No,Feature_Type,Feature_input)  values('"+rs.getString(2)+"','Picture','"+addP+"')");
}
%>
<form method = "GET" action = "contents.html" >
<p>Picture Added</p>
<input type ="submit" value = "Back to Contents" name ="backcon" />
</form>


</body>
</html>
