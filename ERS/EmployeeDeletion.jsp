<%@ page import ="java.io.*"%>
<%@ page import ="java.sql.*"%>
<html>
<head>
<meta http-equiv="Page-Enter"
content="revealTrans(Duration=3.0,Transition=23)">
<meta http-equiv="Page-Exit"
content="revealTrans(Duration=3.0,Transition=23)">
</head>
<body bgcolor="#99CCFF" >
<center>
<form method=post action="http://localhost:8080/ERS/EmpDelete">
<%
  try
    {
     Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	 Connection con=DriverManager.getConnection("jdbc:odbc:Intranet","","");
	 PreparedStatement ps=con.prepareStatement("select distinct Empid from Employee");
	 ResultSet rs=ps.executeQuery();
    %>
<CENTER>

<H2><font color=brown>        Employee Deletion </h2>
<BR><BR><font color=red><b>
Select The Employee Id
<select name =s1>
<%
  while(rs.next())
  {
%>
<option><%=rs.getString(1)%></option>
<%
  }
 }catch(Exception e){}
 %>
</select>

<br><br>
<input type = submit value="Submit">
</form>
</center>
</body>
</html>