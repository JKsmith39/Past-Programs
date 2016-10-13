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

String sess_user = request.getParameter("uname");
String sess_pwd = request.getParameter("pass1");
String sess_acct = request.getParameter("acct");

session.setAttribute("User",sess_user);
session.setAttribute("paswd",sess_pwd);
session.setAttribute("Acct",sess_acct);

String user = (String) session.getAttribute("User");
String pwd = (String) session.getAttribute("paswd");
String site = (String) session.getAttribute("Site");

Connection DBConnection;
DBConnection = DriverManager.getConnection(dbUrl);


Statement s = con.createStatement();
s.execute("delete * from input where where i.Page_no = p.Page_no and p.Site_No = s.Site_No and s.Site_Name= '"+site+"' ");
s.execute("delete * from page where where p.Site_No = s.Site_No and s.Site_Name= '"+site+"' ");
s.execute("delete * from site where where s.Site_Name= '"+site+"' ");



%>
<br>
<br>
<div align = "bottom">
<font color = "white" size = 3> Copyright &copy 2013 SARAJJ </font>
</font>
</div>
</body>
</html>