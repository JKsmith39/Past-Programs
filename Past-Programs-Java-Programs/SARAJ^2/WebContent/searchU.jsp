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
s.execute("select U_Name from account where Acct_Type = 'Developer' ");

rs = s.getResultSet();
%>
<head>
<title>SARAJJ Mobile Search for a site</title>
</head>

<div style="background-image:url(http://img.photobucket.com/albums/v252/Smiley7890/background1_blue.jpg);padding:5px;width:1325px;height:800px;border:1px solid black;">

<body>


<b>
<font color = "white" size = "9" > SARAJJ Mobile Search For Developer </font> 
</b>
<br>


<script>
function change()
{
var sitelist =document.getElementById("Devlist");
document.getElementById("user").value=sitelist.options[sitelist.selectedIndex].text;
}
</script>

<font color = "white">
 <h1> Developers</h1>
 </font>
        <select id= "Devlist" onchange="change()">
        <option> </option>
        <%  
        while(rs.next()){ %>
            <option><%= rs.getString(1)%></option>
        <% } %>
        </select>
<form method = "GET" action = "searchUN.jsp">
<br>
<font color = "white">
<p> Developer User Name: <input id= "user" type ="text" name = "ans"></p>

<p> <input type = "submit" value = "Search" name = "search3"></p>

</font>
</form>

	</form>
		<form method = "GET" action = "backtodash.jsp">
		<br>
		<p> <input type = "submit" value = "Back to Dashboard" name = "backhome"></p>
	</form>		

<br>
<br>
<div align = "bottom">
<font color = "white" size = 3> Copyright &copy 2013 SARAJJ </font>
</font>
</div>


</body>
</html>