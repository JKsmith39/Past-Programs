<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SARAJJ Mobile Edit Pages</title>
</head>

<div style="background-image:url(http://img.photobucket.com/albums/v252/Smiley7890/background1_blue.jpg);padding:5px;width:1325px;height:1800px;border:1pxsolid black;">

<body>
<b>
<font color = "white" size = "9" > SARAJJ Mobile Edit Pages </font>
</b>
<br>
<iframe allowtransparency="true" style = "background-color:#FFFFFF" src="genEd.jsp" ></iframe>
<br>
<%@ page import="java.sql.*" %>
<%
ResultSet rs,rs2,rs3,rs4,rs5;
String input;
String dataSourceName = "Projects";
String dbUrl = "jdbc:odbc:" + dataSourceName;

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

Connection con = DriverManager.getConnection(dbUrl,"","");

String sess_usite = request.getParameter("u_sites");
session.setAttribute("U_site", sess_usite);

String user = (String) session.getAttribute("User");
String u_site = (String) session.getAttribute("U_site");
String Pagename = request.getParameter("pagenum");

Connection DBConnection;
DBConnection = DriverManager.getConnection(dbUrl);

Statement s = con.createStatement();
Statement s2 = con.createStatement();
Statement s3 = con.createStatement();
Statement s4 = con.createStatement();
Statement s5 = con.createStatement();

s.execute("select p.Page_Name from page p,site s where s.Site_Name = '"+u_site+"' ");
s2.execute("select i.Feature_input from page p,input i,site s where i.Page_No = p.Page_no and p.Site_No = s.Site_No and i.Feature_Type = 'Text' and s.Site_Name = '"+u_site+"'  and p.Page_Name = '"+Pagename+"' ");
s3.execute("select i.Feature_input from page p,input i,site s where i.Page_No = p.Page_no and p.Site_No = s.Site_No and i.Feature_Type = 'Hyperlink' and s.Site_Name = '"+u_site+"' and p.Page_Name = '"+Pagename+"'");
s4.execute("select i.Feature_input from page p,input i,site s where i.Page_No = p.Page_no and p.Site_No = s.Site_No and i.Feature_Type = 'Picture' and s.Site_Name = '"+u_site+"' and p.Page_Name = '"+Pagename+"' ");
s5.execute("select i.Link_Text from page p,input i,site s where i.Page_No = p.Page_no and p.Site_No = s.Site_No and i.Feature_Type = 'Hyperlink' and s.Site_Name = '"+u_site+"' and p.Page_Name = '"+Pagename+"' ");

rs = s.getResultSet();
rs2 = s2.getResultSet();
rs3 = s3.getResultSet();
rs4 = s4.getResultSet();
rs5 = s5.getResultSet();
%>
<script>
function change()
{
var sitelist =document.getElementById("nameList");
document.getElementById("current").value=sitelist.options[sitelist.selectedIndex].text;
}
</script>

<font color = "white">
 <h1> Page Names</h1>
 </font>
        <select id= "nameList" onchange="change()">
        <option> </option>
        <%  
        while(rs.next()){ %>
            <option><%= rs.getString(1)%></option>
        <% } %>
        </select>

		<font color = "white">
		<form method = "GET" action = "edPg.jsp" >
		<p> Edit Page Name </p>
		<p>Current Page Name<input id = "current" type = "text" name = "ePgname"></p>
		<p>Change New Name to:<input type = "text" name = "Newname"></p>	
		<p> <input type ="submit" value = "Edit Page Name" name ="edPgname2" /></p>
		</form>
		</font>
		<body>
		
	<script>
	function change2()
	{
	var sitelist =document.getElementById("textList");
	document.getElementById("currentT").value=sitelist.options[sitelist.selectedIndex].text;
	}
	</script>

<font color = "white">
 <h1> Text</h1>
 </font>
        <select id= "textList" onchange="change2()">
        <option> </option>
        <% 
        while(rs2.next()){ %>
            <option><%= rs2.getString(1)%></option>
        <% } %>
        </select>
		
		<font color = "white">
		<form method = "GET" action = "edTxt.jsp" >
		<p> Edit Text </p>
		<p>Current Text:<input id = "currentT" type = "text" name = "eTxt"></p>
		<p>Change Text to:<input type = "text" name = "Newtext"></p>	
		<p> <input type ="submit" value = "Edit Text" name ="edTxt" /></p>
		</form>
		</font>
		<body>
		
		<script>
	function change3()
	{
	var sitelist =document.getElementById("linkList");
	document.getElementById("currentL").value=sitelist.options[sitelist.selectedIndex].text;
	}
	</script>
	
	<script>
	function change4()
	{
	var sitelist =document.getElementById("linktList");
	document.getElementById("currentL").value=sitelist.options[sitelist.selectedIndex].text;
	}
	</script>

<font color = "white">
 <h1> Links </h1>
 </font>
        <select id= "linkList" onchange="change3()">
        <option> </option>
        <% 
        while(rs3.next()){ %>
            <option><%= rs3.getString(1)%></option>
        <% } %>
        </select>
        
		
		<font color = "white">
		<form method = "GET" action = "edLink.jsp" >
		<p> Edit Link </p>
		<p>Current Link:<input id = "currentL" type = "text" name = "eLink"></p>
		<p>Change Link to:<input type = "text" name = "Newlink"></p>
		<p> <input type ="submit" value = "Edit Link" name ="edLink" /></p>
		</form>
		<br>
		
		<font color = "white">
 		<h1> Link Text </h1>
 		</font>
        <select id= "linktList" onchange="change4()">
        <option> </option>
        <% 
        while(rs5.next()){ %>
            <option><%= rs5.getString(1)%></option>
        <% } %>
        </select>
		<form method = "GET" action = "edLink.jsp" >
		<p>Current Link Text:<input id = "currentLt" type = "text" name = "eTLink"></p>
		<p>Change Link Text to:<input type = "text" name = "Newlinkt"></p>
		<p> <input type ="submit" value = "Edit Link Text" name ="edLinkt" /></p>
		</form>
		</font>
		<body>
		
	<script>
	function change5()
	{
	var sitelist =document.getElementById("picList");
	document.getElementById("currentP").value=sitelist.options[sitelist.selectedIndex].text;
	}
	</script>

<font color = "white">
 <h1> Picture </h1>
 </font>
        <select id= "picList" onchange="change5()">
        <option> </option>
        <% 
        while(rs4.next()){ %>
            <option><%= rs4.getString(1)%></option>
        <% } %>
        </select>
		
		<font color = "white">
		<form method = "GET" action = "edPic.jsp" >
		<p> Edit Picture </p>
		<p>Current Picture:<input id = "currentP" type = "text" name = "ePic"></p>
		<p>Change Picture to:<input type = "text" name = "Newpic"></p>
		<p> <input type ="submit" value = "Edit Picture" name ="edPic" /></p>
		</form>
		</font>
		<body>
		
		</form>
		<form method = "GET" action = "genEd.jsp">
		<br>
		<p> <input type = "submit" value = "Generate Page" name = "genpg"></p>
		</form>

		</form>
		<form method = "GET" action = "backtoDevdash.jsp">
		<br>
		<p> <input type = "submit" value = "Back to Dashboard" name = "backhome"></p>
		</form>		

<div align = "bottom">
<font color = "white" size = "3" > Copyright &copy 2013 SARAJJ </font>
</font>
</div>	
</body>
</html>