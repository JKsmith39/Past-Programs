<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SARAJJ Mobile Edit Pages</title>
</head>

<div style="background-image:url(http://img.photobucket.com/albums/v252/Smiley7890/background1_blue.jpg);padding:5px;width:1325px;height:800px;border:1pxsolid black;">

<body>
<b>
<font color = "white" size = "9" > SARAJJ Mobile Edit Pages </font>
</b>
<br>
<br>
<%@ page import="java.sql.*" %>
<%
ResultSet rs,rs2;
String input;
String dataSourceName = "Projects";
String dbUrl = "jdbc:odbc:" + dataSourceName;

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

Connection con = DriverManager.getConnection(dbUrl,"","");

String user = (String) session.getAttribute("User");
String site = (String) session.getAttribute("Site");
String addt = request.getParameter("addT");

Connection DBConnection;
DBConnection = DriverManager.getConnection(dbUrl);

Statement s = con.createStatement();
Statement s2 = con.createStatement();

s.execute("select s.Site_Name,p.Page_Name from page p,site s, account a where p.Site_No = s.Site_No and a.U_Name = '"+user+"' ");
s2.execute("select p.Page_Name from page p,site s, account a where p.Site_No = s.Site_No and a.U_Name = '"+user+"' ");
rs = s.getResultSet();
rs2= s2.getResultSet();

%>
<font color = "white" size = "4" >User Sites</font>
<br>
<script>
function SearchSite()
{
var sitelist =document.getElementById("siteList");
document.getElementById("site").value=sitelist.options[sitelist.selectedIndex].text;
}
</script>

 <h1> User Sites</h1>
        <select id= "siteList" onchange="SearchSite()">
        <option> </option>
        <%
        while(rs.next()){ %>
            <option><%= rs.getString(1)%></option>
        <% } %>
        </select>

<script>
function changep()
{
var sitelist =document.getElementById("pageList");
document.getElementById("page").value=sitelist.options[sitelist.selectedIndex].text;
}
</script>

<font color = "white">
 <h1> Page Names</h1>
 </font>
        <select id= "pageList" onchange="changep()">
        <option> </option>
        <%  
        while(rs2.next()){ %>
            <option><%= rs2.getString(1)%></option>
        <% } %>
        </select>

<font color = "white">
<form method = "GET" action = "EditSite2.jsp">
<br>
<p> Which site you would like to Edit: </p>
<p> Site Name: <input type = "text" id= "site" name = "u_sites"></p>
<p>Page:<input type = "text" id= "page" name = "pagenum"></p>
<p> <input type = "submit" value = "Edit" name = "edit1"></p>
</form>
<br>

<br>
<div align = "bottom">
<font size = 3> Copyright &copy 2013 SARAJJ </font>
</font>
</div>	
</body>
</html>