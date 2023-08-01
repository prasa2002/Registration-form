<%@page import="java.sql.*"%>
<%
String Name=request.getParameter("Name");
String MobileNo=request.getParameter("MobileNo");
String Email=request.getParameter("Email");
String password=request.getParameter("password");

System.out.println(Name);
System.out.println(MobileNo);
System.out.println(Email);
System.out.println(password);

try{
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","prasanth");
    Statement st=con.createStatement();
    st.executeUpdate("insert into users(Name1,MobileNo,Email,password1)values('"+Name+"','"+MobileNo+"','"+Email+"','"+password+"')");
    response.sendRedirect("save.html");
    
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("error.html");
}
%>  