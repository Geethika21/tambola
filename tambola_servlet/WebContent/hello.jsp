
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page import="java.sql.DriverManager"%>
<%
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tambola1", "root", "root");
PreparedStatement pst = con.prepareStatement("Select * from temp1");
ResultSet rs =  pst.executeQuery();

%>
<html>
<body>
<h1> Hello world. <p/>
Current time: <%= System.currentTimeMillis() %></h1>
<h2> results from DB</h2>
<%
while(rs.next()) {
	out.print(rs.getString(1));
	out.println("<br/>");
}
%>

</body>
</html>
